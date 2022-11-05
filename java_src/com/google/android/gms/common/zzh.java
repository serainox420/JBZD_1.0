package com.google.android.gms.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.zzf;
import com.google.android.gms.internal.zzadf;
import com.google.android.gms.internal.zzadg;
/* loaded from: classes.dex */
public class zzh {
    private static zzh zzayD;
    private final Context mContext;
    private final zzadf zzayE;

    private zzh(Context context) {
        this.mContext = context.getApplicationContext();
        this.zzayE = zzadg.zzbi(this.mContext);
    }

    public static zzh zzaN(Context context) {
        zzac.zzw(context);
        synchronized (zzh.class) {
            if (zzayD == null) {
                zzf.zzaG(context);
                zzayD = new zzh(context);
            }
        }
        return zzayD;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf.zza zza(PackageInfo packageInfo, zzf.zza... zzaVarArr) {
        if (packageInfo.signatures == null) {
            return null;
        }
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zzf.zzb zzbVar = new zzf.zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < zzaVarArr.length; i++) {
            if (zzaVarArr[i].equals(zzbVar)) {
                return zzaVarArr[i];
            }
        }
        return null;
    }

    public boolean zza(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zzg.zzaJ(this.mContext)) {
            return zzb(packageInfo, true);
        }
        boolean zzb = zzb(packageInfo, false);
        if (zzb || !zzb(packageInfo, true)) {
            return zzb;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zzb;
    }

    public boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? zza(packageInfo, zzf.zzd.zzayw) : zza(packageInfo, zzf.zzd.zzayw[0])) != null) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean zza(PackageManager packageManager, int i) {
        return zzcx(i);
    }

    @Deprecated
    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        return zzb(packageInfo);
    }

    public boolean zzb(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (zza(packageInfo, false)) {
            return true;
        }
        if (!zza(packageInfo, true)) {
            return false;
        }
        if (zzg.zzaJ(this.mContext)) {
            return true;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return false;
    }

    boolean zzb(PackageInfo packageInfo, boolean z) {
        boolean z2 = false;
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
        } else {
            zzf.zzb zzbVar = new zzf.zzb(packageInfo.signatures[0].toByteArray());
            String str = packageInfo.packageName;
            z2 = z ? zzf.zzb(str, zzbVar) : zzf.zza(str, zzbVar);
            if (!z2) {
                Log.d("GoogleSignatureVerifier", new StringBuilder(27).append("Cert not in list. atk=").append(z).toString());
            }
        }
        return z2;
    }

    public boolean zzcx(int i) {
        String[] packagesForUid = this.zzayE.getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length == 0) {
            return false;
        }
        for (String str : packagesForUid) {
            if (zzdd(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean zzdd(String str) {
        try {
            return zza(this.zzayE.getPackageInfo(str, 64));
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
