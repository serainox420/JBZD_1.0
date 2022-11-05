package com.google.android.gms.internal;

import com.google.android.gms.awareness.state.BeaconState;
import com.google.android.gms.internal.zzbwo;
import com.google.android.gms.internal.zzvx;
/* loaded from: classes2.dex */
public class zzael {
    private final zzbwo zzaJi;

    public zzael(zzbwo zzbwoVar) {
        this.zzaJi = (zzbwo) com.google.android.gms.common.internal.zzac.zzw(zzbwoVar);
    }

    private static zzbwo zza(int i, BeaconState.TypeFilter[] typeFilterArr, long j) {
        zzbwo zzbwoVar = new zzbwo();
        zzbwoVar.zzcsS = i;
        if (typeFilterArr != null && typeFilterArr.length != 0) {
            zzbwoVar.zzctb = new zzbwo.zza[typeFilterArr.length];
            int i2 = 0;
            for (BeaconState.TypeFilter typeFilter : typeFilterArr) {
                zzbwoVar.zzctb[i2] = ((zzvx.zzb) typeFilter).zzrK();
                i2++;
            }
        }
        zzbwoVar.zzcsT = j;
        return zzbwoVar;
    }

    public static zzael zzb(BeaconState.TypeFilter[] typeFilterArr) {
        return new zzael(zza(1, typeFilterArr, 3000L));
    }

    public static zzael zzc(BeaconState.TypeFilter[] typeFilterArr) {
        return new zzael(zza(2, typeFilterArr, 3000L));
    }

    public static zzael zzd(BeaconState.TypeFilter[] typeFilterArr) {
        return new zzael(zza(3, typeFilterArr, 3000L));
    }

    public zzbwo zzzZ() {
        return this.zzaJi;
    }
}
