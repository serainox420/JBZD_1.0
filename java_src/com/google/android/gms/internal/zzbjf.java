package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzak;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbjf {

    /* loaded from: classes2.dex */
    public static class zza {
        private final zzak.zza zzbHT;
        private final Map<String, zzak.zza> zzbMx;

        private zza(Map<String, zzak.zza> map, zzak.zza zzaVar) {
            this.zzbMx = map;
            this.zzbHT = zzaVar;
        }

        public static zzb zzTw() {
            return new zzb();
        }

        public String toString() {
            String valueOf = String.valueOf(zzSW());
            String valueOf2 = String.valueOf(this.zzbHT);
            return new StringBuilder(String.valueOf(valueOf).length() + 32 + String.valueOf(valueOf2).length()).append("Properties: ").append(valueOf).append(" pushAfterEvaluate: ").append(valueOf2).toString();
        }

        public zzak.zza zzRr() {
            return this.zzbHT;
        }

        public Map<String, zzak.zza> zzSW() {
            return Collections.unmodifiableMap(this.zzbMx);
        }

        public void zza(String str, zzak.zza zzaVar) {
            this.zzbMx.put(str, zzaVar);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb {
        private zzak.zza zzbHT;
        private final Map<String, zzak.zza> zzbMx;

        private zzb() {
            this.zzbMx = new HashMap();
        }

        public zza zzTx() {
            return new zza(this.zzbMx, this.zzbHT);
        }

        public zzb zzb(String str, zzak.zza zzaVar) {
            this.zzbMx.put(str, zzaVar);
            return this;
        }

        public zzb zzo(zzak.zza zzaVar) {
            this.zzbHT = zzaVar;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc {
        private final String zzavB;
        private final List<zze> zzbMu;
        private final Map<String, List<zza>> zzbMv;
        private final int zzbMw;

        private zzc(List<zze> list, Map<String, List<zza>> map, String str, int i) {
            this.zzbMu = Collections.unmodifiableList(list);
            this.zzbMv = Collections.unmodifiableMap(map);
            this.zzavB = str;
            this.zzbMw = i;
        }

        public static zzd zzTy() {
            return new zzd();
        }

        public String getVersion() {
            return this.zzavB;
        }

        public String toString() {
            String valueOf = String.valueOf(zzSU());
            String valueOf2 = String.valueOf(this.zzbMv);
            return new StringBuilder(String.valueOf(valueOf).length() + 17 + String.valueOf(valueOf2).length()).append("Rules: ").append(valueOf).append("  Macros: ").append(valueOf2).toString();
        }

        public List<zze> zzSU() {
            return this.zzbMu;
        }

        public Map<String, List<zza>> zzTz() {
            return this.zzbMv;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd {
        private String zzavB;
        private final List<zze> zzbMu;
        private final Map<String, List<zza>> zzbMv;
        private int zzbMw;

        private zzd() {
            this.zzbMu = new ArrayList();
            this.zzbMv = new HashMap();
            this.zzavB = "";
            this.zzbMw = 0;
        }

        public zzc zzTA() {
            return new zzc(this.zzbMu, this.zzbMv, this.zzavB, this.zzbMw);
        }

        public zzd zzb(zze zzeVar) {
            this.zzbMu.add(zzeVar);
            return this;
        }

        public zzd zzc(zza zzaVar) {
            String zze = com.google.android.gms.tagmanager.zzdl.zze(zzaVar.zzSW().get(zzai.INSTANCE_NAME.toString()));
            List<zza> list = this.zzbMv.get(zze);
            if (list == null) {
                list = new ArrayList<>();
                this.zzbMv.put(zze, list);
            }
            list.add(zzaVar);
            return this;
        }

        public zzd zzih(String str) {
            this.zzavB = str;
            return this;
        }

        public zzd zznO(int i) {
            this.zzbMw = i;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class zze {
        private final List<zza> zzbMA;
        private final List<zza> zzbMB;
        private final List<zza> zzbMC;
        private final List<zza> zzbMz;
        private final List<zza> zzbNh;
        private final List<zza> zzbNi;
        private final List<String> zzbNj;
        private final List<String> zzbNk;
        private final List<String> zzbNl;
        private final List<String> zzbNm;

        private zze(List<zza> list, List<zza> list2, List<zza> list3, List<zza> list4, List<zza> list5, List<zza> list6, List<String> list7, List<String> list8, List<String> list9, List<String> list10) {
            this.zzbMz = Collections.unmodifiableList(list);
            this.zzbMA = Collections.unmodifiableList(list2);
            this.zzbMB = Collections.unmodifiableList(list3);
            this.zzbMC = Collections.unmodifiableList(list4);
            this.zzbNh = Collections.unmodifiableList(list5);
            this.zzbNi = Collections.unmodifiableList(list6);
            this.zzbNj = Collections.unmodifiableList(list7);
            this.zzbNk = Collections.unmodifiableList(list8);
            this.zzbNl = Collections.unmodifiableList(list9);
            this.zzbNm = Collections.unmodifiableList(list10);
        }

        public static zzf zzTB() {
            return new zzf();
        }

        public String toString() {
            String valueOf = String.valueOf(zzSY());
            String valueOf2 = String.valueOf(zzSZ());
            String valueOf3 = String.valueOf(zzTa());
            String valueOf4 = String.valueOf(zzTb());
            String valueOf5 = String.valueOf(zzTC());
            String valueOf6 = String.valueOf(zzTD());
            return new StringBuilder(String.valueOf(valueOf).length() + 102 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length() + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length() + String.valueOf(valueOf6).length()).append("Positive predicates: ").append(valueOf).append("  Negative predicates: ").append(valueOf2).append("  Add tags: ").append(valueOf3).append("  Remove tags: ").append(valueOf4).append("  Add macros: ").append(valueOf5).append("  Remove macros: ").append(valueOf6).toString();
        }

        public List<zza> zzSY() {
            return this.zzbMz;
        }

        public List<zza> zzSZ() {
            return this.zzbMA;
        }

        public List<zza> zzTC() {
            return this.zzbNh;
        }

        public List<zza> zzTD() {
            return this.zzbNi;
        }

        public List<zza> zzTa() {
            return this.zzbMB;
        }

        public List<zza> zzTb() {
            return this.zzbMC;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzf {
        private final List<zza> zzbMA;
        private final List<zza> zzbMB;
        private final List<zza> zzbMC;
        private final List<zza> zzbMz;
        private final List<zza> zzbNh;
        private final List<zza> zzbNi;
        private final List<String> zzbNj;
        private final List<String> zzbNk;
        private final List<String> zzbNl;
        private final List<String> zzbNm;

        private zzf() {
            this.zzbMz = new ArrayList();
            this.zzbMA = new ArrayList();
            this.zzbMB = new ArrayList();
            this.zzbMC = new ArrayList();
            this.zzbNh = new ArrayList();
            this.zzbNi = new ArrayList();
            this.zzbNj = new ArrayList();
            this.zzbNk = new ArrayList();
            this.zzbNl = new ArrayList();
            this.zzbNm = new ArrayList();
        }

        public zze zzTE() {
            return new zze(this.zzbMz, this.zzbMA, this.zzbMB, this.zzbMC, this.zzbNh, this.zzbNi, this.zzbNj, this.zzbNk, this.zzbNl, this.zzbNm);
        }

        public zzf zzd(zza zzaVar) {
            this.zzbMz.add(zzaVar);
            return this;
        }

        public zzf zze(zza zzaVar) {
            this.zzbMA.add(zzaVar);
            return this;
        }

        public zzf zzf(zza zzaVar) {
            this.zzbMB.add(zzaVar);
            return this;
        }

        public zzf zzg(zza zzaVar) {
            this.zzbMC.add(zzaVar);
            return this;
        }

        public zzf zzh(zza zzaVar) {
            this.zzbNh.add(zzaVar);
            return this;
        }

        public zzf zzi(zza zzaVar) {
            this.zzbNi.add(zzaVar);
            return this;
        }

        public zzf zzii(String str) {
            this.zzbNl.add(str);
            return this;
        }

        public zzf zzij(String str) {
            this.zzbNm.add(str);
            return this;
        }

        public zzf zzik(String str) {
            this.zzbNj.add(str);
            return this;
        }

        public zzf zzil(String str) {
            this.zzbNk.add(str);
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzg extends Exception {
        public zzg(String str) {
            super(str);
        }
    }

    private static zzak.zza zza(int i, zzaj.zzf zzfVar, zzak.zza[] zzaVarArr, Set<Integer> set) throws zzg {
        int i2 = 0;
        if (set.contains(Integer.valueOf(i))) {
            String valueOf = String.valueOf(set);
            zzhS(new StringBuilder(String.valueOf(valueOf).length() + 90).append("Value cycle detected.  Current value reference: ").append(i).append(".  Previous value references: ").append(valueOf).append(".").toString());
        }
        zzak.zza zzaVar = (zzak.zza) zza(zzfVar.zzkF, i, "values");
        if (zzaVarArr[i] != null) {
            return zzaVarArr[i];
        }
        zzak.zza zzaVar2 = null;
        set.add(Integer.valueOf(i));
        switch (zzaVar.type) {
            case 1:
            case 5:
            case 6:
            case 8:
                zzaVar2 = zzaVar;
                break;
            case 2:
                zzaj.zzh zzn = zzn(zzaVar);
                zzaVar2 = zzm(zzaVar);
                zzaVar2.zzlu = new zzak.zza[zzn.zzlg.length];
                int[] iArr = zzn.zzlg;
                int length = iArr.length;
                int i3 = 0;
                while (i2 < length) {
                    zzaVar2.zzlu[i3] = zza(iArr[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i3++;
                }
                break;
            case 3:
                zzaVar2 = zzm(zzaVar);
                zzaj.zzh zzn2 = zzn(zzaVar);
                if (zzn2.zzlh.length != zzn2.zzli.length) {
                    zzhS(new StringBuilder(58).append("Uneven map keys (").append(zzn2.zzlh.length).append(") and map values (").append(zzn2.zzli.length).append(")").toString());
                }
                zzaVar2.zzlv = new zzak.zza[zzn2.zzlh.length];
                zzaVar2.zzlw = new zzak.zza[zzn2.zzlh.length];
                int[] iArr2 = zzn2.zzlh;
                int length2 = iArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length2) {
                    zzaVar2.zzlv[i5] = zza(iArr2[i4], zzfVar, zzaVarArr, set);
                    i4++;
                    i5++;
                }
                int[] iArr3 = zzn2.zzli;
                int length3 = iArr3.length;
                int i6 = 0;
                while (i2 < length3) {
                    zzaVar2.zzlw[i6] = zza(iArr3[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i6++;
                }
                break;
            case 4:
                zzaVar2 = zzm(zzaVar);
                zzaVar2.zzlx = com.google.android.gms.tagmanager.zzdl.zze(zza(zzn(zzaVar).zzll, zzfVar, zzaVarArr, set));
                break;
            case 7:
                zzaVar2 = zzm(zzaVar);
                zzaj.zzh zzn3 = zzn(zzaVar);
                zzaVar2.zzlB = new zzak.zza[zzn3.zzlk.length];
                int[] iArr4 = zzn3.zzlk;
                int length4 = iArr4.length;
                int i7 = 0;
                while (i2 < length4) {
                    zzaVar2.zzlB[i7] = zza(iArr4[i2], zzfVar, zzaVarArr, set);
                    i2++;
                    i7++;
                }
                break;
        }
        if (zzaVar2 == null) {
            String valueOf2 = String.valueOf(zzaVar);
            zzhS(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("Invalid value: ").append(valueOf2).toString());
        }
        zzaVarArr[i] = zzaVar2;
        set.remove(Integer.valueOf(i));
        return zzaVar2;
    }

    private static zza zza(zzaj.zzb zzbVar, zzaj.zzf zzfVar, zzak.zza[] zzaVarArr, int i) throws zzg {
        zzb zzTw = zza.zzTw();
        for (int i2 : zzbVar.zzkq) {
            zzaj.zze zzeVar = (zzaj.zze) zza(zzfVar.zzkG, Integer.valueOf(i2).intValue(), "properties");
            String str = (String) zza(zzfVar.zzkE, zzeVar.key, "keys");
            zzak.zza zzaVar = (zzak.zza) zza(zzaVarArr, zzeVar.value, "values");
            if (zzai.PUSH_AFTER_EVALUATE.toString().equals(str)) {
                zzTw.zzo(zzaVar);
            } else {
                zzTw.zzb(str, zzaVar);
            }
        }
        return zzTw.zzTx();
    }

    private static zze zza(zzaj.zzg zzgVar, List<zza> list, List<zza> list2, List<zza> list3, zzaj.zzf zzfVar) {
        zzf zzTB = zze.zzTB();
        for (int i : zzgVar.zzkU) {
            zzTB.zzd(list3.get(Integer.valueOf(i).intValue()));
        }
        for (int i2 : zzgVar.zzkV) {
            zzTB.zze(list3.get(Integer.valueOf(i2).intValue()));
        }
        for (int i3 : zzgVar.zzkW) {
            zzTB.zzf(list.get(Integer.valueOf(i3).intValue()));
        }
        for (int i4 : zzgVar.zzkY) {
            zzTB.zzii(zzfVar.zzkF[Integer.valueOf(i4).intValue()].string);
        }
        for (int i5 : zzgVar.zzkX) {
            zzTB.zzg(list.get(Integer.valueOf(i5).intValue()));
        }
        for (int i6 : zzgVar.zzkZ) {
            zzTB.zzij(zzfVar.zzkF[Integer.valueOf(i6).intValue()].string);
        }
        for (int i7 : zzgVar.zzla) {
            zzTB.zzh(list2.get(Integer.valueOf(i7).intValue()));
        }
        for (int i8 : zzgVar.zzlc) {
            zzTB.zzik(zzfVar.zzkF[Integer.valueOf(i8).intValue()].string);
        }
        for (int i9 : zzgVar.zzlb) {
            zzTB.zzi(list2.get(Integer.valueOf(i9).intValue()));
        }
        for (int i10 : zzgVar.zzld) {
            zzTB.zzil(zzfVar.zzkF[Integer.valueOf(i10).intValue()].string);
        }
        return zzTB.zzTE();
    }

    private static <T> T zza(T[] tArr, int i, String str) throws zzg {
        if (i < 0 || i >= tArr.length) {
            zzhS(new StringBuilder(String.valueOf(str).length() + 45).append("Index out of bounds detected: ").append(i).append(" in ").append(str).toString());
        }
        return tArr[i];
    }

    public static zzc zzb(zzaj.zzf zzfVar) throws zzg {
        zzak.zza[] zzaVarArr = new zzak.zza[zzfVar.zzkF.length];
        for (int i = 0; i < zzfVar.zzkF.length; i++) {
            zza(i, zzfVar, zzaVarArr, new HashSet(0));
        }
        zzd zzTy = zzc.zzTy();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < zzfVar.zzkI.length; i2++) {
            arrayList.add(zza(zzfVar.zzkI[i2], zzfVar, zzaVarArr, i2));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < zzfVar.zzkJ.length; i3++) {
            arrayList2.add(zza(zzfVar.zzkJ[i3], zzfVar, zzaVarArr, i3));
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i4 = 0; i4 < zzfVar.zzkH.length; i4++) {
            zza zza2 = zza(zzfVar.zzkH[i4], zzfVar, zzaVarArr, i4);
            zzTy.zzc(zza2);
            arrayList3.add(zza2);
        }
        for (zzaj.zzg zzgVar : zzfVar.zzkK) {
            zzTy.zzb(zza(zzgVar, arrayList, arrayList3, arrayList2, zzfVar));
        }
        zzTy.zzih(zzfVar.version);
        zzTy.zznO(zzfVar.zzkS);
        return zzTy.zzTA();
    }

    public static void zzc(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            }
            outputStream.write(bArr, 0, read);
        }
    }

    private static void zzhS(String str) throws zzg {
        com.google.android.gms.tagmanager.zzbo.e(str);
        throw new zzg(str);
    }

    public static zzak.zza zzm(zzak.zza zzaVar) {
        zzak.zza zzaVar2 = new zzak.zza();
        zzaVar2.type = zzaVar.type;
        zzaVar2.zzlC = (int[]) zzaVar.zzlC.clone();
        if (zzaVar.zzlD) {
            zzaVar2.zzlD = zzaVar.zzlD;
        }
        return zzaVar2;
    }

    private static zzaj.zzh zzn(zzak.zza zzaVar) throws zzg {
        if (((zzaj.zzh) zzaVar.zza(zzaj.zzh.zzle)) == null) {
            String valueOf = String.valueOf(zzaVar);
            zzhS(new StringBuilder(String.valueOf(valueOf).length() + 54).append("Expected a ServingValue and didn't get one. Value is: ").append(valueOf).toString());
        }
        return (zzaj.zzh) zzaVar.zza(zzaj.zzh.zzle);
    }
}
