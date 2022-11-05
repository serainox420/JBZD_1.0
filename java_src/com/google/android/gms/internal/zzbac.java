package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.UserManager;
import android.provider.Settings;
/* loaded from: classes2.dex */
public class zzbac {
    private final Context mContext;
    private volatile Boolean zzbDR = null;

    public zzbac(Context context) {
        this.mContext = context;
    }

    public static boolean zzbO(Context context) {
        if (com.google.android.gms.common.util.zzt.zzzo()) {
            return zzbP(context);
        }
        return false;
    }

    @TargetApi(21)
    private static boolean zzbP(Context context) {
        UserManager userManager = (UserManager) context.getSystemService("user");
        return userManager != null && userManager.hasUserRestriction("ensure_verify_apps");
    }

    public static boolean zzbQ(Context context) {
        return zzd(context, "package_verifier_enable", 1) == 1;
    }

    @TargetApi(17)
    private static int zzd(Context context, String str, int i) {
        return com.google.android.gms.common.util.zzt.zzzj() ? Settings.Global.getInt(context.getContentResolver(), str, i) : Settings.Secure.getInt(context.getContentResolver(), str, i);
    }

    public boolean zzPE() {
        return zzPG() ? zzPF() : zzPF() && zzbQ(this.mContext);
    }

    public boolean zzPF() {
        if (zzPG()) {
            return (com.google.android.gms.common.util.zzt.zzzo() && zzbO(this.mContext)) || Settings.Secure.getInt(this.mContext.getContentResolver(), "package_verifier_user_consent", 0) == 1;
        } else if (com.google.android.gms.common.util.zzt.zzzl()) {
            return Settings.Secure.getInt(this.mContext.getContentResolver(), "package_verifier_user_consent", 0) == 1;
        } else {
            try {
                return this.mContext.createPackageContext("com.android.vending", 2).getSharedPreferences("package_verifer_public_preferences", 1).getBoolean("accepted-anti-malware-consent", false);
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
    }

    public synchronized boolean zzPG() {
        boolean booleanValue;
        boolean z = false;
        synchronized (this) {
            if (this.zzbDR == null) {
                PackageInfo packageInfo = null;
                try {
                    packageInfo = this.mContext.getPackageManager().getPackageInfo("com.android.vending", 0);
                } catch (PackageManager.NameNotFoundException e) {
                }
                if (packageInfo == null || packageInfo.versionCode >= 80440000) {
                    z = true;
                }
                this.zzbDR = Boolean.valueOf(z);
            }
            booleanValue = this.zzbDR.booleanValue();
        }
        return booleanValue;
    }
}
