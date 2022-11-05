package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzia;
import com.google.android.gms.internal.zziu;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzoq;
import com.google.android.gms.internal.zzou;
@zzme
/* loaded from: classes.dex */
public class zze {
    public final zziu zzsM;
    public final com.google.android.gms.ads.internal.overlay.zzk zzsN;
    public final com.google.android.gms.ads.internal.overlay.zzn zzsO;
    public final zzou zzsP;

    public zze(zziu zziuVar, com.google.android.gms.ads.internal.overlay.zzk zzkVar, com.google.android.gms.ads.internal.overlay.zzn zznVar, zzou zzouVar) {
        this.zzsM = zziuVar;
        this.zzsN = zzkVar;
        this.zzsO = zznVar;
        this.zzsP = zzouVar;
    }

    public static zze zzcc() {
        return new zze(new zzia(), new com.google.android.gms.ads.internal.overlay.zzo(), new com.google.android.gms.ads.internal.overlay.zzu(), new zzoq());
    }
}
