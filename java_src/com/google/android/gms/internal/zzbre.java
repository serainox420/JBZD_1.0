package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbre {
    private final zzbqu zzciw;
    private final zzbqu zzcix;

    public zzbre(zzbqu zzbquVar, zzbqu zzbquVar2) {
        this.zzciw = zzbquVar;
        this.zzcix = zzbquVar2;
    }

    public zzbre zza(zzbrx zzbrxVar, boolean z, boolean z2) {
        return new zzbre(new zzbqu(zzbrxVar, z, z2), this.zzcix);
    }

    public zzbqu zzaau() {
        return this.zzciw;
    }

    public zzbsc zzaav() {
        if (this.zzciw.zzZQ()) {
            return this.zzciw.zzWI();
        }
        return null;
    }

    public zzbqu zzaaw() {
        return this.zzcix;
    }

    public zzbsc zzaax() {
        if (this.zzcix.zzZQ()) {
            return this.zzcix.zzWI();
        }
        return null;
    }

    public zzbre zzb(zzbrx zzbrxVar, boolean z, boolean z2) {
        return new zzbre(this.zzciw, new zzbqu(zzbrxVar, z, z2));
    }
}
