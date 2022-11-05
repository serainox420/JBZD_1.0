package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;
import com.google.android.gms.dynamic.IObjectWrapper;
@zzme
/* loaded from: classes.dex */
public final class zzck {
    private final zzco zzrN;

    public zzck(String str, Context context, boolean z) {
        this.zzrN = zzcn.zzb(str, context, z);
    }

    public void zza(MotionEvent motionEvent) throws RemoteException {
        this.zzrN.zzd(com.google.android.gms.dynamic.zzd.zzA(motionEvent));
    }

    public Uri zzc(Uri uri, Context context) throws zzcl, RemoteException {
        IObjectWrapper zza = this.zzrN.zza(com.google.android.gms.dynamic.zzd.zzA(uri), com.google.android.gms.dynamic.zzd.zzA(context));
        if (zza == null) {
            throw new zzcl();
        }
        return (Uri) com.google.android.gms.dynamic.zzd.zzF(zza);
    }

    public Uri zzd(Uri uri, Context context) throws zzcl, RemoteException {
        IObjectWrapper zzb = this.zzrN.zzb(com.google.android.gms.dynamic.zzd.zzA(uri), com.google.android.gms.dynamic.zzd.zzA(context));
        if (zzb == null) {
            throw new zzcl();
        }
        return (Uri) com.google.android.gms.dynamic.zzd.zzF(zzb);
    }
}
