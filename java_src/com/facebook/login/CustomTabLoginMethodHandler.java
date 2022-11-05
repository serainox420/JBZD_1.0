package com.facebook.login;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.CustomTabMainActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.FacebookServiceException;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.login.LoginClient;
import com.loopme.debugging.Params;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class CustomTabLoginMethodHandler extends WebLoginMethodHandler {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int CHALLENGE_LENGTH = 20;
    private static final String[] CHROME_PACKAGES = {"com.android.chrome", "com.chrome.beta", "com.chrome.dev"};
    public static final Parcelable.Creator<CustomTabLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.CustomTabLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public CustomTabLoginMethodHandler mo111createFromParcel(Parcel parcel) {
            return new CustomTabLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public CustomTabLoginMethodHandler[] mo112newArray(int i) {
            return new CustomTabLoginMethodHandler[i];
        }
    };
    private static final String CUSTOM_TABS_SERVICE_ACTION = "android.support.customtabs.action.CustomTabsService";
    private static final int CUSTOM_TAB_REQUEST_CODE = 1;
    private String currentPackage;
    private String expectedChallenge;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CustomTabLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.expectedChallenge = Utility.generateRandomString(20);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "custom_tab";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    AccessTokenSource getTokenSource() {
        return AccessTokenSource.CHROME_CUSTOM_TAB;
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    protected String getSSODevice() {
        return "chrome_custom_tab";
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean tryAuthorize(LoginClient.Request request) {
        if (!isCustomTabsAllowed()) {
            return false;
        }
        Bundle addExtraParameters = addExtraParameters(getParameters(request), request);
        Intent intent = new Intent(this.loginClient.getActivity(), CustomTabMainActivity.class);
        intent.putExtra(CustomTabMainActivity.EXTRA_PARAMS, addExtraParameters);
        intent.putExtra(CustomTabMainActivity.EXTRA_CHROME_PACKAGE, getChromePackage());
        this.loginClient.getFragment().startActivityForResult(intent, 1);
        return true;
    }

    private boolean isCustomTabsAllowed() {
        return isCustomTabsEnabled() && getChromePackage() != null && Validate.hasCustomTabRedirectActivity(FacebookSdk.getApplicationContext());
    }

    private boolean isCustomTabsEnabled() {
        FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(Utility.getMetadataApplicationId(this.loginClient.getActivity()));
        return appSettingsWithoutQuery != null && appSettingsWithoutQuery.getCustomTabsEnabled();
    }

    private String getChromePackage() {
        if (this.currentPackage != null) {
            return this.currentPackage;
        }
        FragmentActivity activity = this.loginClient.getActivity();
        List<ResolveInfo> queryIntentServices = activity.getPackageManager().queryIntentServices(new Intent(CUSTOM_TABS_SERVICE_ACTION), 0);
        if (queryIntentServices != null) {
            HashSet hashSet = new HashSet(Arrays.asList(CHROME_PACKAGES));
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null && hashSet.contains(serviceInfo.packageName)) {
                    this.currentPackage = serviceInfo.packageName;
                    return this.currentPackage;
                }
            }
        }
        return null;
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 1) {
            return super.onActivityResult(i, i2, intent);
        }
        LoginClient.Request pendingRequest = this.loginClient.getPendingRequest();
        if (i2 == -1) {
            onCustomTabComplete(intent.getStringExtra(CustomTabMainActivity.EXTRA_URL), pendingRequest);
            return true;
        }
        super.onComplete(pendingRequest, null, new FacebookOperationCanceledException());
        return false;
    }

    private void onCustomTabComplete(String str, LoginClient.Request request) {
        int i;
        if (str != null && str.startsWith(CustomTabMainActivity.getRedirectUrl())) {
            Uri parse = Uri.parse(str);
            Bundle parseUrlQueryString = Utility.parseUrlQueryString(parse.getQuery());
            parseUrlQueryString.putAll(Utility.parseUrlQueryString(parse.getFragment()));
            if (!validateChallengeParam(parseUrlQueryString)) {
                super.onComplete(request, null, new FacebookException("Invalid state parameter"));
                return;
            }
            String string = parseUrlQueryString.getString("error");
            if (string == null) {
                string = parseUrlQueryString.getString("error_type");
            }
            String string2 = parseUrlQueryString.getString(Params.ERROR_MSG);
            if (string2 == null) {
                string2 = parseUrlQueryString.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
            }
            if (string2 == null) {
                string2 = parseUrlQueryString.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
            }
            String string3 = parseUrlQueryString.getString(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
            if (!Utility.isNullOrEmpty(string3)) {
                try {
                    i = Integer.parseInt(string3);
                } catch (NumberFormatException e) {
                    i = -1;
                }
            } else {
                i = -1;
            }
            if (Utility.isNullOrEmpty(string) && Utility.isNullOrEmpty(string2) && i == -1) {
                super.onComplete(request, parseUrlQueryString, null);
            } else if (string != null && (string.equals("access_denied") || string.equals("OAuthAccessDeniedException"))) {
                super.onComplete(request, null, new FacebookOperationCanceledException());
            } else if (i == API_EC_DIALOG_CANCEL) {
                super.onComplete(request, null, new FacebookOperationCanceledException());
            } else {
                super.onComplete(request, null, new FacebookServiceException(new FacebookRequestError(i, string, string2), string2));
            }
        }
    }

    @Override // com.facebook.login.LoginMethodHandler
    protected void putChallengeParam(JSONObject jSONObject) throws JSONException {
        jSONObject.put("7_challenge", this.expectedChallenge);
    }

    private boolean validateChallengeParam(Bundle bundle) {
        try {
            String string = bundle.getString("state");
            if (string != null) {
                return new JSONObject(string).getString("7_challenge").equals(this.expectedChallenge);
            }
            return false;
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    CustomTabLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.expectedChallenge = parcel.readString();
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.expectedChallenge);
    }
}
