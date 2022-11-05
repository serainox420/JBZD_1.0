package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes2.dex */
public class zzarf {
    private static zzarf zzbiK;
    private final Context mContext;

    private zzarf(Context context) {
        this.mContext = context;
    }

    private static boolean zzHH() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static synchronized zzarf zzbF(Context context) {
        zzarf zzarfVar;
        synchronized (zzarf.class) {
            if (zzbiK == null) {
                zzbiK = zzbG(context.getApplicationContext());
            }
            zzarfVar = zzbiK;
        }
        return zzarfVar;
    }

    private static zzarf zzbG(Context context) {
        ProviderInfo resolveContentProvider;
        if (zzHH() && zzarp.zzbH(context) && (resolveContentProvider = context.getPackageManager().resolveContentProvider(zzarg.zzbiL.getAuthority(), 0)) != null) {
            if (resolveContentProvider.packageName.equals("com.google.android.gms")) {
                return new zzarf(context);
            }
            String valueOf = String.valueOf(resolveContentProvider.packageName);
            Log.e("IAMetadataClient", new StringBuilder(String.valueOf(valueOf).length() + 85).append("Package ").append(valueOf).append(" is invalid for instant apps content provider; instant apps will be disabled.").toString());
            return null;
        }
        return null;
    }

    @TargetApi(16)
    private Bundle zzh(String str, Bundle bundle) throws RemoteException {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Bundle call = this.mContext.getContentResolver().call(zzarg.zzbiL, str, (String) null, bundle);
            if (call != null) {
                return call;
            }
            throw new RemoteException();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public ApplicationInfo getApplicationInfo(String str, int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("flags", i);
        return (ApplicationInfo) zzh("getWHApplicationInfo", bundle).getParcelable("result");
    }

    public PackageInfo getPackageInfo(String str, int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        bundle.putInt("flags", i);
        return (PackageInfo) zzh("getWHPackageInfo", bundle).getParcelable("result");
    }

    public String zzeM(String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", str);
        return zzh("getApplicationLabel", bundle).getString("result");
    }

    public ComponentName zzeN(String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putString("shadowActivity", str);
        return (ComponentName) zzh("getCallingActivity", bundle).getParcelable("result");
    }

    public String zzjS(int i) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putInt("uid", i);
        return zzh("getAppPackageForUid", bundle).getString("result");
    }
}
