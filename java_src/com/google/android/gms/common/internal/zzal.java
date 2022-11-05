package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.api.Api;
/* loaded from: classes2.dex */
public class zzal<T extends IInterface> extends zzl<T> {
    private final Api.zzg<T> zzaGJ;

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return this.zzaGJ.zzeA();
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return this.zzaGJ.zzez();
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected T zzh(IBinder iBinder) {
        return this.zzaGJ.zzh(iBinder);
    }

    public Api.zzg<T> zzyn() {
        return this.zzaGJ;
    }
}
