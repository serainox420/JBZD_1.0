package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrz;
import com.google.android.gms.internal.zzbsc;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes2.dex */
public abstract class zzbrz<T extends zzbrz> implements zzbsc {
    static final /* synthetic */ boolean $assertionsDisabled;
    protected final zzbsc zzciX;
    private String zzciY;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public enum zza {
        DeferredValue,
        Boolean,
        Number,
        String
    }

    static {
        $assertionsDisabled = !zzbrz.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbrz(zzbsc zzbscVar) {
        this.zzciX = zzbscVar;
    }

    private static int zza(zzbsa zzbsaVar, zzbru zzbruVar) {
        return Double.valueOf(((Long) zzbsaVar.getValue()).longValue()).compareTo((Double) zzbruVar.getValue());
    }

    @Override // com.google.android.gms.internal.zzbsc
    public int getChildCount() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Object getValue(boolean z) {
        if (!z || this.zzciX.isEmpty()) {
            return getValue();
        }
        HashMap hashMap = new HashMap();
        hashMap.put(".value", getValue());
        hashMap.put(".priority", this.zzciX.getValue());
        return hashMap;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    public Iterator<zzbsb> iterator() {
        return Collections.emptyList().iterator();
    }

    public String toString() {
        String obj = getValue(true).toString();
        return obj.length() <= 100 ? obj : String.valueOf(obj.substring(0, 100)).concat("...");
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzO(zzbph zzbphVar) {
        return zzbphVar.isEmpty() ? this : zzbphVar.zzYS().zzaaK() ? this.zzciX : zzbrv.zzaaZ();
    }

    @Override // com.google.android.gms.internal.zzbsc
    public Iterator<zzbsb> zzWV() {
        return Collections.emptyList().iterator();
    }

    protected abstract int zza(T t);

    protected abstract zza zzaaF();

    @Override // com.google.android.gms.internal.zzbsc
    public String zzaaM() {
        if (this.zzciY == null) {
            this.zzciY = zzbte.zzjh(zza(zzbsc.zza.V1));
        }
        return this.zzciY;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean zzaaN() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzaaO() {
        return this.zzciX;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String zzb(zzbsc.zza zzaVar) {
        switch (zzaVar) {
            case V1:
            case V2:
                if (this.zzciX.isEmpty()) {
                    return "";
                }
                String valueOf = String.valueOf(this.zzciX.zza(zzaVar));
                return new StringBuilder(String.valueOf(valueOf).length() + 10).append("priority:").append(valueOf).append(":").toString();
            default:
                String valueOf2 = String.valueOf(zzaVar);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 22).append("Unknown hash version: ").append(valueOf2).toString());
        }
    }

    protected int zzc(zzbrz<?> zzbrzVar) {
        zza zzaaF = zzaaF();
        zza zzaaF2 = zzbrzVar.zzaaF();
        return zzaaF.equals(zzaaF2) ? zza((zzbrz<T>) zzbrzVar) : zzaaF.compareTo(zzaaF2);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zze(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return zzbrqVar.zzaaK() ? zzg(zzbscVar) : !zzbscVar.isEmpty() ? zzbrv.zzaaZ().zze(zzbrqVar, zzbscVar).zzg(this.zzciX) : this;
    }

    @Override // java.lang.Comparable
    /* renamed from: zzh */
    public int compareTo(zzbsc zzbscVar) {
        if (zzbscVar.isEmpty()) {
            return 1;
        }
        if (zzbscVar instanceof zzbrr) {
            return -1;
        }
        if (!$assertionsDisabled && !zzbscVar.zzaaN()) {
            throw new AssertionError("Node is not leaf node!");
        }
        return (!(this instanceof zzbsa) || !(zzbscVar instanceof zzbru)) ? (!(this instanceof zzbru) || !(zzbscVar instanceof zzbsa)) ? zzc((zzbrz) zzbscVar) : zza((zzbsa) zzbscVar, (zzbru) this) * (-1) : zza((zzbsa) this, (zzbru) zzbscVar);
    }

    @Override // com.google.android.gms.internal.zzbsc
    public boolean zzk(zzbrq zzbrqVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbrq zzl(zzbrq zzbrqVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzl(zzbph zzbphVar, zzbsc zzbscVar) {
        zzbrq zzYS = zzbphVar.zzYS();
        if (zzYS == null) {
            return zzbscVar;
        }
        if (zzbscVar.isEmpty() && !zzYS.zzaaK()) {
            return this;
        }
        if (!$assertionsDisabled && zzbphVar.zzYS().zzaaK() && zzbphVar.size() != 1) {
            throw new AssertionError();
        }
        return zze(zzYS, zzbrv.zzaaZ().zzl(zzbphVar.zzYT(), zzbscVar));
    }

    @Override // com.google.android.gms.internal.zzbsc
    public zzbsc zzm(zzbrq zzbrqVar) {
        return zzbrqVar.zzaaK() ? this.zzciX : zzbrv.zzaaZ();
    }
}
