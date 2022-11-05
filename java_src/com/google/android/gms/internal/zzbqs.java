package com.google.android.gms.internal;

import java.util.Map;
/* loaded from: classes2.dex */
public class zzbqs<T> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private zzbrq zzchD;
    private zzbqs<T> zzchE;
    private zzbqt<T> zzchF;

    /* loaded from: classes2.dex */
    public interface zza<T> {
        boolean zze(zzbqs<T> zzbqsVar);
    }

    /* loaded from: classes2.dex */
    public interface zzb<T> {
        void zzd(zzbqs<T> zzbqsVar);
    }

    static {
        $assertionsDisabled = !zzbqs.class.desiredAssertionStatus();
    }

    public zzbqs() {
        this(null, null, new zzbqt());
    }

    public zzbqs(zzbrq zzbrqVar, zzbqs<T> zzbqsVar, zzbqt<T> zzbqtVar) {
        this.zzchD = zzbrqVar;
        this.zzchE = zzbqsVar;
        this.zzchF = zzbqtVar;
    }

    private void zzZP() {
        if (this.zzchE != null) {
            this.zzchE.zza(this.zzchD, this);
        }
    }

    private void zza(zzbrq zzbrqVar, zzbqs<T> zzbqsVar) {
        boolean isEmpty = zzbqsVar.isEmpty();
        boolean containsKey = this.zzchF.zzcfE.containsKey(zzbrqVar);
        if (isEmpty && containsKey) {
            this.zzchF.zzcfE.remove(zzbrqVar);
            zzZP();
        } else if (isEmpty || containsKey) {
        } else {
            this.zzchF.zzcfE.put(zzbrqVar, zzbqsVar.zzchF);
            zzZP();
        }
    }

    public T getValue() {
        return this.zzchF.value;
    }

    public boolean hasChildren() {
        return !this.zzchF.zzcfE.isEmpty();
    }

    public boolean isEmpty() {
        return this.zzchF.value == null && this.zzchF.zzcfE.isEmpty();
    }

    public void setValue(T t) {
        this.zzchF.value = t;
        zzZP();
    }

    public String toString() {
        return toString("");
    }

    String toString(String str) {
        String asString = this.zzchD == null ? "<anon>" : this.zzchD.asString();
        String valueOf = String.valueOf(this.zzchF.toString(String.valueOf(str).concat("\t")));
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(asString).length() + String.valueOf(valueOf).length()).append(str).append(asString).append("\n").append(valueOf).toString();
    }

    public zzbqs<T> zzL(zzbph zzbphVar) {
        zzbrq zzYS = zzbphVar.zzYS();
        while (zzYS != null) {
            zzbqs<T> zzbqsVar = new zzbqs<>(zzYS, this, this.zzchF.zzcfE.containsKey(zzYS) ? this.zzchF.zzcfE.get(zzYS) : new zzbqt<>());
            zzbphVar = zzbphVar.zzYT();
            zzYS = zzbphVar.zzYS();
            this = zzbqsVar;
        }
        return this;
    }

    public zzbph zzWM() {
        if (this.zzchE == null) {
            return this.zzchD != null ? new zzbph(this.zzchD) : zzbph.zzYP();
        } else if (!$assertionsDisabled && this.zzchD == null) {
            throw new AssertionError();
        } else {
            return this.zzchE.zzWM().zza(this.zzchD);
        }
    }

    public void zza(zzb<T> zzbVar) {
        zza(zzbVar, false, false);
    }

    public void zza(final zzb<T> zzbVar, boolean z, final boolean z2) {
        if (z && !z2) {
            zzbVar.zzd(this);
        }
        zzb(new zzb<T>(this) { // from class: com.google.android.gms.internal.zzbqs.1
            @Override // com.google.android.gms.internal.zzbqs.zzb
            public void zzd(zzbqs<T> zzbqsVar) {
                zzbqsVar.zza(zzbVar, true, z2);
            }
        });
        if (!z || !z2) {
            return;
        }
        zzbVar.zzd(this);
    }

    public boolean zza(zza<T> zzaVar) {
        return zza((zza) zzaVar, false);
    }

    public boolean zza(zza<T> zzaVar, boolean z) {
        if (!z) {
            this = this.zzchE;
        }
        while (this != null) {
            zzaVar.zze(this);
            this = this.zzchE;
        }
        return false;
    }

    public void zzb(zzb<T> zzbVar) {
        Object[] array = this.zzchF.zzcfE.entrySet().toArray();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < array.length) {
                Map.Entry entry = (Map.Entry) array[i2];
                zzbVar.zzd(new zzbqs<>((zzbrq) entry.getKey(), this, (zzbqt) entry.getValue()));
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
