package com.google.android.gms.internal;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbvb<T> extends zzbvc<T> {
    private final zzbup<T> zzcpA;
    private final zzbuk zzcpB;
    private final zzbwg<T> zzcpC;
    private final zzbvd zzcpD;
    private zzbvc<T> zzcpk;
    private final zzbuy<T> zzcpz;

    /* loaded from: classes2.dex */
    private static class zza implements zzbvd {
        private final zzbup<?> zzcpA;
        private final zzbwg<?> zzcpE;
        private final boolean zzcpF;
        private final Class<?> zzcpG;
        private final zzbuy<?> zzcpz;

        private zza(Object obj, zzbwg<?> zzbwgVar, boolean z, Class<?> cls) {
            this.zzcpz = obj instanceof zzbuy ? (zzbuy) obj : null;
            this.zzcpA = obj instanceof zzbup ? (zzbup) obj : null;
            zzbvi.zzax((this.zzcpz == null && this.zzcpA == null) ? false : true);
            this.zzcpE = zzbwgVar;
            this.zzcpF = z;
            this.zzcpG = cls;
        }

        @Override // com.google.android.gms.internal.zzbvd
        public <T> zzbvc<T> zza(zzbuk zzbukVar, zzbwg<T> zzbwgVar) {
            if (this.zzcpE != null ? this.zzcpE.equals(zzbwgVar) || (this.zzcpF && this.zzcpE.zzadR() == zzbwgVar.zzadQ()) : this.zzcpG.isAssignableFrom(zzbwgVar.zzadQ())) {
                return new zzbvb(this.zzcpz, this.zzcpA, zzbukVar, zzbwgVar, this);
            }
            return null;
        }
    }

    private zzbvb(zzbuy<T> zzbuyVar, zzbup<T> zzbupVar, zzbuk zzbukVar, zzbwg<T> zzbwgVar, zzbvd zzbvdVar) {
        this.zzcpz = zzbuyVar;
        this.zzcpA = zzbupVar;
        this.zzcpB = zzbukVar;
        this.zzcpC = zzbwgVar;
        this.zzcpD = zzbvdVar;
    }

    public static zzbvd zza(zzbwg<?> zzbwgVar, Object obj) {
        return new zza(obj, zzbwgVar, false, null);
    }

    private zzbvc<T> zzadv() {
        zzbvc<T> zzbvcVar = this.zzcpk;
        if (zzbvcVar != null) {
            return zzbvcVar;
        }
        zzbvc<T> zza2 = this.zzcpB.zza(this.zzcpD, this.zzcpC);
        this.zzcpk = zza2;
        return zza2;
    }

    public static zzbvd zzb(zzbwg<?> zzbwgVar, Object obj) {
        return new zza(obj, zzbwgVar, zzbwgVar.zzadR() == zzbwgVar.zzadQ(), null);
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, T t) throws IOException {
        if (this.zzcpz == null) {
            zzadv().zza(zzbwjVar, t);
        } else if (t == null) {
            zzbwjVar.zzadP();
        } else {
            zzbvr.zzb(this.zzcpz.zza(t, this.zzcpC.zzadR(), this.zzcpB.zzcpi), zzbwjVar);
        }
    }

    @Override // com.google.android.gms.internal.zzbvc
    public T zzb(zzbwh zzbwhVar) throws IOException {
        if (this.zzcpA == null) {
            return zzadv().zzb(zzbwhVar);
        }
        zzbuq zzh = zzbvr.zzh(zzbwhVar);
        if (zzh.zzadn()) {
            return null;
        }
        try {
            return this.zzcpA.zzb(zzh, this.zzcpC.zzadR(), this.zzcpB.zzcph);
        } catch (zzbuu e) {
            throw e;
        } catch (Exception e2) {
            throw new zzbuu(e2);
        }
    }
}
