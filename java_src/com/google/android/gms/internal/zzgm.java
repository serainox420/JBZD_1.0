package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzgo;
@zzme
/* loaded from: classes.dex */
public final class zzgm extends zzgo.zza {
    private final com.google.android.gms.ads.internal.zzi zzFT;
    private final String zzFU;
    private final String zzFV;

    public zzgm(com.google.android.gms.ads.internal.zzi zziVar, String str, String str2) {
        this.zzFT = zziVar;
        this.zzFU = str;
        this.zzFV = str2;
    }

    @Override // com.google.android.gms.internal.zzgo
    public String getContent() {
        return this.zzFV;
    }

    @Override // com.google.android.gms.internal.zzgo
    public void recordClick() {
        this.zzFT.zzbZ();
    }

    @Override // com.google.android.gms.internal.zzgo
    public void recordImpression() {
        this.zzFT.zzca();
    }

    @Override // com.google.android.gms.internal.zzgo
    public String zzfG() {
        return this.zzFU;
    }

    @Override // com.google.android.gms.internal.zzgo
    public void zzi(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.zzFT.zzc((View) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper));
    }
}
