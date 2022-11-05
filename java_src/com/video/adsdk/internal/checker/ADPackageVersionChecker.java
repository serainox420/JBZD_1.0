package com.video.adsdk.internal.checker;

import android.content.Context;
import com.video.adsdk.interfaces.checker.PackageVersionChecker;
/* loaded from: classes3.dex */
public class ADPackageVersionChecker implements PackageVersionChecker {
    private Context context;
    private String version;

    public ADPackageVersionChecker(Context context) {
        this.context = context;
    }

    @Override // com.video.adsdk.interfaces.checker.SystemParameterChecker
    public boolean readCurrentValues() {
        try {
            this.version = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.video.adsdk.interfaces.checker.PackageVersionChecker
    public String getPackageVersion() {
        return this.version;
    }
}
