package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqe;
import com.google.android.gms.internal.zzbrf;
import com.google.firebase.database.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbrd {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbrc zzchZ;
    private final zzbrf zzciq;
    private zzbre zzcir;
    private final List<zzbpc> zzcis;
    private final zzbqz zzcit;

    /* loaded from: classes2.dex */
    public static class zza {
        public final List<zzbqx> zzciu;
        public final List<zzbqw> zzciv;

        public zza(List<zzbqx> list, List<zzbqw> list2) {
            this.zzciu = list;
            this.zzciv = list2;
        }
    }

    static {
        $assertionsDisabled = !zzbrd.class.desiredAssertionStatus();
    }

    public zzbrd(zzbrc zzbrcVar, zzbre zzbreVar) {
        this.zzchZ = zzbrcVar;
        zzbrh zzbrhVar = new zzbrh(zzbrcVar.zzaaj());
        zzbrj zzaap = zzbrcVar.zzaaq().zzaap();
        this.zzciq = new zzbrf(zzaap);
        zzbqu zzaaw = zzbreVar.zzaaw();
        zzbqu zzaau = zzbreVar.zzaau();
        zzbrx zza2 = zzbrx.zza(zzbrv.zzaaZ(), zzbrcVar.zzaaj());
        zzbrx zza3 = zzbrhVar.zza(zza2, zzaaw.zzZS(), null);
        zzbrx zza4 = zzaap.zza(zza2, zzaau.zzZS(), null);
        this.zzcir = new zzbre(new zzbqu(zza4, zzaau.zzZQ(), zzaap.zzaaA()), new zzbqu(zza3, zzaaw.zzZQ(), zzbrhVar.zzaaA()));
        this.zzcis = new ArrayList();
        this.zzcit = new zzbqz(zzbrcVar);
    }

    private List<zzbqx> zza(List<zzbqw> list, zzbrx zzbrxVar, zzbpc zzbpcVar) {
        return this.zzcit.zza(list, zzbrxVar, zzbpcVar == null ? this.zzcis : Arrays.asList(zzbpcVar));
    }

    public boolean isEmpty() {
        return this.zzcis.isEmpty();
    }

    public List<zzbqy> zza(zzbpc zzbpcVar, c cVar) {
        ArrayList emptyList;
        if (cVar != null) {
            ArrayList arrayList = new ArrayList();
            if (!$assertionsDisabled && zzbpcVar != null) {
                throw new AssertionError("A cancel should cancel all event registrations");
            }
            zzbph zzWM = this.zzchZ.zzWM();
            for (zzbpc zzbpcVar2 : this.zzcis) {
                arrayList.add(new zzbqv(zzbpcVar2, cVar, zzWM));
            }
            emptyList = arrayList;
        } else {
            emptyList = Collections.emptyList();
        }
        if (zzbpcVar != null) {
            int i = 0;
            int i2 = -1;
            while (true) {
                if (i >= this.zzcis.size()) {
                    i = i2;
                    break;
                }
                zzbpc zzbpcVar3 = this.zzcis.get(i);
                if (zzbpcVar3.zzc(zzbpcVar)) {
                    if (zzbpcVar3.zzYL()) {
                        break;
                    }
                    i2 = i;
                }
                i++;
            }
            if (i != -1) {
                this.zzcis.remove(i);
                this.zzcis.get(i).zzYK();
            }
        } else {
            for (zzbpc zzbpcVar4 : this.zzcis) {
                zzbpcVar4.zzYK();
            }
            this.zzcis.clear();
        }
        return emptyList;
    }

    public zzbrc zzaar() {
        return this.zzchZ;
    }

    public zzbsc zzaas() {
        return this.zzcir.zzaaw().zzWI();
    }

    public zzbsc zzaat() {
        return this.zzcir.zzaau().zzWI();
    }

    public zza zzb(zzbqe zzbqeVar, zzbpz zzbpzVar, zzbsc zzbscVar) {
        if (zzbqeVar.zzZz() == zzbqe.zza.Merge && zzbqeVar.zzZy().zzZD() != null) {
            if (!$assertionsDisabled && this.zzcir.zzaax() == null) {
                throw new AssertionError("We should always have a full cache before handling merges");
            }
            if (!$assertionsDisabled && this.zzcir.zzaav() == null) {
                throw new AssertionError("Missing event cache, even though we have a server cache");
            }
        }
        zzbre zzbreVar = this.zzcir;
        zzbrf.zza zza2 = this.zzciq.zza(zzbreVar, zzbqeVar, zzbpzVar, zzbscVar);
        if ($assertionsDisabled || zza2.zzcir.zzaaw().zzZQ() || !zzbreVar.zzaaw().zzZQ()) {
            this.zzcir = zza2.zzcir;
            return new zza(zza(zza2.zzciv, zza2.zzcir.zzaau().zzZS(), null), zza2.zzciv);
        }
        throw new AssertionError("Once a server snap is complete, it should never go back");
    }

    public void zzb(zzbpc zzbpcVar) {
        this.zzcis.add(zzbpcVar);
    }

    public List<zzbqx> zzl(zzbpc zzbpcVar) {
        zzbqu zzaau = this.zzcir.zzaau();
        ArrayList arrayList = new ArrayList();
        for (zzbsb zzbsbVar : zzaau.zzWI()) {
            arrayList.add(zzbqw.zzc(zzbsbVar.zzabj(), zzbsbVar.zzWI()));
        }
        if (zzaau.zzZQ()) {
            arrayList.add(zzbqw.zza(zzaau.zzZS()));
        }
        return zza(arrayList, zzaau.zzZS(), zzbpcVar);
    }

    public zzbsc zzs(zzbph zzbphVar) {
        zzbsc zzaax = this.zzcir.zzaax();
        if (zzaax == null || (!this.zzchZ.zzaan() && (zzbphVar.isEmpty() || zzaax.zzm(zzbphVar.zzYS()).isEmpty()))) {
            return null;
        }
        return zzaax.zzO(zzbphVar);
    }
}
