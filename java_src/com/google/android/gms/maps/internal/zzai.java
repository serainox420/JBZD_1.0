package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.maps.internal.zzc;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2.dex */
public class zzai {
    private static Context zzboX;
    private static zzc zzboY;

    private static Context getRemoteContext(Context context) {
        if (zzboX == null) {
            zzboX = GooglePlayServicesUtil.getRemoteContext(context);
        }
        return zzboX;
    }

    private static <T> T zza(ClassLoader classLoader, String str) {
        try {
            return (T) zze(((ClassLoader) com.google.android.gms.common.internal.zzac.zzw(classLoader)).loadClass(str));
        } catch (ClassNotFoundException e) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    public static zzc zzbI(Context context) throws GooglePlayServicesNotAvailableException {
        com.google.android.gms.common.internal.zzac.zzw(context);
        if (zzboY != null) {
            return zzboY;
        }
        zzbJ(context);
        zzboY = zzbK(context);
        try {
            zzboY.zzi(com.google.android.gms.dynamic.zzd.zzA(getRemoteContext(context).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            return zzboY;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    private static void zzbJ(Context context) throws GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        switch (isGooglePlayServicesAvailable) {
            case 0:
                return;
            default:
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
    }

    private static zzc zzbK(Context context) {
        Log.i(zzai.class.getSimpleName(), "Making Creator dynamically");
        return zzc.zza.zzdt((IBinder) zza(getRemoteContext(context).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
    }

    private static <T> T zze(Class<?> cls) {
        try {
            return (T) cls.newInstance();
        } catch (IllegalAccessException e) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf) : new String("Unable to call the default constructor of "));
        } catch (InstantiationException e2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf2) : new String("Unable to instantiate the dynamic class "));
        }
    }
}
