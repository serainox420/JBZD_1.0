package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzdv;
@zzme
/* loaded from: classes.dex */
public class zzdr extends com.google.android.gms.common.internal.zzf<zzdv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdr(Context context, Looper looper, zzf.zzb zzbVar, zzf.zzc zzcVar) {
        super(context, looper, 123, zzbVar, zzcVar, null);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    public zzdv zzeB() throws DeadObjectException {
        return (zzdv) super.zzxD();
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzg */
    public zzdv zzh(IBinder iBinder) {
        return zzdv.zza.zzi(iBinder);
    }
}
