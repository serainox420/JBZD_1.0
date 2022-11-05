package com.google.android.gms.internal;

import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzwy;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzwv {
    private static final zzyz zzapV = new zzyz("CastDynamiteModule");

    public static com.google.android.gms.cast.framework.media.zzc zza(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, CastMediaOptions castMediaOptions) {
        try {
            return zzaw(service.getApplicationContext()).zza(com.google.android.gms.dynamic.zzd.zzA(service), iObjectWrapper, iObjectWrapper2, castMediaOptions);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newMediaNotificationServiceImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.zzg zza(Context context, CastOptions castOptions, zzwz zzwzVar, Map<String, IBinder> map) {
        try {
            return zzaw(context).zza(com.google.android.gms.dynamic.zzd.zzA(context.getApplicationContext()), castOptions, zzwzVar, map);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newCastContextImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.zzh zza(Context context, CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzf zzfVar) {
        try {
            return zzaw(context).zza(castOptions, iObjectWrapper, zzfVar);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newCastSessionImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.zzl zza(Service service, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        try {
            return zzaw(service.getApplicationContext()).zza(com.google.android.gms.dynamic.zzd.zzA(service), iObjectWrapper, iObjectWrapper2);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newReconnectionServiceImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    public static com.google.android.gms.cast.framework.zzm zza(Context context, String str, String str2, com.google.android.gms.cast.framework.zzq zzqVar) {
        try {
            return zzaw(context).zza(str, str2, zzqVar);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newSessionImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    public static zzxh zza(Context context, AsyncTask<Uri, Long, Bitmap> asyncTask, zzxi zzxiVar, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        try {
            return zzaw(context.getApplicationContext()).zza(com.google.android.gms.dynamic.zzd.zzA(asyncTask), zzxiVar, i, i2, z, j, i3, i4, i5);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", zzwy.class.getSimpleName());
            return null;
        }
    }

    private static zzwy zzaw(Context context) {
        try {
            return zzwy.zza.zzaZ(DynamiteModule.zza(context, DynamiteModule.zzaRU, "com.google.android.gms.cast.framework.dynamite").zzdT("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"));
        } catch (DynamiteModule.zza e) {
            throw new RuntimeException(e);
        }
    }
}
