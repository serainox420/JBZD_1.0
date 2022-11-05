package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class zzbru extends zzbrz<zzbru> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Double zzcjn;

    static {
        $assertionsDisabled = !zzbru.class.desiredAssertionStatus();
    }

    public zzbru(Double d, zzbsc zzbscVar) {
        super(zzbscVar);
        this.zzcjn = d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbru)) {
            return false;
        }
        zzbru zzbruVar = (zzbru) obj;
        return this.zzcjn.equals(zzbruVar.zzcjn) && this.zzciX.equals(zzbruVar.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return this.zzcjn;
    }

    public int hashCode() {
        return this.zzcjn.hashCode() + this.zzciX.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbrz
    public int zza(zzbru zzbruVar) {
        return this.zzcjn.compareTo(zzbruVar.zzcjn);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        String valueOf = String.valueOf(String.valueOf(zzb(zzaVar)).concat("number:"));
        String valueOf2 = String.valueOf(zzbte.zzl(this.zzcjn.doubleValue()));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected zzbrz.zza zzaaF() {
        return zzbrz.zza.Number;
    }

    @Override // com.google.android.gms.internal.zzbsc
    /* renamed from: zzk */
    public zzbru zzg(zzbsc zzbscVar) {
        if ($assertionsDisabled || zzbsg.zzq(zzbscVar)) {
            return new zzbru(this.zzcjn, zzbscVar);
        }
        throw new AssertionError();
    }
}
