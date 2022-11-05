package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbsh {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbph zzcjH;
    private final zzbph zzcjI;
    private final zzbsc zzcjJ;

    static {
        $assertionsDisabled = !zzbsh.class.desiredAssertionStatus();
    }

    public zzbsh(zzbor zzborVar) {
        zzbph zzbphVar = null;
        List<String> zzXW = zzborVar.zzXW();
        this.zzcjH = zzXW != null ? new zzbph(zzXW) : null;
        List<String> zzXX = zzborVar.zzXX();
        this.zzcjI = zzXX != null ? new zzbph(zzXX) : zzbphVar;
        this.zzcjJ = zzbsd.zzat(zzborVar.zzXY());
    }

    private zzbsc zzb(zzbph zzbphVar, zzbsc zzbscVar, zzbsc zzbscVar2) {
        boolean z = true;
        int compareTo = this.zzcjH == null ? 1 : zzbphVar.compareTo(this.zzcjH);
        int compareTo2 = this.zzcjI == null ? -1 : zzbphVar.compareTo(this.zzcjI);
        boolean z2 = this.zzcjH != null && zzbphVar.zzi(this.zzcjH);
        if (this.zzcjI == null || !zzbphVar.zzi(this.zzcjI)) {
            z = false;
        }
        if (compareTo <= 0 || compareTo2 >= 0 || z) {
            if (compareTo > 0 && z && zzbscVar2.zzaaN()) {
                return zzbscVar2;
            }
            if (compareTo > 0 && compareTo2 == 0) {
                if (!$assertionsDisabled && !z) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && zzbscVar2.zzaaN()) {
                    throw new AssertionError();
                }
                return zzbscVar.zzaaN() ? zzbrv.zzaaZ() : zzbscVar;
            } else if (!z2 && !z) {
                if (!$assertionsDisabled && compareTo2 <= 0 && compareTo > 0) {
                    throw new AssertionError();
                }
                return zzbscVar;
            } else {
                HashSet hashSet = new HashSet();
                Iterator<zzbsb> it = zzbscVar.iterator();
                while (it.hasNext()) {
                    hashSet.add(it.next().zzabj());
                }
                Iterator<zzbsb> it2 = zzbscVar2.iterator();
                while (it2.hasNext()) {
                    hashSet.add(it2.next().zzabj());
                }
                ArrayList<zzbrq> arrayList = new ArrayList(hashSet.size() + 1);
                arrayList.addAll(hashSet);
                if (!zzbscVar2.zzaaO().isEmpty() || !zzbscVar.zzaaO().isEmpty()) {
                    arrayList.add(zzbrq.zzaaI());
                }
                zzbsc zzbscVar3 = zzbscVar;
                for (zzbrq zzbrqVar : arrayList) {
                    zzbsc zzm = zzbscVar.zzm(zzbrqVar);
                    zzbsc zzb = zzb(zzbphVar.zza(zzbrqVar), zzbscVar.zzm(zzbrqVar), zzbscVar2.zzm(zzbrqVar));
                    zzbscVar3 = zzb != zzm ? zzbscVar3.zze(zzbrqVar, zzb) : zzbscVar3;
                }
                return zzbscVar3;
            }
        }
        return zzbscVar2;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzcjH);
        String valueOf2 = String.valueOf(this.zzcjI);
        String valueOf3 = String.valueOf(this.zzcjJ);
        return new StringBuilder(String.valueOf(valueOf).length() + 55 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("RangeMerge{optExclusiveStart=").append(valueOf).append(", optInclusiveEnd=").append(valueOf2).append(", snap=").append(valueOf3).append("}").toString();
    }

    public zzbsc zzr(zzbsc zzbscVar) {
        return zzb(zzbph.zzYP(), zzbscVar, this.zzcjJ);
    }
}
