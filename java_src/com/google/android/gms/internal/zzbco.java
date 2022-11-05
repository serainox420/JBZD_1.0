package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbco {
    private static final Map<String, zza> zzbLm;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zza {
        public static final String[] zzbLp = {zzai.ARG0.toString(), zzai.ARG1.toString()};
        private final String zzbLn;
        private final String[] zzbLo;

        public zza(String str) {
            this.zzbLn = str;
            this.zzbLo = zzbLp;
        }

        public zza(String str, String[] strArr) {
            this.zzbLn = str;
            this.zzbLo = strArr;
        }

        public String zzSA() {
            return this.zzbLn;
        }

        public String[] zzSB() {
            return this.zzbLo;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(zzah.CONTAINS.toString(), new zza("contains"));
        hashMap.put(zzah.ENDS_WITH.toString(), new zza("endsWith"));
        hashMap.put(zzah.EQUALS.toString(), new zza("equals"));
        hashMap.put(zzah.GREATER_EQUALS.toString(), new zza("greaterEquals"));
        hashMap.put(zzah.GREATER_THAN.toString(), new zza("greaterThan"));
        hashMap.put(zzah.LESS_EQUALS.toString(), new zza("lessEquals"));
        hashMap.put(zzah.LESS_THAN.toString(), new zza("lessThan"));
        hashMap.put(zzah.REGEX.toString(), new zza("regex", new String[]{zzai.ARG0.toString(), zzai.ARG1.toString(), zzai.IGNORE_CASE.toString()}));
        hashMap.put(zzah.STARTS_WITH.toString(), new zza("startsWith"));
        zzbLm = hashMap;
    }

    public static zzbja zza(String str, Map<String, zzbit<?>> map, zzbcd zzbcdVar) {
        if (!zzbLm.containsKey(str)) {
            throw new RuntimeException(new StringBuilder(String.valueOf(str).length() + 47).append("Fail to convert ").append(str).append(" to the internal representation").toString());
        }
        zza zzaVar = zzbLm.get(str);
        List<zzbit<?>> zza2 = zza(zzaVar.zzSB(), map);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzbjb("gtmUtils"));
        zzbja zzbjaVar = new zzbja("15", arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(zzbjaVar);
        arrayList2.add(new zzbjb("mobile"));
        zzbja zzbjaVar2 = new zzbja("17", arrayList2);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(zzbjaVar2);
        arrayList3.add(new zzbjb(zzaVar.zzSA()));
        arrayList3.add(new zzbiy(zza2));
        return new zzbja("2", arrayList3);
    }

    public static String zza(zzah zzahVar) {
        return zzhO(zzahVar.toString());
    }

    private static List<zzbit<?>> zza(String[] strArr, Map<String, zzbit<?>> map) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < strArr.length) {
                if (!map.containsKey(strArr[i2])) {
                    arrayList.add(zzbix.zzbMS);
                } else {
                    arrayList.add(map.get(strArr[i2]));
                }
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    public static String zzhO(String str) {
        if (zzbLm.containsKey(str)) {
            return zzbLm.get(str).zzSA();
        }
        return null;
    }
}
