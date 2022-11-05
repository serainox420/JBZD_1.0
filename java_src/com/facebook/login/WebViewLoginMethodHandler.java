package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.WebDialog;
import com.facebook.login.LoginClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WebViewLoginMethodHandler extends WebLoginMethodHandler {
    public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.WebViewLoginMethodHandler.2
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public WebViewLoginMethodHandler mo129createFromParcel(Parcel parcel) {
            return new WebViewLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public WebViewLoginMethodHandler[] mo130newArray(int i) {
            return new WebViewLoginMethodHandler[i];
        }
    };
    private String e2e;
    private WebDialog loginDialog;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public String getNameForLogging() {
        return "web_view";
    }

    @Override // com.facebook.login.WebLoginMethodHandler
    AccessTokenSource getTokenSource() {
        return AccessTokenSource.WEB_VIEW;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean needsInternetPermission() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public void cancel() {
        if (this.loginDialog != null) {
            this.loginDialog.cancel();
            this.loginDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean tryAuthorize(final LoginClient.Request request) {
        Bundle parameters = getParameters(request);
        WebDialog.OnCompleteListener onCompleteListener = new WebDialog.OnCompleteListener() { // from class: com.facebook.login.WebViewLoginMethodHandler.1
            @Override // com.facebook.internal.WebDialog.OnCompleteListener
            public void onComplete(Bundle bundle, FacebookException facebookException) {
                WebViewLoginMethodHandler.this.onWebDialogComplete(request, bundle, facebookException);
            }
        };
        this.e2e = LoginClient.getE2E();
        addLoggingExtra("e2e", this.e2e);
        FragmentActivity activity = this.loginClient.getActivity();
        this.loginDialog = new AuthDialogBuilder(activity, request.getApplicationId(), parameters).setE2E(this.e2e).setIsRerequest(request.isRerequest()).setOnCompleteListener(onCompleteListener).build();
        FacebookDialogFragment facebookDialogFragment = new FacebookDialogFragment();
        facebookDialogFragment.setRetainInstance(true);
        facebookDialogFragment.setDialog(this.loginDialog);
        facebookDialogFragment.show(activity.getSupportFragmentManager(), FacebookDialogFragment.TAG);
        return true;
    }

    void onWebDialogComplete(LoginClient.Request request, Bundle bundle, FacebookException facebookException) {
        super.onComplete(request, bundle, facebookException);
    }

    /* loaded from: classes.dex */
    static class AuthDialogBuilder extends WebDialog.Builder {
        private static final String OAUTH_DIALOG = "oauth";
        static final String REDIRECT_URI = "fbconnect://success";
        private String e2e;
        private boolean isRerequest;

        public AuthDialogBuilder(Context context, String str, Bundle bundle) {
            super(context, str, OAUTH_DIALOG, bundle);
        }

        public AuthDialogBuilder setE2E(String str) {
            this.e2e = str;
            return this;
        }

        public AuthDialogBuilder setIsRerequest(boolean z) {
            this.isRerequest = z;
            return this;
        }

        @Override // com.facebook.internal.WebDialog.Builder
        public WebDialog build() {
            Bundle parameters = getParameters();
            parameters.putString(ServerProtocol.DIALOG_PARAM_REDIRECT_URI, "fbconnect://success");
            parameters.putString("client_id", getApplicationId());
            parameters.putString("e2e", this.e2e);
            parameters.putString(ServerProtocol.DIALOG_PARAM_RESPONSE_TYPE, ServerProtocol.DIALOG_RESPONSE_TYPE_TOKEN_AND_SIGNED_REQUEST);
            parameters.putString(ServerProtocol.DIALOG_PARAM_RETURN_SCOPES, "true");
            parameters.putString(ServerProtocol.DIALOG_PARAM_AUTH_TYPE, ServerProtocol.DIALOG_REREQUEST_AUTH_TYPE);
            return new WebDialog(getContext(), OAUTH_DIALOG, parameters, getTheme(), getListener());
        }
    }

    WebViewLoginMethodHandler(Parcel parcel) {
        super(parcel);
        this.e2e = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.e2e);
    }
}
