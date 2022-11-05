package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class zzbrp extends zzbrz<zzbrp> {
    private final boolean value;

    public zzbrp(Boolean bool, zzbsc zzbscVar) {
        super(zzbscVar);
        this.value = bool.booleanValue();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbrp)) {
            return false;
        }
        zzbrp zzbrpVar = (zzbrp) obj;
        return this.value == zzbrpVar.value && this.zzciX.equals(zzbrpVar.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return Boolean.valueOf(this.value);
    }

    public int hashCode() {
        return (this.value ? 1 : 0) + this.zzciX.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbrz
    public int zza(zzbrp zzbrpVar) {
        if (this.value == zzbrpVar.value) {
            return 0;
        }
        return this.value ? 1 : -1;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        String valueOf = String.valueOf(zzb(zzaVar));
        return new StringBuilder(String.valueOf(valueOf).length() + 13).append(valueOf).append("boolean:").append(this.value).toString();
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected zzbrz.zza zzaaF() {
        return zzbrz.zza.Boolean;
    }

    @Override // com.google.android.gms.internal.zzbsc
    /* renamed from: zzf */
    public zzbrp zzg(zzbsc zzbscVar) {
        return new zzbrp(Boolean.valueOf(this.value), zzbscVar);
    }
}
