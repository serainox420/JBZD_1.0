package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
/* loaded from: classes2.dex */
public class zzbsi extends zzbrz<zzbsi> {
    private final String value;

    public zzbsi(String str, zzbsc zzbscVar) {
        super(zzbscVar);
        this.value = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbsi)) {
            return false;
        }
        zzbsi zzbsiVar = (zzbsi) obj;
        return this.value.equals(zzbsiVar.value) && this.zzciX.equals(zzbsiVar.zzciX);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.value.hashCode() + this.zzciX.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbrz
    public int zza(zzbsi zzbsiVar) {
        return this.value.compareTo(zzbsiVar.value);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        switch (zzaVar) {
            case V1:
                String valueOf = String.valueOf(zzb(zzaVar));
                String str = this.value;
                return new StringBuilder(String.valueOf(valueOf).length() + 7 + String.valueOf(str).length()).append(valueOf).append("string:").append(str).toString();
            case V2:
                String valueOf2 = String.valueOf(zzb(zzaVar));
                String valueOf3 = String.valueOf(zzbte.zzji(this.value));
                return new StringBuilder(String.valueOf(valueOf2).length() + 7 + String.valueOf(valueOf3).length()).append(valueOf2).append("string:").append(valueOf3).toString();
            default:
                String valueOf4 = String.valueOf(zzaVar);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf4).length() + 38).append("Invalid hash version for string node: ").append(valueOf4).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzbrz
    protected zzbrz.zza zzaaF() {
        return zzbrz.zza.String;
    }

    @Override // com.google.android.gms.internal.zzbsc
    /* renamed from: zzs */
    public zzbsi zzg(zzbsc zzbscVar) {
        return new zzbsi(this.value, zzbscVar);
    }
}
