package com.video.adsdk.internal.checker;

import android.content.Context;
import android.provider.Settings;
import com.video.adsdk.interfaces.checker.AndroidDeviceIdChecker;
/* loaded from: classes3.dex */
public class ADAndroidDeviceIdChecker implements AndroidDeviceIdChecker {
    private Context context;
    private String deviceId;

    public ADAndroidDeviceIdChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        this.deviceId = Settings.Secure.getString(this.context.getContentResolver(), "android_id");
        return true;
    }

    @Override // com.video.adsdk.interfaces.checker.AndroidDeviceIdChecker
    public String getAndroidDeviceId() {
        return this.deviceId;
    }
}
