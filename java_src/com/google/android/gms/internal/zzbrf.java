package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbrj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrf {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static zzbrj.zza zzciz;
    private final zzbrj zzciy;

    /* loaded from: classes2.dex */
    public static class zza {
        public final zzbre zzcir;
        public final List<zzbqw> zzciv;

        public zza(zzbre zzbreVar, List<zzbqw> list) {
            this.zzcir = zzbreVar;
            this.zzciv = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb implements zzbrj.zza {
        private final zzbpz zzciB;
        private final zzbsc zzciC;
        private final zzbre zzcir;

        public zzb(zzbpz zzbpzVar, zzbre zzbreVar, zzbsc zzbscVar) {
            this.zzciB = zzbpzVar;
            this.zzcir = zzbreVar;
            this.zzciC = zzbscVar;
        }

        @Override // com.google.android.gms.internal.zzbrj.zza
        public zzbsb zza(zzbrw zzbrwVar, zzbsb zzbsbVar, boolean z) {
            return this.zzciB.zza(this.zzciC != null ? this.zzciC : this.zzcir.zzaax(), zzbsbVar, z, zzbrwVar);
        }

        @Override // com.google.android.gms.internal.zzbrj.zza
        public zzbsc zzh(zzbrq zzbrqVar) {
            zzbqu zzaau = this.zzcir.zzaau();
            if (zzaau.zzf(zzbrqVar)) {
                return zzaau.zzWI().zzm(zzbrqVar);
            }
            return this.zzciB.zza(zzbrqVar, this.zzciC != null ? new zzbqu(zzbrx.zza(this.zzciC, zzbry.zzabg()), true, false) : this.zzcir.zzaaw());
        }
    }

    static {
        $assertionsDisabled = !zzbrf.class.desiredAssertionStatus();
        zzciz = new zzbrj.zza() { // from class: com.google.android.gms.internal.zzbrf.1
            @Override // com.google.android.gms.internal.zzbrj.zza
            public zzbsb zza(zzbrw zzbrwVar, zzbsb zzbsbVar, boolean z) {
                return null;
            }

            @Override // com.google.android.gms.internal.zzbrj.zza
            public zzbsc zzh(zzbrq zzbrqVar) {
                return null;
            }
        };
    }

    public zzbrf(zzbrj zzbrjVar) {
        this.zzciy = zzbrjVar;
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzboy zzboyVar, zzbpz zzbpzVar, zzbsc zzbscVar, zzbrg zzbrgVar) {
        if ($assertionsDisabled || zzboyVar.zzYp() == null) {
            Iterator<Map.Entry<zzbph, zzbsc>> it = zzboyVar.iterator();
            zzbre zzbreVar2 = zzbreVar;
            while (it.hasNext()) {
                Map.Entry<zzbph, zzbsc> next = it.next();
                zzbph zzh = zzbphVar.zzh(next.getKey());
                if (zza(zzbreVar, zzh.zzYS())) {
                    zzbreVar2 = zza(zzbreVar2, zzh, next.getValue(), zzbpzVar, zzbscVar, zzbrgVar);
                }
            }
            Iterator<Map.Entry<zzbph, zzbsc>> it2 = zzboyVar.iterator();
            while (it2.hasNext()) {
                Map.Entry<zzbph, zzbsc> next2 = it2.next();
                zzbph zzh2 = zzbphVar.zzh(next2.getKey());
                if (!zza(zzbreVar, zzh2.zzYS())) {
                    zzbreVar2 = zza(zzbreVar2, zzh2, next2.getValue(), zzbpzVar, zzbscVar, zzbrgVar);
                }
            }
            return zzbreVar2;
        }
        throw new AssertionError("Can't have a merge that is an overwrite");
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzboy zzboyVar, zzbpz zzbpzVar, zzbsc zzbscVar, boolean z, zzbrg zzbrgVar) {
        if (!zzbreVar.zzaaw().zzWI().isEmpty() || zzbreVar.zzaaw().zzZQ()) {
            if (!$assertionsDisabled && zzboyVar.zzYp() != null) {
                throw new AssertionError("Can't have a merge that is an overwrite");
            }
            if (!zzbphVar.isEmpty()) {
                zzboyVar = zzboy.zzYo().zzb(zzbphVar, zzboyVar);
            }
            zzbsc zzWI = zzbreVar.zzaaw().zzWI();
            Map<zzbrq, zzboy> zzYr = zzboyVar.zzYr();
            zzbre zzbreVar2 = zzbreVar;
            for (Map.Entry<zzbrq, zzboy> entry : zzYr.entrySet()) {
                zzbrq key = entry.getKey();
                if (zzWI.zzk(key)) {
                    zzbreVar2 = zza(zzbreVar2, new zzbph(key), entry.getValue().zzb(zzWI.zzm(key)), zzbpzVar, zzbscVar, z, zzbrgVar);
                }
            }
            for (Map.Entry<zzbrq, zzboy> entry2 : zzYr.entrySet()) {
                zzbrq key2 = entry2.getKey();
                boolean z2 = !zzbreVar.zzaaw().zzf(key2) && entry2.getValue().zzYp() == null;
                if (!zzWI.zzk(key2) && !z2) {
                    zzbreVar2 = zza(zzbreVar2, new zzbph(key2), entry2.getValue().zzb(zzWI.zzm(key2)), zzbpzVar, zzbscVar, z, zzbrgVar);
                }
            }
            return zzbreVar2;
        }
        return zzbreVar;
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzbpz zzbpzVar, zzbrj.zza zzaVar, zzbrg zzbrgVar) {
        zzbsc zza2;
        zzbrx zza3;
        zzbsc zzc;
        zzbqu zzaau = zzbreVar.zzaau();
        if (zzbpzVar.zzv(zzbphVar) != null) {
            return zzbreVar;
        }
        if (!zzbphVar.isEmpty()) {
            zzbrq zzYS = zzbphVar.zzYS();
            if (!zzYS.zzaaK()) {
                zzbph zzYT = zzbphVar.zzYT();
                if (zzaau.zzf(zzYS)) {
                    zzbsc zza4 = zzbpzVar.zza(zzbphVar, zzaau.zzWI(), zzbreVar.zzaaw().zzWI());
                    zza2 = zza4 != null ? zzaau.zzWI().zzm(zzYS).zzl(zzYT, zza4) : zzaau.zzWI().zzm(zzYS);
                } else {
                    zza2 = zzbpzVar.zza(zzYS, zzbreVar.zzaaw());
                }
                zza3 = zza2 != null ? this.zzciy.zza(zzaau.zzZS(), zzYS, zza2, zzYT, zzaVar, zzbrgVar) : zzaau.zzZS();
            } else if (!$assertionsDisabled && zzbphVar.size() != 1) {
                throw new AssertionError("Can't have a priority with additional path components");
            } else {
                zzbsc zza5 = zzbpzVar.zza(zzbphVar, zzaau.zzWI(), zzbreVar.zzaaw().zzWI());
                zza3 = zza5 != null ? this.zzciy.zza(zzaau.zzZS(), zza5) : zzaau.zzZS();
            }
        } else if (!$assertionsDisabled && !zzbreVar.zzaaw().zzZQ()) {
            throw new AssertionError("If change path is empty, we must have complete server data");
        } else {
            if (zzbreVar.zzaaw().zzZR()) {
                zzbsc zzaax = zzbreVar.zzaax();
                if (!(zzaax instanceof zzbrr)) {
                    zzaax = zzbrv.zzaaZ();
                }
                zzc = zzbpzVar.zzd(zzaax);
            } else {
                zzc = zzbpzVar.zzc(zzbreVar.zzaax());
            }
            zza3 = this.zzciy.zza(zzbreVar.zzaau().zzZS(), zzbrx.zza(zzc, this.zzciy.zzaaj()), zzbrgVar);
        }
        return zzbreVar.zza(zza3, zzaau.zzZQ() || zzbphVar.isEmpty(), this.zzciy.zzaaA());
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzbqq<Boolean> zzbqqVar, zzbpz zzbpzVar, zzbsc zzbscVar, zzbrg zzbrgVar) {
        if (zzbpzVar.zzv(zzbphVar) != null) {
            return zzbreVar;
        }
        boolean zzZR = zzbreVar.zzaaw().zzZR();
        zzbqu zzaaw = zzbreVar.zzaaw();
        if (zzbqqVar.getValue() == null) {
            zzboy zzYo = zzboy.zzYo();
            Iterator<Map.Entry<zzbph, Boolean>> it = zzbqqVar.iterator();
            while (it.hasNext()) {
                zzbph key = it.next().getKey();
                zzbph zzh = zzbphVar.zzh(key);
                if (zzaaw.zzM(zzh)) {
                    zzYo = zzYo.zze(key, zzaaw.zzWI().zzO(zzh));
                }
            }
            return zza(zzbreVar, zzbphVar, zzYo, zzbpzVar, zzbscVar, zzZR, zzbrgVar);
        } else if ((zzbphVar.isEmpty() && zzaaw.zzZQ()) || zzaaw.zzM(zzbphVar)) {
            return zza(zzbreVar, zzbphVar, zzaaw.zzWI().zzO(zzbphVar), zzbpzVar, zzbscVar, zzZR, zzbrgVar);
        } else {
            if (!zzbphVar.isEmpty()) {
                return zzbreVar;
            }
            zzboy zzYo2 = zzboy.zzYo();
            for (zzbsb zzbsbVar : zzaaw.zzWI()) {
                zzYo2 = zzYo2.zza(zzbsbVar.zzabj(), zzbsbVar.zzWI());
            }
            return zza(zzbreVar, zzbphVar, zzYo2, zzbpzVar, zzbscVar, zzZR, zzbrgVar);
        }
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzbsc zzbscVar, zzbpz zzbpzVar, zzbsc zzbscVar2, zzbrg zzbrgVar) {
        zzbsc zzh;
        zzbqu zzaau = zzbreVar.zzaau();
        zzb zzbVar = new zzb(zzbpzVar, zzbreVar, zzbscVar2);
        if (zzbphVar.isEmpty()) {
            return zzbreVar.zza(this.zzciy.zza(zzbreVar.zzaau().zzZS(), zzbrx.zza(zzbscVar, this.zzciy.zzaaj()), zzbrgVar), true, this.zzciy.zzaaA());
        }
        zzbrq zzYS = zzbphVar.zzYS();
        if (zzYS.zzaaK()) {
            return zzbreVar.zza(this.zzciy.zza(zzbreVar.zzaau().zzZS(), zzbscVar), zzaau.zzZQ(), zzaau.zzZR());
        }
        zzbph zzYT = zzbphVar.zzYT();
        zzbsc zzm = zzaau.zzWI().zzm(zzYS);
        if (zzYT.isEmpty()) {
            zzh = zzbscVar;
        } else {
            zzh = zzbVar.zzh(zzYS);
            if (zzh == null) {
                zzh = zzbrv.zzaaZ();
            } else if (!zzYT.zzYV().zzaaK() || !zzh.zzO(zzYT.zzYU()).isEmpty()) {
                zzh = zzh.zzl(zzYT, zzbscVar);
            }
        }
        return !zzm.equals(zzh) ? zzbreVar.zza(this.zzciy.zza(zzaau.zzZS(), zzYS, zzh, zzYT, zzbVar, zzbrgVar), zzaau.zzZQ(), this.zzciy.zzaaA()) : zzbreVar;
    }

    private zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzbsc zzbscVar, zzbpz zzbpzVar, zzbsc zzbscVar2, boolean z, zzbrg zzbrgVar) {
        zzbrx zza2;
        zzbqu zzaaw = zzbreVar.zzaaw();
        zzbrj zzaaz = z ? this.zzciy : this.zzciy.zzaaz();
        if (zzbphVar.isEmpty()) {
            zza2 = zzaaz.zza(zzaaw.zzZS(), zzbrx.zza(zzbscVar, zzaaz.zzaaj()), null);
        } else if (!zzaaz.zzaaA() || zzaaw.zzZR()) {
            zzbrq zzYS = zzbphVar.zzYS();
            if (!zzaaw.zzM(zzbphVar) && zzbphVar.size() > 1) {
                return zzbreVar;
            }
            zzbph zzYT = zzbphVar.zzYT();
            zzbsc zzl = zzaaw.zzWI().zzm(zzYS).zzl(zzYT, zzbscVar);
            zza2 = zzYS.zzaaK() ? zzaaz.zza(zzaaw.zzZS(), zzl) : zzaaz.zza(zzaaw.zzZS(), zzYS, zzl, zzYT, zzciz, null);
        } else if (!$assertionsDisabled && zzbphVar.isEmpty()) {
            throw new AssertionError("An empty path should have been caught in the other branch");
        } else {
            zzbrq zzYS2 = zzbphVar.zzYS();
            zza2 = zzaaz.zza(zzaaw.zzZS(), zzaaw.zzZS().zzh(zzYS2, zzaaw.zzWI().zzm(zzYS2).zzl(zzbphVar.zzYT(), zzbscVar)), null);
        }
        zzbre zzb2 = zzbreVar.zzb(zza2, zzaaw.zzZQ() || zzbphVar.isEmpty(), zzaaz.zzaaA());
        return zza(zzb2, zzbphVar, zzbpzVar, new zzb(zzbpzVar, zzb2, zzbscVar2), zzbrgVar);
    }

    private void zza(zzbre zzbreVar, zzbre zzbreVar2, List<zzbqw> list) {
        zzbqu zzaau = zzbreVar2.zzaau();
        if (zzaau.zzZQ()) {
            boolean z = zzaau.zzWI().zzaaN() || zzaau.zzWI().isEmpty();
            if (list.isEmpty() && zzbreVar.zzaau().zzZQ() && ((!z || zzaau.zzWI().equals(zzbreVar.zzaav())) && zzaau.zzWI().zzaaO().equals(zzbreVar.zzaav().zzaaO()))) {
                return;
            }
            list.add(zzbqw.zza(zzaau.zzZS()));
        }
    }

    private static boolean zza(zzbre zzbreVar, zzbrq zzbrqVar) {
        return zzbreVar.zzaau().zzf(zzbrqVar);
    }

    private zzbre zzb(zzbre zzbreVar, zzbph zzbphVar, zzbpz zzbpzVar, zzbsc zzbscVar, zzbrg zzbrgVar) {
        zzbqu zzaaw = zzbreVar.zzaaw();
        return zza(zzbreVar.zzb(zzaaw.zzZS(), zzaaw.zzZQ() || zzbphVar.isEmpty(), zzaaw.zzZR()), zzbphVar, zzbpzVar, zzciz, zzbrgVar);
    }

    public zzbre zza(zzbre zzbreVar, zzbph zzbphVar, zzbpz zzbpzVar, zzbsc zzbscVar, zzbrg zzbrgVar) {
        if (zzbpzVar.zzv(zzbphVar) != null) {
            return zzbreVar;
        }
        zzb zzbVar = new zzb(zzbpzVar, zzbreVar, zzbscVar);
        zzbrx zzZS = zzbreVar.zzaau().zzZS();
        if (zzbphVar.isEmpty() || zzbphVar.zzYS().zzaaK()) {
            zzZS = this.zzciy.zza(zzZS, zzbrx.zza(zzbreVar.zzaaw().zzZQ() ? zzbpzVar.zzc(zzbreVar.zzaax()) : zzbpzVar.zzd(zzbreVar.zzaaw().zzWI()), this.zzciy.zzaaj()), zzbrgVar);
        } else {
            zzbrq zzYS = zzbphVar.zzYS();
            zzbsc zza2 = zzbpzVar.zza(zzYS, zzbreVar.zzaaw());
            if (zza2 == null && zzbreVar.zzaaw().zzf(zzYS)) {
                zza2 = zzZS.zzWI().zzm(zzYS);
            }
            if (zza2 != null) {
                zzZS = this.zzciy.zza(zzZS, zzYS, zza2, zzbphVar.zzYT(), zzbVar, zzbrgVar);
            } else if (zza2 == null && zzbreVar.zzaau().zzWI().zzk(zzYS)) {
                zzZS = this.zzciy.zza(zzZS, zzYS, zzbrv.zzaaZ(), zzbphVar.zzYT(), zzbVar, zzbrgVar);
            }
            if (zzZS.zzWI().isEmpty() && zzbreVar.zzaaw().zzZQ()) {
                zzbsc zzc = zzbpzVar.zzc(zzbreVar.zzaax());
                if (zzc.zzaaN()) {
                    zzZS = this.zzciy.zza(zzZS, zzbrx.zza(zzc, this.zzciy.zzaaj()), zzbrgVar);
                }
            }
        }
        return zzbreVar.zza(zzZS, zzbreVar.zzaaw().zzZQ() || zzbpzVar.zzv(zzbph.zzYP()) != null, this.zzciy.zzaaA());
    }

    public zza zza(zzbre zzbreVar, zzbqe zzbqeVar, zzbpz zzbpzVar, zzbsc zzbscVar) {
        zzbre zzb2;
        zzbrg zzbrgVar = new zzbrg();
        switch (zzbqeVar.zzZz()) {
            case Overwrite:
                zzbqg zzbqgVar = (zzbqg) zzbqeVar;
                if (zzbqgVar.zzZy().zzZA()) {
                    zzb2 = zza(zzbreVar, zzbqgVar.zzWM(), zzbqgVar.zzZE(), zzbpzVar, zzbscVar, zzbrgVar);
                    break;
                } else if (!$assertionsDisabled && !zzbqgVar.zzZy().zzZB()) {
                    throw new AssertionError();
                } else {
                    zzb2 = zza(zzbreVar, zzbqgVar.zzWM(), zzbqgVar.zzZE(), zzbpzVar, zzbscVar, zzbqgVar.zzZy().zzZC() || (zzbreVar.zzaaw().zzZR() && !zzbqgVar.zzWM().isEmpty()), zzbrgVar);
                    break;
                }
            case Merge:
                zzbqd zzbqdVar = (zzbqd) zzbqeVar;
                if (zzbqdVar.zzZy().zzZA()) {
                    zzb2 = zza(zzbreVar, zzbqdVar.zzWM(), zzbqdVar.zzZx(), zzbpzVar, zzbscVar, zzbrgVar);
                    break;
                } else if (!$assertionsDisabled && !zzbqdVar.zzZy().zzZB()) {
                    throw new AssertionError();
                } else {
                    zzb2 = zza(zzbreVar, zzbqdVar.zzWM(), zzbqdVar.zzZx(), zzbpzVar, zzbscVar, zzbqdVar.zzZy().zzZC() || zzbreVar.zzaaw().zzZR(), zzbrgVar);
                    break;
                }
                break;
            case AckUserWrite:
                zzbqb zzbqbVar = (zzbqb) zzbqeVar;
                if (zzbqbVar.zzZw()) {
                    zzb2 = zza(zzbreVar, zzbqbVar.zzWM(), zzbpzVar, zzbscVar, zzbrgVar);
                    break;
                } else {
                    zzb2 = zza(zzbreVar, zzbqbVar.zzWM(), zzbqbVar.zzZv(), zzbpzVar, zzbscVar, zzbrgVar);
                    break;
                }
            case ListenComplete:
                zzb2 = zzb(zzbreVar, zzbqeVar.zzWM(), zzbpzVar, zzbscVar, zzbrgVar);
                break;
            default:
                String valueOf = String.valueOf(zzbqeVar.zzZz());
                throw new AssertionError(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Unknown operation: ").append(valueOf).toString());
        }
        ArrayList arrayList = new ArrayList(zzbrgVar.zzaay());
        zza(zzbreVar, zzb2, arrayList);
        return new zza(zzb2, arrayList);
    }
}
