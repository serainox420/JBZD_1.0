package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public final class zzbix extends zzbit<zzbit<?>> {
    public static final zzbix zzbMP = new zzbix("BREAK");
    public static final zzbix zzbMQ = new zzbix("CONTINUE");
    public static final zzbix zzbMR = new zzbix("NULL");
    public static final zzbix zzbMS = new zzbix("UNDEFINED");
    private final String mName;
    private final boolean zzbMT;
    private final zzbit<?> zzbMU;

    public zzbix(zzbit<?> zzbitVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
        this.mName = "RETURN";
        this.zzbMT = true;
        this.zzbMU = zzbitVar;
    }

    private zzbix(String str) {
        this.mName = str;
        this.zzbMT = false;
        this.zzbMU = null;
    }

    @Override // com.google.android.gms.internal.zzbit
    public String toString() {
        return this.mName;
    }

    @Override // com.google.android.gms.internal.zzbit
    /* renamed from: zzTo */
    public zzbit zzTi() {
        return this.zzbMU;
    }

    public boolean zzTp() {
        return this.zzbMT;
    }
}
