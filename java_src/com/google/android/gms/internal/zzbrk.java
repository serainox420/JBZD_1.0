package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrj;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzbrk implements zzbrj {
    private final zzbrh zzciG;
    private final zzbsb zzciH;
    private final zzbsb zzciI;
    private final zzbrw zzcia;

    public zzbrk(zzbrb zzbrbVar) {
        this.zzciG = new zzbrh(zzbrbVar.zzaaj());
        this.zzcia = zzbrbVar.zzaaj();
        this.zzciH = zzd(zzbrbVar);
        this.zzciI = zze(zzbrbVar);
    }

    private static zzbsb zzd(zzbrb zzbrbVar) {
        if (zzbrbVar.zzaab()) {
            return zzbrbVar.zzaaj().zzg(zzbrbVar.zzaad(), zzbrbVar.zzaac());
        }
        return zzbrbVar.zzaaj().zzaba();
    }

    private static zzbsb zze(zzbrb zzbrbVar) {
        if (zzbrbVar.zzaae()) {
            return zzbrbVar.zzaaj().zzg(zzbrbVar.zzaag(), zzbrbVar.zzaaf());
        }
        return zzbrbVar.zzaaj().zzabb();
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrq zzbrqVar, zzbsc zzbscVar, zzbph zzbphVar, zzbrj.zza zzaVar, zzbrg zzbrgVar) {
        return this.zzciG.zza(zzbrxVar, zzbrqVar, !zza(new zzbsb(zzbrqVar, zzbscVar)) ? zzbrv.zzaaZ() : zzbscVar, zzbphVar, zzaVar, zzbrgVar);
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbrx zzbrxVar2, zzbrg zzbrgVar) {
        zzbrx zzbrxVar3;
        if (!zzbrxVar2.zzWI().zzaaN()) {
            zzbrx zzo = zzbrxVar2.zzo(zzbsg.zzabl());
            Iterator<zzbsb> it = zzbrxVar2.iterator();
            while (true) {
                zzbrxVar3 = zzo;
                if (!it.hasNext()) {
                    break;
                }
                zzbsb next = it.next();
                zzo = !zza(next) ? zzbrxVar3.zzh(next.zzabj(), zzbrv.zzaaZ()) : zzbrxVar3;
            }
        } else {
            zzbrxVar3 = zzbrx.zza(zzbrv.zzaaZ(), this.zzcia);
        }
        return this.zzciG.zza(zzbrxVar, zzbrxVar3, zzbrgVar);
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrx zza(zzbrx zzbrxVar, zzbsc zzbscVar) {
        return zzbrxVar;
    }

    public boolean zza(zzbsb zzbsbVar) {
        return this.zzcia.compare(zzaaB(), zzbsbVar) <= 0 && this.zzcia.compare(zzbsbVar, zzaaC()) <= 0;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public boolean zzaaA() {
        return true;
    }

    public zzbsb zzaaB() {
        return this.zzciH;
    }

    public zzbsb zzaaC() {
        return this.zzciI;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrw zzaaj() {
        return this.zzcia;
    }

    @Override // com.google.android.gms.internal.zzbrj
    public zzbrj zzaaz() {
        return this.zzciG;
    }
}
