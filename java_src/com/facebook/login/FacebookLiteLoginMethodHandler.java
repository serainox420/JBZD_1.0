package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FacebookLiteLoginMethodHandler extends NativeAppLoginMethodHandler {
    public static final Parcelable.Creator<FacebookLiteLoginMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.FacebookLiteLoginMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public FacebookLiteLoginMethodHandler mo117createFromParcel(Parcel parcel) {
            return new FacebookLiteLoginMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public FacebookLiteLoginMethodHandler[] mo118newArray(int i) {
            return new FacebookLiteLoginMethodHandler[i];
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookLiteLoginMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "fb_lite_login";
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler, com.facebook.login.LoginMethodHandler
    boolean tryAuthorize(LoginClient.Request request) {
        String e2e = LoginClient.getE2E();
        Intent createFacebookLiteIntent = NativeProtocol.createFacebookLiteIntent(this.loginClient.getActivity(), request.getApplicationId(), request.getPermissions(), e2e, request.isRerequest(), request.hasPublishPermission(), request.getDefaultAudience(), getClientState(request.getAuthId()));
        addLoggingExtra("e2e", e2e);
        return tryIntent(createFacebookLiteIntent, LoginClient.getLoginRequestCode());
    }

    FacebookLiteLoginMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }
}
