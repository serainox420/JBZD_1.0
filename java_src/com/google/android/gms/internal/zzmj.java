package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzmt;
@zzme
/* loaded from: classes.dex */
public class zzmj extends com.google.android.gms.common.internal.zzf<zzmt> {
    final int zzRw;

    public zzmj(Context context, Looper looper, zzf.zzb zzbVar, zzf.zzc zzcVar, int i) {
        super(context, looper, 8, zzbVar, zzcVar, null);
        this.zzRw = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzad */
    public zzmt zzh(IBinder iBinder) {
        return zzmt.zza.zzae(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.ads.internal.request.IAdRequestService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.ads.service.START";
    }

    public zzmt zzjq() throws DeadObjectException {
        return (zzmt) super.zzxD();
    }
}
