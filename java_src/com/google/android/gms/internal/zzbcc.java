package com.google.android.gms.internal;

import android.content.Context;
/* loaded from: classes2.dex */
public class zzbcc {
    private final Context mContext;
    private final String zzbEU;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final com.google.android.gms.tagmanager.zzay zzbJu;

    public zzbcc(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar, String str) {
        this.mContext = context.getApplicationContext();
        this.zzbJl = zzbbVar;
        this.zzbJu = zzayVar;
        this.zzbEU = str;
    }

    public zzbcb zza(zzbio zzbioVar, zzbir zzbirVar) {
        return new zzbcb(this.mContext, this.zzbEU, zzbioVar, zzbirVar, this.zzbJl, this.zzbJu);
    }
}
