package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzaqm;
/* loaded from: classes2.dex */
public class zzaqh extends com.google.android.gms.common.internal.zzf<zzaqm> {
    public zzaqh(Context context, Looper looper, zzf.zzb zzbVar, zzf.zzc zzcVar) {
        super(context, looper, 116, zzbVar, zzcVar, null);
    }

    public zzaqm zzGL() throws DeadObjectException {
        return (zzaqm) super.zzxD();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzcT */
    public zzaqm zzh(IBinder iBinder) {
        return zzaqm.zza.zzcU(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.gass.internal.IGassService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.gass.START";
    }
}
