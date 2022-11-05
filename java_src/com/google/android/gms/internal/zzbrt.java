package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrt extends zzbrz<zzbrt> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Map<Object, Object> zzcjm;

    static {
        $assertionsDisabled = !zzbrt.class.desiredAssertionStatus();
    }

    public zzbrt(Map<Object, Object> map, zzbsc zzbscVar) {
        super(zzbscVar);
        this.zzcjm = map;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbrt)) {
            return false;
        }
        zzbrt zzbrtVar = (zzbrt) obj;
        return this.zzcjm.equals(zzbrtVar.zzcjm) && this.zzciX.equals(zzbrtVar.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return this.zzcjm;
    }

    public int hashCode() {
        return this.zzcjm.hashCode() + this.zzciX.hashCode();
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected /* bridge */ /* synthetic */ int zza(zzbrt zzbrtVar) {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        String valueOf = String.valueOf(zzb(zzaVar));
        String valueOf2 = String.valueOf(this.zzcjm);
        return new StringBuilder(String.valueOf(valueOf).length() + 14 + String.valueOf(valueOf2).length()).append(valueOf).append("deferredValue:").append(valueOf2).toString();
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected zzbrz.zza zzaaF() {
        return zzbrz.zza.DeferredValue;
    }

    @Override // com.google.android.gms.internal.zzbsc
    /* renamed from: zzj */
    public zzbrt zzg(zzbsc zzbscVar) {
        if ($assertionsDisabled || zzbsg.zzq(zzbscVar)) {
            return new zzbrt(this.zzcjm, zzbscVar);
        }
        throw new AssertionError();
    }
}
