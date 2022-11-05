package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrj;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzbri implements zzbrj {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final int limit;
    private final zzbrk zzciE;
    private final boolean zzciF;
    private final zzbrw zzcia;

    static {
        $assertionsDisabled = !zzbri.class.desiredAssertionStatus();
    }

    public zzbri(zzbrb zzbrbVar) {
        this.zzciE = new zzbrk(zzbrbVar);
        this.zzcia = zzbrbVar.zzaaj();
        this.limit = zzbrbVar.getLimit();
        this.zzciF = !zzbrbVar.zzaal();
    }

    private zzbrx zza(zzbrx zzbrxVar, zzbrq zzbrqVar, zzbsc zzbscVar, zzbrj.zza zzaVar, zzbrg zzbrgVar) {
        if ($assertionsDisabled || zzbrxVar.zzWI().getChildCount() == this.limit) {
            zzbsb zzbsbVar = new zzbsb(zzbrqVar, zzbscVar);
            zzbsb zzabe = this.zzciF ? zzbrxVar.zzabe() : zzbrxVar.zzabf();
            boolean zza = this.zzciE.zza(zzbsbVar);
            if (!zzbrxVar.zzWI().zzk(zzbrqVar)) {
                if (zzbscVar.isEmpty() || !zza || this.zzcia.zza(zzabe, zzbsbVar, this.zzciF) < 0) {
                    return zzbrxVar;
                }
                if (zzbrgVar != null) {
                    zzbrgVar.zza(zzbqw.zzd(zzabe.zzabj(), zzabe.zzWI()));
                    zzbrgVar.zza(zzbqw.zzc(zzbrqVar, zzbscVar));
                }
                return zzbrxVar.zzh(zzbrqVar, zzbscVar).zzh(zzabe.zzabj(), zzbrv.zzaaZ());
            }
            zzbsc zzm = zzbrxVar.zzWI().zzm(zzbrqVar);
            zzbsb zza2 = zzaVar.zza(this.zzcia, zzabe, this.zzciF);
            while (zza2 != null && (zza2.zzabj().equals(zzbrqVar) || zzbrxVar.zzWI().zzk(zza2.zzabj()))) {
                zza2 = zzaVar.zza(this.zzcia, zza2, this.zzciF);
            }
            if (zza && !zzbscVar.isEmpty() && (zza2 == null ? 1 : this.zzcia.zza(zza2, zzbsbVar, this.zzciF)) >= 0) {
                if (zzbrgVar != null) {
                    zzbrgVar.zza(zzbqw.zza(zzbrqVar, zzbscVar, zzm));
                }
                return zzbrxVar.zzh(zzbrqVar, zzbscVar);
            }
            if (zzbrgVar != null) {
                zzbrgVar.zza(zzbqw.zzd(zzbrqVar, zzm));
            }
            zzbrx zzh = zzbrxVar.zzh(zzbrqVar, zzbrv.zzaaZ());
            if (!(zza2 != null && this.zzciE.zza(zza2))) {
                return zzh;
            }
            if (zzbrgVar != null) {
                zzbrgVar.zza(zzbqw.zzc(zza2.zzabj(), zza2.zzWI()));
            }
            return zzh.zzh(zza2.zzabj(), zza2.zzWI());
        }
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrq zzbrqVar, zzbsc zzbscVar, zzbph zzbphVar, zzbrj.zza zzaVar, zzbrg zzbrgVar) {
        zzbsc zzaaZ = !this.zzciE.zza(new zzbsb(zzbrqVar, zzbscVar)) ? zzbrv.zzaaZ() : zzbscVar;
        return zzbrxVar.zzWI().zzm(zzbrqVar).equals(zzaaZ) ? zzbrxVar : zzbrxVar.zzWI().getChildCount() < this.limit ? this.zzciE.zzaaz().zza(zzbrxVar, zzbrqVar, zzaaZ, zzbphVar, zzaVar, zzbrgVar) : zza(zzbrxVar, zzbrqVar, zzaaZ, zzaVar, zzbrgVar);
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrx zzbrxVar2, zzbrg zzbrgVar) {
        zzbrx zza;
        zzbsb zzaaC;
        zzbsb zzbsbVar;
        int i;
        Iterator<zzbsb> it;
        int i2;
        if (zzbrxVar2.zzWI().zzaaN() || zzbrxVar2.zzWI().isEmpty()) {
            zza = zzbrx.zza(zzbrv.zzaaZ(), this.zzcia);
        } else {
            zzbrx zzo = zzbrxVar2.zzo(zzbsg.zzabl());
            if (this.zzciF) {
                Iterator<zzbsb> zzWV = zzbrxVar2.zzWV();
                zzbsbVar = this.zzciE.zzaaC();
                zzaaC = this.zzciE.zzaaB();
                it = zzWV;
                i = -1;
            } else {
                Iterator<zzbsb> it2 = zzbrxVar2.iterator();
                zzbsb zzaaB = this.zzciE.zzaaB();
                zzaaC = this.zzciE.zzaaC();
                zzbsbVar = zzaaB;
                i = 1;
                it = it2;
            }
            int i3 = 0;
            zza = zzo;
            boolean z = false;
            while (it.hasNext()) {
                zzbsb next = it.next();
                if (!z && this.zzcia.compare(zzbsbVar, next) * i <= 0) {
                    z = true;
                }
                if (z && i3 < this.limit && this.zzcia.compare(next, zzaaC) * i <= 0) {
                    i2 = i3 + 1;
                } else {
                    zza = zza.zzh(next.zzabj(), zzbrv.zzaaZ());
                    i2 = i3;
                }
                zza = zza;
                i3 = i2;
            }
        }
        return this.zzciE.zzaaz().zza(zzbrxVar, zza, zzbrgVar);
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbsc zzbscVar) {
        return zzbrxVar;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public boolean zzaaA() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrw zzaaj() {
        return this.zzcia;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrj zzaaz() {
        return this.zzciE.zzaaz();
    }
}
