package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ProviderInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes2.dex */
public class zzare {
    private static Boolean zzbiI = null;
    private static ContentProviderClient zzbiJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent getInstantAppIntent(Context context, String str, Intent intent) {
        return zza(context, str, (Parcelable) intent, true);
    }

    static synchronized void reset() {
        synchronized (zzare.class) {
            if (zzbiJ != null) {
                zzbiJ.release();
                zzbiJ = null;
            }
            zzbiI = null;
        }
    }

    @TargetApi(11)
    private static Intent zza(Context context, String str, Parcelable parcelable, boolean z) {
        Bundle bundle;
        if (context == null || str == null) {
            throw new IllegalArgumentException("Parameter is null");
        }
        if (!zzbD(context)) {
            return null;
        }
        if (parcelable != null) {
            bundle = new Bundle(1);
            bundle.putParcelable("key_fallbackIntent", parcelable);
        } else {
            bundle = null;
        }
        try {
            Bundle zza = zza(context, "method_getInstantAppIntent", str, bundle);
            if (zza != null) {
                return (Intent) zza.getParcelable("key_instantAppIntent");
            }
            return null;
        } catch (DeadObjectException e) {
            Log.e("InstantAppsApi", String.format("While calling %s %s:\n", zzaqv.zzbiv, "method_getInstantAppIntent"), e);
            reset();
            if (!z) {
                return null;
            }
            return zza(context, str, parcelable, false);
        } catch (RemoteException e2) {
            e = e2;
            Log.e("InstantAppsApi", String.format("While calling %s %s:\n", zzaqv.zzbiv, "method_getInstantAppIntent"), e);
            return null;
        } catch (IllegalArgumentException e3) {
            e = e3;
            Log.e("InstantAppsApi", String.format("While calling %s %s:\n", zzaqv.zzbiv, "method_getInstantAppIntent"), e);
            return null;
        }
    }

    @TargetApi(11)
    private static synchronized Bundle zza(Context context, String str, String str2, Bundle bundle) throws RemoteException {
        Bundle call;
        synchronized (zzare.class) {
            call = zzbiJ == null ? context.getContentResolver().call(zzaqv.zzbiv, str, str2, bundle) : zzd(str, str2, bundle);
        }
        return call;
    }

    @TargetApi(17)
    private static synchronized boolean zzbC(Context context) {
        boolean z;
        synchronized (zzare.class) {
            if (zzbiJ == null) {
                zzbiJ = context.getApplicationContext().getContentResolver().acquireUnstableContentProviderClient(zzaqv.zzbiv);
            }
            z = zzbiJ != null;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(11)
    public static synchronized boolean zzbD(Context context) {
        boolean booleanValue;
        synchronized (zzare.class) {
            if (context == null) {
                throw new IllegalArgumentException("Parameter is null");
            }
            if (zzbiI != null) {
                booleanValue = zzbiI.booleanValue();
            } else {
                zzbiI = Boolean.valueOf(zzbE(context));
                booleanValue = zzbiI.booleanValue();
            }
        }
        return booleanValue;
    }

    private static synchronized boolean zzbE(Context context) {
        ProviderInfo resolveContentProvider;
        boolean z = false;
        synchronized (zzare.class) {
            int i = Build.VERSION.SDK_INT;
            if (zzarp.zzbH(context) && (resolveContentProvider = context.getPackageManager().resolveContentProvider(zzaqv.zzbiv.getAuthority(), 0)) != null) {
                if (!resolveContentProvider.packageName.equals("com.google.android.gms")) {
                    String valueOf = String.valueOf(resolveContentProvider.packageName);
                    Log.e("InstantAppsApi", valueOf.length() != 0 ? "Incorrect package name for instant apps content provider: ".concat(valueOf) : new String("Incorrect package name for instant apps content provider: "));
                } else if (Build.VERSION.SDK_INT < 17 || zzbC(context)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @TargetApi(17)
    private static synchronized Bundle zzd(String str, String str2, Bundle bundle) throws RemoteException {
        Bundle call;
        synchronized (zzare.class) {
            call = zzbiJ.call(str, str2, bundle);
        }
        return call;
    }
}
