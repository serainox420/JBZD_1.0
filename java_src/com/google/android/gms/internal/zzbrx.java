package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzbrx implements Iterable<zzbsb> {
    private static final zzboa<zzbsb> zzcjp = new zzboa<>(Collections.emptyList(), null);
    private final zzbrw zzcia;
    private final zzbsc zzcjq;
    private zzboa<zzbsb> zzcjr;

    private zzbrx(zzbsc zzbscVar, zzbrw zzbrwVar) {
        this.zzcia = zzbrwVar;
        this.zzcjq = zzbscVar;
        this.zzcjr = null;
    }

    private zzbrx(zzbsc zzbscVar, zzbrw zzbrwVar, zzboa<zzbsb> zzboaVar) {
        this.zzcia = zzbrwVar;
        this.zzcjq = zzbscVar;
        this.zzcjr = zzboaVar;
    }

    public static zzbrx zza(zzbsc zzbscVar, zzbrw zzbrwVar) {
        return new zzbrx(zzbscVar, zzbrwVar);
    }

    private void zzabd() {
        if (this.zzcjr == null) {
            if (this.zzcia.equals(zzbry.zzabg())) {
                this.zzcjr = zzcjp;
                return;
            }
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (zzbsb zzbsbVar : this.zzcjq) {
                z = z || this.zzcia.zzm(zzbsbVar.zzWI());
                arrayList.add(new zzbsb(zzbsbVar.zzabj(), zzbsbVar.zzWI()));
            }
            if (z) {
                this.zzcjr = new zzboa<>(arrayList, this.zzcia);
            } else {
                this.zzcjr = zzcjp;
            }
        }
    }

    public static zzbrx zzn(zzbsc zzbscVar) {
        return new zzbrx(zzbscVar, zzbsf.zzabk());
    }

    @Override // java.lang.Iterable
    public Iterator<zzbsb> iterator() {
        zzabd();
        return this.zzcjr == zzcjp ? this.zzcjq.iterator() : this.zzcjr.iterator();
    }

    public zzbsc zzWI() {
        return this.zzcjq;
    }

    public Iterator<zzbsb> zzWV() {
        zzabd();
        return this.zzcjr == zzcjp ? this.zzcjq.zzWV() : this.zzcjr.zzWV();
    }

    public zzbrq zza(zzbrq zzbrqVar, zzbsc zzbscVar, zzbrw zzbrwVar) {
        if (this.zzcia.equals(zzbry.zzabg()) || this.zzcia.equals(zzbrwVar)) {
            zzabd();
            if (this.zzcjr == zzcjp) {
                return this.zzcjq.zzl(zzbrqVar);
            }
            zzbsb zzan = this.zzcjr.zzan(new zzbsb(zzbrqVar, zzbscVar));
            if (zzan == null) {
                return null;
            }
            return zzan.zzabj();
        }
        throw new IllegalArgumentException("Index not available in IndexedNode!");
    }

    public zzbsb zzabe() {
        if (!(this.zzcjq instanceof zzbrr)) {
            return null;
        }
        zzabd();
        if (this.zzcjr != zzcjp) {
            return this.zzcjr.zzWX();
        }
        zzbrq zzaaP = ((zzbrr) this.zzcjq).zzaaP();
        return new zzbsb(zzaaP, this.zzcjq.zzm(zzaaP));
    }

    public zzbsb zzabf() {
        if (!(this.zzcjq instanceof zzbrr)) {
            return null;
        }
        zzabd();
        if (this.zzcjr != zzcjp) {
            return this.zzcjr.zzWY();
        }
        zzbrq zzaaQ = ((zzbrr) this.zzcjq).zzaaQ();
        return new zzbsb(zzaaQ, this.zzcjq.zzm(zzaaQ));
    }

    public boolean zzb(zzbrw zzbrwVar) {
        return this.zzcia.equals(zzbrwVar);
    }

    public zzbrx zzh(zzbrq zzbrqVar, zzbsc zzbscVar) {
        zzbsc zze = this.zzcjq.zze(zzbrqVar, zzbscVar);
        if (this.zzcjr != zzcjp || this.zzcia.zzm(zzbscVar)) {
            if (this.zzcjr == null || this.zzcjr == zzcjp) {
                return new zzbrx(zze, this.zzcia, null);
            }
            zzboa<zzbsb> zzal = this.zzcjr.zzal(new zzbsb(zzbrqVar, this.zzcjq.zzm(zzbrqVar)));
            if (!zzbscVar.isEmpty()) {
                zzal = zzal.zzam(new zzbsb(zzbrqVar, zzbscVar));
            }
            return new zzbrx(zze, this.zzcia, zzal);
        }
        return new zzbrx(zze, this.zzcia, zzcjp);
    }

    public zzbrx zzo(zzbsc zzbscVar) {
        return new zzbrx(this.zzcjq.zzg(zzbscVar), this.zzcia, this.zzcjr);
    }
}
