package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import com.google.firebase.database.b;
/* loaded from: classes2.dex */
public class zzbqx implements zzbqy {
    private final zzbpc zzchL;
    private final zzbqy.zza zzchN;
    private final b zzchR;
    private final String zzchS;

    public zzbqx(zzbqy.zza zzaVar, zzbpc zzbpcVar, b bVar, String str) {
        this.zzchN = zzaVar;
        this.zzchL = zzbpcVar;
        this.zzchR = bVar;
        this.zzchS = str;
    }

    @Override // com.google.android.gms.internal.zzbqy
    public String toString() {
        if (this.zzchN == zzbqy.zza.VALUE) {
            String valueOf = String.valueOf(zzWM());
            String valueOf2 = String.valueOf(this.zzchN);
            String valueOf3 = String.valueOf(this.zzchR.a(true));
            return new StringBuilder(String.valueOf(valueOf).length() + 4 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append(valueOf).append(": ").append(valueOf2).append(": ").append(valueOf3).toString();
        }
        String valueOf4 = String.valueOf(zzWM());
        String valueOf5 = String.valueOf(this.zzchN);
        String valueOf6 = String.valueOf(this.zzchR.b());
        String valueOf7 = String.valueOf(this.zzchR.a(true));
        return new StringBuilder(String.valueOf(valueOf4).length() + 10 + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length() + String.valueOf(valueOf7).length()).append(valueOf4).append(": ").append(valueOf5).append(": { ").append(valueOf6).append(": ").append(valueOf7).append(" }").toString();
    }

    public zzbph zzWM() {
        zzbph c = this.zzchR.a().c();
        return this.zzchN == zzbqy.zza.VALUE ? c : c.zzYU();
    }

    @Override // com.google.android.gms.internal.zzbqy
    public void zzZT() {
        this.zzchL.zza(this);
    }

    public zzbqy.zza zzZV() {
        return this.zzchN;
    }

    public b zzZY() {
        return this.zzchR;
    }

    public String zzZZ() {
        return this.zzchS;
    }
}
