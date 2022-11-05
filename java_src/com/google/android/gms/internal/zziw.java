package com.google.android.gms.internal;

import android.content.Context;
@zzme
/* loaded from: classes.dex */
public class zziw {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zze zzsv;
    private final zzka zzsz;
    private final zzqh zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziw(Context context, zzka zzkaVar, zzqh zzqhVar, com.google.android.gms.ads.internal.zze zzeVar) {
        this.mContext = context;
        this.zzsz = zzkaVar;
        this.zztt = zzqhVar;
        this.zzsv = zzeVar;
    }

    public Context getApplicationContext() {
        return this.mContext.getApplicationContext();
    }

    public com.google.android.gms.ads.internal.zzm zzag(String str) {
        return new com.google.android.gms.ads.internal.zzm(this.mContext, new zzeg(), str, this.zzsz, this.zztt, this.zzsv);
    }

    public com.google.android.gms.ads.internal.zzm zzah(String str) {
        return new com.google.android.gms.ads.internal.zzm(this.mContext.getApplicationContext(), new zzeg(), str, this.zzsz, this.zztt, this.zzsv);
    }

    public zziw zzgu() {
        return new zziw(getApplicationContext(), this.zzsz, this.zztt, this.zzsv);
    }
}
