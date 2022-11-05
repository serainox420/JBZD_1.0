package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.instantapps.PackageManagerWrapper;
/* loaded from: classes2.dex */
public class zzarj implements PackageManagerWrapper {
    private static zzarj zzbiO;
    private final boolean zzbiP;
    private final Context zzqn;

    zzarj(Context context, boolean z) {
        this.zzqn = context;
        this.zzbiP = z;
    }

    private boolean zzeO(String str) {
        return str.equals("com.google.android.instantapps.supervisor");
    }

    public static synchronized zzarj zzh(Context context, boolean z) {
        zzarj zzarjVar;
        synchronized (zzarj.class) {
            Context applicationContext = context.getApplicationContext();
            if (zzbiO == null || zzbiO.zzqn != applicationContext || zzbiO.zzbiP != z) {
                zzbiO = new zzarj(applicationContext, z);
            }
            zzarjVar = zzbiO;
        }
        return zzarjVar;
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
        if (this.zzbiP) {
            try {
                return this.zzqn.getPackageManager().getApplicationInfo(str, i);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        zzarf zzbF = zzarf.zzbF(this.zzqn);
        if (zzbF != null) {
            try {
                ApplicationInfo applicationInfo = zzbF.getApplicationInfo(str, i);
                if (applicationInfo != null) {
                    return applicationInfo;
                }
            } catch (RemoteException e2) {
                Log.e("InstantAppsPMW", "Error getting application info", e2);
            }
        }
        throw new PackageManager.NameNotFoundException();
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        if (!this.zzbiP || this.zzqn.getPackageManager().getPackagesForUid(applicationInfo.uid) == null) {
            zzarf zzbF = zzarf.zzbF(this.zzqn);
            if (zzbF != null) {
                try {
                    return zzbF.zzeM(applicationInfo.packageName);
                } catch (RemoteException e) {
                    Log.e("InstantAppsPMW", "Error getting application label", e);
                }
            }
            return null;
        }
        return this.zzqn.getPackageManager().getApplicationLabel(applicationInfo);
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public ComponentName getCallingActivity(Activity activity) {
        zzarf zzbF;
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity != null && callingActivity.getPackageName() != null && zzeO(callingActivity.getPackageName()) && (zzbF = zzarf.zzbF(this.zzqn)) != null) {
            try {
                ComponentName zzeN = zzbF.zzeN(callingActivity.getClassName());
                if (zzeN != null) {
                    return zzeN;
                }
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting calling activity", e);
            }
        }
        return callingActivity;
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public String getCallingPackage(Activity activity) {
        ComponentName callingActivity = getCallingActivity(activity);
        if (callingActivity != null) {
            return callingActivity.getPackageName();
        }
        return null;
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
        if (this.zzbiP) {
            try {
                return this.zzqn.getPackageManager().getPackageInfo(str, i);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        zzarf zzbF = zzarf.zzbF(this.zzqn);
        if (zzbF != null) {
            try {
                PackageInfo packageInfo = zzbF.getPackageInfo(str, i);
                if (packageInfo != null) {
                    return packageInfo;
                }
            } catch (RemoteException e2) {
                Log.e("InstantAppsPMW", "Error getting package info", e2);
            }
        }
        throw new PackageManager.NameNotFoundException();
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public String[] getPackagesForUid(int i) {
        String[] packagesForUid;
        if (!this.zzbiP || (packagesForUid = this.zzqn.getPackageManager().getPackagesForUid(i)) == null) {
            zzarf zzbF = zzarf.zzbF(this.zzqn);
            if (zzbF == null) {
                return null;
            }
            try {
                String zzjS = zzbF.zzjS(i);
                if (zzjS != null) {
                    return new String[]{zzjS};
                }
                return null;
            } catch (RemoteException e) {
                Log.e("InstantAppsPMW", "Error getting app package for UID", e);
                return null;
            }
        }
        return packagesForUid;
    }

    @Override // com.google.android.gms.instantapps.PackageManagerWrapper
    public boolean isInstantApp(int i) {
        if (Process.myUid() == i) {
            return zzade.zzbg(this.zzqn);
        }
        zzarf zzbF = zzarf.zzbF(this.zzqn);
        if (zzbF == null) {
            return false;
        }
        try {
            return zzbF.zzjS(i) != null;
        } catch (RemoteException e) {
            Log.e("InstantAppsPMW", "Error checking if app is instant app", e);
            return false;
        }
    }
}
