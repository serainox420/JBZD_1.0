package com.google.android.gms.tagmanager;

import android.content.Context;
import com.facebook.common.util.ByteConstants;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzak;
import com.google.android.gms.internal.zzbjf;
import com.google.android.gms.tagmanager.zzm;
import com.google.android.gms.tagmanager.zzu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzcx {
    private static final zzce<zzak.zza> zzbHC = new zzce<>(zzdl.zzRR(), true);
    private final DataLayer zzbEV;
    private final zzbjf.zzc zzbHD;
    private final zzaj zzbHE;
    private final Map<String, zzam> zzbHF;
    private final Map<String, zzam> zzbHG;
    private final Map<String, zzam> zzbHH;
    private final zzl<zzbjf.zza, zzce<zzak.zza>> zzbHI;
    private final zzl<String, zzb> zzbHJ;
    private final Set<zzbjf.zze> zzbHK;
    private final Map<String, zzc> zzbHL;
    private volatile String zzbHM;
    private int zzbHN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzbjf.zze zzeVar, Set<zzbjf.zza> set, Set<zzbjf.zza> set2, zzcs zzcsVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb {
        private zzce<zzak.zza> zzbHS;
        private zzak.zza zzbHT;

        public zzb(zzce<zzak.zza> zzceVar, zzak.zza zzaVar) {
            this.zzbHS = zzceVar;
            this.zzbHT = zzaVar;
        }

        public int getSize() {
            return (this.zzbHT == null ? 0 : this.zzbHT.zzaeS()) + this.zzbHS.getObject().zzaeS();
        }

        public zzce<zzak.zza> zzRq() {
            return this.zzbHS;
        }

        public zzak.zza zzRr() {
            return this.zzbHT;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzc {
        private zzbjf.zza zzbHY;
        private final Set<zzbjf.zze> zzbHK = new HashSet();
        private final Map<zzbjf.zze, List<zzbjf.zza>> zzbHU = new HashMap();
        private final Map<zzbjf.zze, List<String>> zzbHW = new HashMap();
        private final Map<zzbjf.zze, List<zzbjf.zza>> zzbHV = new HashMap();
        private final Map<zzbjf.zze, List<String>> zzbHX = new HashMap();

        public Set<zzbjf.zze> zzRs() {
            return this.zzbHK;
        }

        public Map<zzbjf.zze, List<zzbjf.zza>> zzRt() {
            return this.zzbHU;
        }

        public Map<zzbjf.zze, List<String>> zzRu() {
            return this.zzbHW;
        }

        public Map<zzbjf.zze, List<String>> zzRv() {
            return this.zzbHX;
        }

        public Map<zzbjf.zze, List<zzbjf.zza>> zzRw() {
            return this.zzbHV;
        }

        public zzbjf.zza zzRx() {
            return this.zzbHY;
        }

        public void zza(zzbjf.zze zzeVar) {
            this.zzbHK.add(zzeVar);
        }

        public void zza(zzbjf.zze zzeVar, zzbjf.zza zzaVar) {
            List<zzbjf.zza> list = this.zzbHU.get(zzeVar);
            if (list == null) {
                list = new ArrayList<>();
                this.zzbHU.put(zzeVar, list);
            }
            list.add(zzaVar);
        }

        public void zza(zzbjf.zze zzeVar, String str) {
            List<String> list = this.zzbHW.get(zzeVar);
            if (list == null) {
                list = new ArrayList<>();
                this.zzbHW.put(zzeVar, list);
            }
            list.add(str);
        }

        public void zzb(zzbjf.zza zzaVar) {
            this.zzbHY = zzaVar;
        }

        public void zzb(zzbjf.zze zzeVar, zzbjf.zza zzaVar) {
            List<zzbjf.zza> list = this.zzbHV.get(zzeVar);
            if (list == null) {
                list = new ArrayList<>();
                this.zzbHV.put(zzeVar, list);
            }
            list.add(zzaVar);
        }

        public void zzb(zzbjf.zze zzeVar, String str) {
            List<String> list = this.zzbHX.get(zzeVar);
            if (list == null) {
                list = new ArrayList<>();
                this.zzbHX.put(zzeVar, list);
            }
            list.add(str);
        }
    }

    public zzcx(Context context, zzbjf.zzc zzcVar, DataLayer dataLayer, zzu.zza zzaVar, zzu.zza zzaVar2, zzaj zzajVar) {
        if (zzcVar == null) {
            throw new NullPointerException("resource cannot be null");
        }
        this.zzbHD = zzcVar;
        this.zzbHK = new HashSet(zzcVar.zzSU());
        this.zzbEV = dataLayer;
        this.zzbHE = zzajVar;
        this.zzbHI = new zzm().zza(ByteConstants.MB, new zzm.zza<zzbjf.zza, zzce<zzak.zza>>(this) { // from class: com.google.android.gms.tagmanager.zzcx.1
            @Override // com.google.android.gms.tagmanager.zzm.zza
            /* renamed from: zza */
            public int sizeOf(zzbjf.zza zzaVar3, zzce<zzak.zza> zzceVar) {
                return zzceVar.getObject().zzaeS();
            }
        });
        this.zzbHJ = new zzm().zza(ByteConstants.MB, new zzm.zza<String, zzb>(this) { // from class: com.google.android.gms.tagmanager.zzcx.2
            @Override // com.google.android.gms.tagmanager.zzm.zza
            /* renamed from: zza */
            public int sizeOf(String str, zzb zzbVar) {
                return str.length() + zzbVar.getSize();
            }
        });
        this.zzbHF = new HashMap();
        zzb(new zzj(context));
        zzb(new zzu(zzaVar2));
        zzb(new zzy(dataLayer));
        zzb(new zzdm(context, dataLayer));
        this.zzbHG = new HashMap();
        zzc(new zzs());
        zzc(new zzag());
        zzc(new zzah());
        zzc(new zzao());
        zzc(new zzap());
        zzc(new zzbk());
        zzc(new zzbl());
        zzc(new zzcn());
        zzc(new zzdf());
        this.zzbHH = new HashMap();
        zza(new com.google.android.gms.tagmanager.zzb(context));
        zza(new com.google.android.gms.tagmanager.zzc(context));
        zza(new zze(context));
        zza(new zzf(context));
        zza(new zzg(context));
        zza(new zzh(context));
        zza(new zzi(context));
        zza(new zzn());
        zza(new zzr(this.zzbHD.getVersion()));
        zza(new zzu(zzaVar));
        zza(new zzw(dataLayer));
        zza(new zzab(context));
        zza(new zzac());
        zza(new zzaf());
        zza(new zzak(this));
        zza(new zzaq());
        zza(new zzar());
        zza(new zzbe(context));
        zza(new zzbg());
        zza(new zzbj());
        zza(new zzbq());
        zza(new zzbs(context));
        zza(new zzcf());
        zza(new zzch());
        zza(new zzck());
        zza(new zzcm());
        zza(new zzco(context));
        zza(new zzcy());
        zza(new zzcz());
        zza(new zzdh());
        zza(new zzdn());
        this.zzbHL = new HashMap();
        for (zzbjf.zze zzeVar : this.zzbHK) {
            for (int i = 0; i < zzeVar.zzTC().size(); i++) {
                zzbjf.zza zzaVar3 = zzeVar.zzTC().get(i);
                zzc zzh = zzh(this.zzbHL, zza(zzaVar3));
                zzh.zza(zzeVar);
                zzh.zza(zzeVar, zzaVar3);
                zzh.zza(zzeVar, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
            }
            for (int i2 = 0; i2 < zzeVar.zzTD().size(); i2++) {
                zzbjf.zza zzaVar4 = zzeVar.zzTD().get(i2);
                zzc zzh2 = zzh(this.zzbHL, zza(zzaVar4));
                zzh2.zza(zzeVar);
                zzh2.zzb(zzeVar, zzaVar4);
                zzh2.zzb(zzeVar, AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
            }
        }
        for (Map.Entry<String, List<zzbjf.zza>> entry : this.zzbHD.zzTz().entrySet()) {
            for (zzbjf.zza zzaVar5 : entry.getValue()) {
                if (!zzdl.zzi(zzaVar5.zzSW().get(com.google.android.gms.internal.zzai.NOT_DEFAULT_MACRO.toString())).booleanValue()) {
                    zzh(this.zzbHL, entry.getKey()).zzb(zzaVar5);
                }
            }
        }
    }

    private String zzRp() {
        if (this.zzbHN <= 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toString(this.zzbHN));
        for (int i = 2; i < this.zzbHN; i++) {
            sb.append(' ');
        }
        sb.append(": ");
        return sb.toString();
    }

    private zzce<zzak.zza> zza(zzak.zza zzaVar, Set<String> set, zzdo zzdoVar) {
        if (!zzaVar.zzlD) {
            return new zzce<>(zzaVar, true);
        }
        switch (zzaVar.type) {
            case 2:
                zzak.zza zzm = zzbjf.zzm(zzaVar);
                zzm.zzlu = new zzak.zza[zzaVar.zzlu.length];
                for (int i = 0; i < zzaVar.zzlu.length; i++) {
                    zzce<zzak.zza> zza2 = zza(zzaVar.zzlu[i], set, zzdoVar.zznC(i));
                    if (zza2 == zzbHC) {
                        return zzbHC;
                    }
                    zzm.zzlu[i] = zza2.getObject();
                }
                return new zzce<>(zzm, false);
            case 3:
                zzak.zza zzm2 = zzbjf.zzm(zzaVar);
                if (zzaVar.zzlv.length != zzaVar.zzlw.length) {
                    String valueOf = String.valueOf(zzaVar.toString());
                    zzbo.e(valueOf.length() != 0 ? "Invalid serving value: ".concat(valueOf) : new String("Invalid serving value: "));
                    return zzbHC;
                }
                zzm2.zzlv = new zzak.zza[zzaVar.zzlv.length];
                zzm2.zzlw = new zzak.zza[zzaVar.zzlv.length];
                for (int i2 = 0; i2 < zzaVar.zzlv.length; i2++) {
                    zzce<zzak.zza> zza3 = zza(zzaVar.zzlv[i2], set, zzdoVar.zznD(i2));
                    zzce<zzak.zza> zza4 = zza(zzaVar.zzlw[i2], set, zzdoVar.zznE(i2));
                    if (zza3 == zzbHC || zza4 == zzbHC) {
                        return zzbHC;
                    }
                    zzm2.zzlv[i2] = zza3.getObject();
                    zzm2.zzlw[i2] = zza4.getObject();
                }
                return new zzce<>(zzm2, false);
            case 4:
                if (set.contains(zzaVar.zzlx)) {
                    String valueOf2 = String.valueOf(zzaVar.zzlx);
                    String valueOf3 = String.valueOf(set.toString());
                    zzbo.e(new StringBuilder(String.valueOf(valueOf2).length() + 79 + String.valueOf(valueOf3).length()).append("Macro cycle detected.  Current macro reference: ").append(valueOf2).append(".  Previous macro references: ").append(valueOf3).append(".").toString());
                    return zzbHC;
                }
                set.add(zzaVar.zzlx);
                zzce<zzak.zza> zza5 = zzdp.zza(zza(zzaVar.zzlx, set, zzdoVar.zzQY()), zzaVar.zzlC);
                set.remove(zzaVar.zzlx);
                return zza5;
            case 5:
            case 6:
            default:
                zzbo.e(new StringBuilder(25).append("Unknown type: ").append(zzaVar.type).toString());
                return zzbHC;
            case 7:
                zzak.zza zzm3 = zzbjf.zzm(zzaVar);
                zzm3.zzlB = new zzak.zza[zzaVar.zzlB.length];
                for (int i3 = 0; i3 < zzaVar.zzlB.length; i3++) {
                    zzce<zzak.zza> zza6 = zza(zzaVar.zzlB[i3], set, zzdoVar.zznF(i3));
                    if (zza6 == zzbHC) {
                        return zzbHC;
                    }
                    zzm3.zzlB[i3] = zza6.getObject();
                }
                return new zzce<>(zzm3, false);
        }
    }

    private zzce<zzak.zza> zza(String str, Set<String> set, zzbr zzbrVar) {
        zzbjf.zza next;
        this.zzbHN++;
        zzb zzbVar = this.zzbHJ.get(str);
        if (zzbVar != null) {
            zza(zzbVar.zzRr(), set);
            this.zzbHN--;
            return zzbVar.zzRq();
        }
        zzc zzcVar = this.zzbHL.get(str);
        if (zzcVar == null) {
            String valueOf = String.valueOf(zzRp());
            zzbo.e(new StringBuilder(String.valueOf(valueOf).length() + 15 + String.valueOf(str).length()).append(valueOf).append("Invalid macro: ").append(str).toString());
            this.zzbHN--;
            return zzbHC;
        }
        zzce<Set<zzbjf.zza>> zza2 = zza(str, zzcVar.zzRs(), zzcVar.zzRt(), zzcVar.zzRu(), zzcVar.zzRw(), zzcVar.zzRv(), set, zzbrVar.zzQz());
        if (zza2.getObject().isEmpty()) {
            next = zzcVar.zzRx();
        } else {
            if (zza2.getObject().size() > 1) {
                String valueOf2 = String.valueOf(zzRp());
                zzbo.zzbh(new StringBuilder(String.valueOf(valueOf2).length() + 37 + String.valueOf(str).length()).append(valueOf2).append("Multiple macros active for macroName ").append(str).toString());
            }
            next = zza2.getObject().iterator().next();
        }
        if (next == null) {
            this.zzbHN--;
            return zzbHC;
        }
        zzce<zzak.zza> zza3 = zza(this.zzbHH, next, set, zzbrVar.zzQQ());
        zzce<zzak.zza> zzceVar = zza3 == zzbHC ? zzbHC : new zzce<>(zza3.getObject(), zza2.zzQZ() && zza3.zzQZ());
        zzak.zza zzRr = next.zzRr();
        if (zzceVar.zzQZ()) {
            this.zzbHJ.zzh(str, new zzb(zzceVar, zzRr));
        }
        zza(zzRr, set);
        this.zzbHN--;
        return zzceVar;
    }

    private zzce<zzak.zza> zza(Map<String, zzam> map, zzbjf.zza zzaVar, Set<String> set, zzcp zzcpVar) {
        boolean z;
        boolean z2 = true;
        zzak.zza zzaVar2 = zzaVar.zzSW().get(com.google.android.gms.internal.zzai.FUNCTION.toString());
        if (zzaVar2 == null) {
            zzbo.e("No function id in properties");
            return zzbHC;
        }
        String str = zzaVar2.zzly;
        zzam zzamVar = map.get(str);
        if (zzamVar == null) {
            zzbo.e(String.valueOf(str).concat(" has no backing implementation."));
            return zzbHC;
        }
        zzce<zzak.zza> zzceVar = this.zzbHI.get(zzaVar);
        if (zzceVar != null) {
            return zzceVar;
        }
        HashMap hashMap = new HashMap();
        boolean z3 = true;
        for (Map.Entry<String, zzak.zza> entry : zzaVar.zzSW().entrySet()) {
            zzce<zzak.zza> zza2 = zza(entry.getValue(), set, zzcpVar.zzhm(entry.getKey()).zzd(entry.getValue()));
            if (zza2 == zzbHC) {
                return zzbHC;
            }
            if (zza2.zzQZ()) {
                zzaVar.zza(entry.getKey(), zza2.getObject());
                z = z3;
            } else {
                z = false;
            }
            hashMap.put(entry.getKey(), zza2.getObject());
            z3 = z;
        }
        if (!zzamVar.zzf(hashMap.keySet())) {
            String valueOf = String.valueOf(zzamVar.zzQM());
            String valueOf2 = String.valueOf(hashMap.keySet());
            zzbo.e(new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append("Incorrect keys for function ").append(str).append(" required ").append(valueOf).append(" had ").append(valueOf2).toString());
            return zzbHC;
        }
        if (!z3 || !zzamVar.zzQb()) {
            z2 = false;
        }
        zzce<zzak.zza> zzceVar2 = new zzce<>(zzamVar.zzZ(hashMap), z2);
        if (!z2) {
            return zzceVar2;
        }
        this.zzbHI.zzh(zzaVar, zzceVar2);
        return zzceVar2;
    }

    private zzce<Set<zzbjf.zza>> zza(Set<zzbjf.zze> set, Set<String> set2, zza zzaVar, zzcw zzcwVar) {
        Set<zzbjf.zza> hashSet = new HashSet<>();
        Set<zzbjf.zza> hashSet2 = new HashSet<>();
        boolean z = true;
        for (zzbjf.zze zzeVar : set) {
            zzcs zzQX = zzcwVar.zzQX();
            zzce<Boolean> zza2 = zza(zzeVar, set2, zzQX);
            if (zza2.getObject().booleanValue()) {
                zzaVar.zza(zzeVar, hashSet, hashSet2, zzQX);
            }
            z = z && zza2.zzQZ();
        }
        hashSet.removeAll(hashSet2);
        return new zzce<>(hashSet, z);
    }

    private static String zza(zzbjf.zza zzaVar) {
        return zzdl.zze(zzaVar.zzSW().get(com.google.android.gms.internal.zzai.INSTANCE_NAME.toString()));
    }

    private void zza(zzak.zza zzaVar, Set<String> set) {
        zzce<zzak.zza> zza2;
        if (zzaVar == null || (zza2 = zza(zzaVar, set, new zzcc())) == zzbHC) {
            return;
        }
        Object zzj = zzdl.zzj(zza2.getObject());
        if (zzj instanceof Map) {
            this.zzbEV.push((Map) zzj);
        } else if (!(zzj instanceof List)) {
            zzbo.zzbh("pushAfterEvaluate: value not a Map or List");
        } else {
            for (Object obj : (List) zzj) {
                if (obj instanceof Map) {
                    this.zzbEV.push((Map) obj);
                } else {
                    zzbo.zzbh("pushAfterEvaluate: value not a Map");
                }
            }
        }
    }

    private static void zza(Map<String, zzam> map, zzam zzamVar) {
        if (map.containsKey(zzamVar.zzQL())) {
            String valueOf = String.valueOf(zzamVar.zzQL());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Duplicate function type name: ".concat(valueOf) : new String("Duplicate function type name: "));
        } else {
            map.put(zzamVar.zzQL(), zzamVar);
        }
    }

    private static zzc zzh(Map<String, zzc> map, String str) {
        zzc zzcVar = map.get(str);
        if (zzcVar == null) {
            zzc zzcVar2 = new zzc();
            map.put(str, zzcVar2);
            return zzcVar2;
        }
        return zzcVar;
    }

    public synchronized void zzQ(List<zzaj.zzi> list) {
        for (zzaj.zzi zziVar : list) {
            if (zziVar.name == null || !zziVar.name.startsWith("gaExperiment:")) {
                String valueOf = String.valueOf(zziVar);
                zzbo.v(new StringBuilder(String.valueOf(valueOf).length() + 22).append("Ignored supplemental: ").append(valueOf).toString());
            } else {
                zzal.zza(this.zzbEV, zziVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized String zzRo() {
        return this.zzbHM;
    }

    zzce<Boolean> zza(zzbjf.zza zzaVar, Set<String> set, zzcp zzcpVar) {
        zzce<zzak.zza> zza2 = zza(this.zzbHG, zzaVar, set, zzcpVar);
        Boolean zzi = zzdl.zzi(zza2.getObject());
        zzdl.zzR(zzi);
        return new zzce<>(zzi, zza2.zzQZ());
    }

    zzce<Boolean> zza(zzbjf.zze zzeVar, Set<String> set, zzcs zzcsVar) {
        boolean z = true;
        for (zzbjf.zza zzaVar : zzeVar.zzSZ()) {
            zzce<Boolean> zza2 = zza(zzaVar, set, zzcsVar.zzQR());
            if (zza2.getObject().booleanValue()) {
                zzdl.zzR(false);
                return new zzce<>(false, zza2.zzQZ());
            }
            z = z && zza2.zzQZ();
        }
        for (zzbjf.zza zzaVar2 : zzeVar.zzSY()) {
            zzce<Boolean> zza3 = zza(zzaVar2, set, zzcsVar.zzQS());
            if (!zza3.getObject().booleanValue()) {
                zzdl.zzR(false);
                return new zzce<>(false, zza3.zzQZ());
            }
            z = z && zza3.zzQZ();
        }
        zzdl.zzR(true);
        return new zzce<>(true, z);
    }

    zzce<Set<zzbjf.zza>> zza(String str, Set<zzbjf.zze> set, final Map<zzbjf.zze, List<zzbjf.zza>> map, final Map<zzbjf.zze, List<String>> map2, final Map<zzbjf.zze, List<zzbjf.zza>> map3, final Map<zzbjf.zze, List<String>> map4, Set<String> set2, zzcw zzcwVar) {
        return zza(set, set2, new zza(this) { // from class: com.google.android.gms.tagmanager.zzcx.3
            @Override // com.google.android.gms.tagmanager.zzcx.zza
            public void zza(zzbjf.zze zzeVar, Set<zzbjf.zza> set3, Set<zzbjf.zza> set4, zzcs zzcsVar) {
                List list = (List) map.get(zzeVar);
                map2.get(zzeVar);
                if (list != null) {
                    set3.addAll(list);
                    zzcsVar.zzQT();
                }
                List list2 = (List) map3.get(zzeVar);
                map4.get(zzeVar);
                if (list2 != null) {
                    set4.addAll(list2);
                    zzcsVar.zzQU();
                }
            }
        }, zzcwVar);
    }

    zzce<Set<zzbjf.zza>> zza(Set<zzbjf.zze> set, zzcw zzcwVar) {
        return zza(set, new HashSet(), new zza(this) { // from class: com.google.android.gms.tagmanager.zzcx.4
            @Override // com.google.android.gms.tagmanager.zzcx.zza
            public void zza(zzbjf.zze zzeVar, Set<zzbjf.zza> set2, Set<zzbjf.zza> set3, zzcs zzcsVar) {
                set2.addAll(zzeVar.zzTa());
                set3.addAll(zzeVar.zzTb());
                zzcsVar.zzQV();
                zzcsVar.zzQW();
            }
        }, zzcwVar);
    }

    void zza(zzam zzamVar) {
        zza(this.zzbHH, zzamVar);
    }

    void zzb(zzam zzamVar) {
        zza(this.zzbHF, zzamVar);
    }

    void zzc(zzam zzamVar) {
        zza(this.zzbHG, zzamVar);
    }

    public synchronized void zzgU(String str) {
        zzhr(str);
        zzv zzQK = this.zzbHE.zzhh(str).zzQK();
        for (zzbjf.zza zzaVar : zza(this.zzbHK, zzQK.zzQz()).getObject()) {
            zza(this.zzbHF, zzaVar, new HashSet(), zzQK.zzQy());
        }
        zzhr(null);
    }

    public zzce<zzak.zza> zzhq(String str) {
        this.zzbHN = 0;
        return zza(str, new HashSet(), this.zzbHE.zzhg(str).zzQJ());
    }

    synchronized void zzhr(String str) {
        this.zzbHM = str;
    }
}
