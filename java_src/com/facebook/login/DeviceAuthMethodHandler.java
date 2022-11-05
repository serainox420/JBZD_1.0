package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.login.LoginClient;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator() { // from class: com.facebook.login.DeviceAuthMethodHandler.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public DeviceAuthMethodHandler mo115createFromParcel(Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public DeviceAuthMethodHandler[] mo116newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    };
    private static ScheduledThreadPoolExecutor backgroundExecutor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
    }

    @Override // com.facebook.login.LoginMethodHandler
    boolean tryAuthorize(LoginClient.Request request) {
        showDialog(request);
        return true;
    }

    private void showDialog(LoginClient.Request request) {
        DeviceAuthDialog deviceAuthDialog = new DeviceAuthDialog();
        deviceAuthDialog.show(this.loginClient.getActivity().getSupportFragmentManager(), "login_with_facebook");
        deviceAuthDialog.startLogin(request);
    }

    public void onCancel() {
        this.loginClient.completeAndValidate(LoginClient.Result.createCancelResult(this.loginClient.getPendingRequest(), "User canceled log in."));
    }

    public void onError(Exception exc) {
        this.loginClient.completeAndValidate(LoginClient.Result.createErrorResult(this.loginClient.getPendingRequest(), null, exc.getMessage()));
    }

    public void onSuccess(String str, String str2, String str3, Collection<String> collection, Collection<String> collection2, AccessTokenSource accessTokenSource, Date date, Date date2) {
        this.loginClient.completeAndValidate(LoginClient.Result.createTokenResult(this.loginClient.getPendingRequest(), new AccessToken(str, str2, str3, collection, collection2, accessTokenSource, date, date2)));
    }

    public static synchronized ScheduledThreadPoolExecutor getBackgroundExecutor() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        synchronized (DeviceAuthMethodHandler.class) {
            if (backgroundExecutor == null) {
                backgroundExecutor = new ScheduledThreadPoolExecutor(1);
            }
            scheduledThreadPoolExecutor = backgroundExecutor;
        }
        return scheduledThreadPoolExecutor;
    }

    protected DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
    }

    @Override // com.facebook.login.LoginMethodHandler
    String getNameForLogging() {
        return "device_auth";
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
