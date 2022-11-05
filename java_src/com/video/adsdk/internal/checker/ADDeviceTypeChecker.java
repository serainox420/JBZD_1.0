package com.video.adsdk.internal.checker;

import android.content.Context;
import com.video.adsdk.interfaces.checker.DeviceTypeChecker;
/* loaded from: classes3.dex */
public class ADDeviceTypeChecker implements DeviceTypeChecker {
    Context context;
    DeviceTypeChecker.DeviceType currentType;

    public ADDeviceTypeChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.DeviceTypeChecker
    public String getDeviceType() {
        return this.currentType.getIdentifier();
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        this.currentType = isTablet() ? DeviceTypeChecker.DeviceType.TABLET : DeviceTypeChecker.DeviceType.SMARTPHONE;
        return true;
    }

    private boolean isTablet() {
        return (this.context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }
}
