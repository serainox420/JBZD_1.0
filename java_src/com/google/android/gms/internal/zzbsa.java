package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class zzbsa extends zzbrz<zzbsa> {
    private final long value;

    public zzbsa(Long l, zzbsc zzbscVar) {
        super(zzbscVar);
        this.value = l.longValue();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbsa)) {
            return false;
        }
        zzbsa zzbsaVar = (zzbsa) obj;
        return this.value == zzbsaVar.value && this.zzciX.equals(zzbsaVar.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return Long.valueOf(this.value);
    }

    public int hashCode() {
        return ((int) (this.value ^ (this.value >>> 32))) + this.zzciX.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbrz
    public int zza(zzbsa zzbsaVar) {
        return zzbte.zzl(this.value, zzbsaVar.value);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        String valueOf = String.valueOf(String.valueOf(zzb(zzaVar)).concat("number:"));
        String valueOf2 = String.valueOf(zzbte.zzl(this.value));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected zzbrz.zza zzaaF() {
        return zzbrz.zza.Number;
    }

    @Override // com.google.android.gms.internal.zzbsc
    /* renamed from: zzp */
    public zzbsa zzg(zzbsc zzbscVar) {
        return new zzbsa(Long.valueOf(this.value), zzbscVar);
    }
}
