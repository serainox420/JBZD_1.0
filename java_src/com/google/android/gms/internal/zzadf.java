package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Process;
/* loaded from: classes2.dex */
public class zzadf {
    protected final Context mContext;

    public zzadf(Context context) {
        this.mContext = context;
    }

    public int checkCallingOrSelfPermission(String str) {
        return this.mContext.checkCallingOrSelfPermission(str);
    }

    public int checkPermission(String str, String str2) {
        return this.mContext.getPackageManager().checkPermission(str, str2);
    }

    public ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.mContext.getPackageManager().getApplicationInfo(str, i);
    }

    public PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
        return this.mContext.getPackageManager().getPackageInfo(str, i);
    }

    public String[] getPackagesForUid(int i) {
        return this.mContext.getPackageManager().getPackagesForUid(i);
    }

    public CharSequence zzdA(String str) throws PackageManager.NameNotFoundException {
        return this.mContext.getPackageManager().getApplicationLabel(this.mContext.getPackageManager().getApplicationInfo(str, 0));
    }

    @TargetApi(19)
    public boolean zzg(int i, String str) {
        if (com.google.android.gms.common.util.zzt.zzzl()) {
            try {
                ((AppOpsManager) this.mContext.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = this.mContext.getPackageManager().getPackagesForUid(i);
        if (str == null || packagesForUid == null) {
            return false;
        }
        for (String str2 : packagesForUid) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public boolean zzzx() {
        if (Binder.getCallingUid() == Process.myUid()) {
            return zzade.zzbg(this.mContext);
        }
        return false;
    }
}
