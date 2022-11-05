package com.google.android.gms.cast.framework;

import com.google.android.gms.cast.framework.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2.dex */
public class zza extends zze.zza {
    private final AppVisibilityListener zzapU;

    public zza(AppVisibilityListener appVisibilityListener) {
        this.zzapU = appVisibilityListener;
    }

    @Override // com.google.android.gms.cast.framework.zze
    public void onAppEnteredBackground() {
        this.zzapU.onAppEnteredBackground();
    }

    @Override // com.google.android.gms.cast.framework.zze
    public void onAppEnteredForeground() {
        this.zzapU.onAppEnteredForeground();
    }

    @Override // com.google.android.gms.cast.framework.zze
    public int zzsB() {
        return 10298208;
    }

    @Override // com.google.android.gms.cast.framework.zze
    public IObjectWrapper zzsC() {
        return com.google.android.gms.dynamic.zzd.zzA(this.zzapU);
    }
}
