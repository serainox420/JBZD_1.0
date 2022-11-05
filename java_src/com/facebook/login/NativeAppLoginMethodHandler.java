package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.login.LoginClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class NativeAppLoginMethodHandler extends LoginMethodHandler {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public abstract boolean tryAuthorize(LoginClient.Request request);

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAppLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.facebook.login.LoginMethodHandler
    public boolean onActivityResult(int i, int i2, Intent intent) {
        LoginClient.Result handleResultOk;
        LoginClient.Request pendingRequest = this.loginClient.getPendingRequest();
        if (intent == null) {
            handleResultOk = LoginClient.Result.createCancelResult(pendingRequest, "Operation canceled");
        } else if (i2 == 0) {
            handleResultOk = handleResultCancel(pendingRequest, intent);
        } else if (i2 != -1) {
            handleResultOk = LoginClient.Result.createErrorResult(pendingRequest, "Unexpected resultCode from authorization.", null);
        } else {
            handleResultOk = handleResultOk(pendingRequest, intent);
        }
        if (handleResultOk != null) {
            this.loginClient.completeAndValidate(handleResultOk);
            return true;
        }
        this.loginClient.tryNextHandler();
        return true;
    }

    private LoginClient.Result handleResultOk(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String error = getError(extras);
        String string = extras.getString(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
        String errorMessage = getErrorMessage(extras);
        String string2 = extras.getString("e2e");
        if (!Utility.isNullOrEmpty(string2)) {
            logWebLoginCompleted(string2);
        }
        if (error == null && string == null && errorMessage == null) {
            try {
                return LoginClient.Result.createTokenResult(request, createAccessTokenFromWebBundle(request.getPermissions(), extras, AccessTokenSource.FACEBOOK_APPLICATION_WEB, request.getApplicationId()));
            } catch (FacebookException e) {
                return LoginClient.Result.createErrorResult(request, null, e.getMessage());
            }
        } else if (ServerProtocol.errorsProxyAuthDisabled.contains(error)) {
            return null;
        } else {
            if (ServerProtocol.errorsUserCanceled.contains(error)) {
                return LoginClient.Result.createCancelResult(request, null);
            }
            return LoginClient.Result.createErrorResult(request, error, errorMessage, string);
        }
    }

    private LoginClient.Result handleResultCancel(LoginClient.Request request, Intent intent) {
        Bundle extras = intent.getExtras();
        String error = getError(extras);
        String string = extras.getString(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
        return ServerProtocol.errorConnectionFailure.equals(string) ? LoginClient.Result.createErrorResult(request, error, getErrorMessage(extras), string) : LoginClient.Result.createCancelResult(request, error);
    }

    private String getError(Bundle bundle) {
        String string = bundle.getString("error");
        if (string == null) {
            return bundle.getString("error_type");
        }
        return string;
    }

    private String getErrorMessage(Bundle bundle) {
        String string = bundle.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE);
        if (string == null) {
            return bundle.getString(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean tryIntent(Intent intent, int i) {
        if (intent == null) {
            return false;
        }
        try {
            this.loginClient.getFragment().startActivityForResult(intent, i);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }
}
