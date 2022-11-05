package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.zzi;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public class zzc extends zzi.zza {
    private final CastStateListener zzaqt;

    public zzc(CastStateListener castStateListener) {
        this.zzaqt = castStateListener;
    }

    @Override // com.google.android.gms.cast.framework.zzi
    public void onCastStateChanged(int i) {
        this.zzaqt.onCastStateChanged(i);
    }

    @Override // com.google.android.gms.cast.framework.zzi
    public int zzsB() {
        return 10298208;
    }

    @Override // com.google.android.gms.cast.framework.zzi
    public IObjectWrapper zzsC() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzaqt);
    }
}
