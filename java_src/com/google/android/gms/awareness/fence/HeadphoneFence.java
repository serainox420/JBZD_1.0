package com.google.android.gms.awareness.fence;

import com.google.android.gms.internal.zzaej;
import com.google.android.gms.internal.zzaep;
/* loaded from: classes2.dex */
public final class HeadphoneFence {
    private HeadphoneFence() {
    }

    public static AwarenessFence during(int i) {
        return zzaep.zza(zzaej.zzdE(i));
    }

    public static AwarenessFence pluggingIn() {
        return zzaep.zza(zzaej.zzzW());
    }

    public static AwarenessFence unplugging() {
        return zzaep.zza(zzaej.zzzX());
    }
}
