package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqe;
/* loaded from: classes2.dex */
public class zzbqc extends zzbqe {
    static final /* synthetic */ boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !zzbqc.class.desiredAssertionStatus();
    }

    public zzbqc(zzbqf zzbqfVar, zzbph zzbphVar) {
        super(zzbqe.zza.ListenComplete, zzbqfVar, zzbphVar);
        if ($assertionsDisabled || !zzbqfVar.zzZA()) {
            return;
        }
        throw new AssertionError("Can't have a listen complete from a user source");
    }

    public String toString() {
        return String.format("ListenComplete { path=%s, source=%s }", zzWM(), zzZy());
    }

    @Override // com.google.android.gms.internal.zzbqe
    public zzbqe zzc(zzbrq zzbrqVar) {
        return this.zzcag.isEmpty() ? new zzbqc(this.zzcgL, zzbph.zzYP()) : new zzbqc(this.zzcgL, this.zzcag.zzYT());
    }
}
