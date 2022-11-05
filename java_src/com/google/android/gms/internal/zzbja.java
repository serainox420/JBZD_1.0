package com.google.android.gms.internal;

import java.util.List;
/* loaded from: classes2.dex */
public class zzbja extends zzbit<String> {
    private final String zzbNb;
    private final List<zzbit<?>> zzbNc;

    public zzbja(String str, List<zzbit<?>> list) {
        com.google.android.gms.common.internal.zzac.zzb(str, "Instruction name must be a string.");
        com.google.android.gms.common.internal.zzac.zzw(list);
        this.zzbNb = str;
        this.zzbNc = list;
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        String str = this.zzbNb;
        String valueOf = String.valueOf(this.zzbNc.toString());
        return new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(valueOf).length()).append("*").append(str).append(": ").append(valueOf).toString();
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: value */
    public String zzTi() {
        return toString();
    }

    public String zzTt() {
        return this.zzbNb;
    }

    public List<zzbit<?>> zzTu() {
        return this.zzbNc;
    }
}
