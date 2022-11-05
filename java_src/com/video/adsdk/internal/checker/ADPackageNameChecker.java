package com.video.adsdk.internal.checker;

import android.content.Context;
import com.video.adsdk.interfaces.checker.PackageNameChecker;
/* loaded from: classes3.dex */
public class ADPackageNameChecker implements PackageNameChecker {
    private Context context;

    public ADPackageNameChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        return true;
    }

    @Override // com.video.adsdk.interfaces.checker.PackageNameChecker
    public String getPackageName() {
        return this.context.getPackageName();
    }
}
