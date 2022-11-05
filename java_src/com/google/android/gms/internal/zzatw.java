package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzatt;
/* loaded from: classes2.dex */
public class zzatw extends com.google.android.gms.common.internal.zzf<zzatt> {
    public zzatw(Context context, Looper looper, zzf.zzb zzbVar, zzf.zzc zzcVar) {
        super(context, looper, 93, zzbVar, zzcVar, null);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.measurement.internal.IMeasurementService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzet */
    public zzatt zzh(IBinder iBinder) {
        return zzatt.zza.zzes(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.measurement.START";
    }
}
