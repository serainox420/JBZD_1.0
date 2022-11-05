package com.google.android.gms.internal;

import android.support.v4.f.a;
import android.text.TextUtils;
import com.google.android.gms.internal.zzauu;
import com.google.android.gms.internal.zzauw;
import com.google.android.gms.measurement.AppMeasurement;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzatf extends zzauh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatf(zzaue zzaueVar) {
        super(zzaueVar);
    }

    private Boolean zza(zzauu.zzb zzbVar, zzauw.zzb zzbVar2, long j) {
        zzauu.zzc[] zzcVarArr;
        zzauw.zzc[] zzcVarArr2;
        zzauu.zzc[] zzcVarArr3;
        Boolean zza;
        if (zzbVar.zzbws != null) {
            Boolean zza2 = zza(j, zzbVar.zzbws);
            if (zza2 == null) {
                return null;
            }
            if (!zza2.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (zzauu.zzc zzcVar : zzbVar.zzbwq) {
            if (TextUtils.isEmpty(zzcVar.zzbwx)) {
                zzKl().zzMa().zzj("null or empty param name in filter. event", zzbVar2.name);
                return null;
            }
            hashSet.add(zzcVar.zzbwx);
        }
        a aVar = new a();
        for (zzauw.zzc zzcVar2 : zzbVar2.zzbwY) {
            if (hashSet.contains(zzcVar2.name)) {
                if (zzcVar2.zzbxc != null) {
                    aVar.put(zzcVar2.name, zzcVar2.zzbxc);
                } else if (zzcVar2.zzbwf != null) {
                    aVar.put(zzcVar2.name, zzcVar2.zzbwf);
                } else if (zzcVar2.zzaGV == null) {
                    zzKl().zzMa().zze("Unknown value for param. event, param", zzbVar2.name, zzcVar2.name);
                    return null;
                } else {
                    aVar.put(zzcVar2.name, zzcVar2.zzaGV);
                }
            }
        }
        for (zzauu.zzc zzcVar3 : zzbVar.zzbwq) {
            boolean equals = Boolean.TRUE.equals(zzcVar3.zzbww);
            String str = zzcVar3.zzbwx;
            if (TextUtils.isEmpty(str)) {
                zzKl().zzMa().zzj("Event has empty param name. event", zzbVar2.name);
                return null;
            }
            Object obj = aVar.get(str);
            if (obj instanceof Long) {
                if (zzcVar3.zzbwv == null) {
                    zzKl().zzMa().zze("No number filter for long param. event, param", zzbVar2.name, str);
                    return null;
                }
                Boolean zza3 = zza(((Long) obj).longValue(), zzcVar3.zzbwv);
                if (zza3 == null) {
                    return null;
                }
                if ((!zza3.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (obj instanceof Double) {
                if (zzcVar3.zzbwv == null) {
                    zzKl().zzMa().zze("No number filter for double param. event, param", zzbVar2.name, str);
                    return null;
                }
                Boolean zza4 = zza(((Double) obj).doubleValue(), zzcVar3.zzbwv);
                if (zza4 == null) {
                    return null;
                }
                if ((!zza4.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (!(obj instanceof String)) {
                if (obj == null) {
                    zzKl().zzMe().zze("Missing param for filter. event, param", zzbVar2.name, str);
                    return false;
                }
                zzKl().zzMa().zze("Unknown param type. event, param", zzbVar2.name, str);
                return null;
            } else {
                if (zzcVar3.zzbwu != null) {
                    zza = zza((String) obj, zzcVar3.zzbwu);
                } else if (zzcVar3.zzbwv == null) {
                    zzKl().zzMa().zze("No filter for String param. event, param", zzbVar2.name, str);
                    return null;
                } else if (!zzaut.zzgf((String) obj)) {
                    zzKl().zzMa().zze("Invalid param value for number filter. event, param", zzbVar2.name, str);
                    return null;
                } else {
                    zza = zza((String) obj, zzcVar3.zzbwv);
                }
                if (zza == null) {
                    return null;
                }
                if ((!zza.booleanValue()) ^ equals) {
                    return false;
                }
            }
        }
        return true;
    }

    private Boolean zza(zzauu.zze zzeVar, zzauw.zzg zzgVar) {
        zzauu.zzc zzcVar = zzeVar.zzbwF;
        if (zzcVar == null) {
            zzKl().zzMa().zzj("Missing property filter. property", zzgVar.name);
            return null;
        }
        boolean equals = Boolean.TRUE.equals(zzcVar.zzbww);
        if (zzgVar.zzbxc != null) {
            if (zzcVar.zzbwv != null) {
                return zza(zza(zzgVar.zzbxc.longValue(), zzcVar.zzbwv), equals);
            }
            zzKl().zzMa().zzj("No number filter for long property. property", zzgVar.name);
            return null;
        } else if (zzgVar.zzbwf != null) {
            if (zzcVar.zzbwv != null) {
                return zza(zza(zzgVar.zzbwf.doubleValue(), zzcVar.zzbwv), equals);
            }
            zzKl().zzMa().zzj("No number filter for double property. property", zzgVar.name);
            return null;
        } else if (zzgVar.zzaGV == null) {
            zzKl().zzMa().zzj("User property has no value, property", zzgVar.name);
            return null;
        } else if (zzcVar.zzbwu != null) {
            return zza(zza(zzgVar.zzaGV, zzcVar.zzbwu), equals);
        } else {
            if (zzcVar.zzbwv == null) {
                zzKl().zzMa().zzj("No string or number filter defined. property", zzgVar.name);
                return null;
            } else if (zzaut.zzgf(zzgVar.zzaGV)) {
                return zza(zza(zzgVar.zzaGV, zzcVar.zzbwv), equals);
            } else {
                zzKl().zzMa().zze("Invalid user property value for Numeric number filter. property, value", zzgVar.name, zzgVar.zzaGV);
                return null;
            }
        }
    }

    static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && i != 1) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str).matches());
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    private Boolean zza(BigDecimal bigDecimal, int i, BigDecimal bigDecimal2, BigDecimal bigDecimal3, BigDecimal bigDecimal4, double d) {
        boolean z = true;
        if (bigDecimal == null) {
            return null;
        }
        if (i == 4) {
            if (bigDecimal3 == null || bigDecimal4 == null) {
                return null;
            }
        } else if (bigDecimal2 == null) {
            return null;
        }
        switch (i) {
            case 1:
                if (bigDecimal.compareTo(bigDecimal2) != -1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                if (bigDecimal.compareTo(bigDecimal2) != 1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 3:
                if (d == 0.0d) {
                    if (bigDecimal.compareTo(bigDecimal2) != 0) {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
                if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) != 1 || bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) != -1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 4:
                if (bigDecimal.compareTo(bigDecimal3) == -1 || bigDecimal.compareTo(bigDecimal4) == 1) {
                    z = false;
                }
                return Boolean.valueOf(z);
            default:
                return null;
        }
    }

    private List<String> zza(String[] strArr, boolean z) {
        if (z) {
            return Arrays.asList(strArr);
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(str.toUpperCase(Locale.ENGLISH));
        }
        return arrayList;
    }

    public Boolean zza(double d, zzauu.zzd zzdVar) {
        try {
            return zza(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public Boolean zza(long j, zzauu.zzd zzdVar) {
        try {
            return zza(new BigDecimal(j), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public Boolean zza(String str, zzauu.zzd zzdVar) {
        if (!zzaut.zzgf(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    Boolean zza(String str, zzauu.zzf zzfVar) {
        String str2 = null;
        com.google.android.gms.common.internal.zzac.zzw(zzfVar);
        if (str == null || zzfVar.zzbwG == null || zzfVar.zzbwG.intValue() == 0) {
            return null;
        }
        if (zzfVar.zzbwG.intValue() == 6) {
            if (zzfVar.zzbwJ == null || zzfVar.zzbwJ.length == 0) {
                return null;
            }
        } else if (zzfVar.zzbwH == null) {
            return null;
        }
        int intValue = zzfVar.zzbwG.intValue();
        boolean z = zzfVar.zzbwI != null && zzfVar.zzbwI.booleanValue();
        String upperCase = (z || intValue == 1 || intValue == 6) ? zzfVar.zzbwH : zzfVar.zzbwH.toUpperCase(Locale.ENGLISH);
        List<String> zza = zzfVar.zzbwJ == null ? null : zza(zzfVar.zzbwJ, z);
        if (intValue == 1) {
            str2 = upperCase;
        }
        return zza(str, intValue, z, upperCase, zza, str2);
    }

    Boolean zza(BigDecimal bigDecimal, zzauu.zzd zzdVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        com.google.android.gms.common.internal.zzac.zzw(zzdVar);
        if (zzdVar.zzbwy == null || zzdVar.zzbwy.intValue() == 0) {
            return null;
        }
        if (zzdVar.zzbwy.intValue() == 4) {
            if (zzdVar.zzbwB == null || zzdVar.zzbwC == null) {
                return null;
            }
        } else if (zzdVar.zzbwA == null) {
            return null;
        }
        int intValue = zzdVar.zzbwy.intValue();
        if (zzdVar.zzbwy.intValue() == 4) {
            if (!zzaut.zzgf(zzdVar.zzbwB) || !zzaut.zzgf(zzdVar.zzbwC)) {
                return null;
            }
            try {
                bigDecimal4 = new BigDecimal(zzdVar.zzbwB);
                bigDecimal3 = new BigDecimal(zzdVar.zzbwC);
                bigDecimal2 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzaut.zzgf(zzdVar.zzbwA)) {
            return null;
        } else {
            try {
                bigDecimal2 = new BigDecimal(zzdVar.zzbwA);
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        return zza(bigDecimal, intValue, bigDecimal2, bigDecimal4, bigDecimal3, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(String str, zzauu.zza[] zzaVarArr) {
        zzauu.zzb[] zzbVarArr;
        zzauu.zze[] zzeVarArr;
        com.google.android.gms.common.internal.zzac.zzw(zzaVarArr);
        for (zzauu.zza zzaVar : zzaVarArr) {
            for (zzauu.zzb zzbVar : zzaVar.zzbwm) {
                String str2 = AppMeasurement.zza.zzbqd.get(zzbVar.zzbwp);
                if (str2 != null) {
                    zzbVar.zzbwp = str2;
                }
                zzauu.zzc[] zzcVarArr = zzbVar.zzbwq;
                for (zzauu.zzc zzcVar : zzcVarArr) {
                    String str3 = AppMeasurement.zze.zzbqe.get(zzcVar.zzbwx);
                    if (str3 != null) {
                        zzcVar.zzbwx = str3;
                    }
                }
            }
            for (zzauu.zze zzeVar : zzaVar.zzbwl) {
                String str4 = AppMeasurement.zzg.zzbqi.get(zzeVar.zzbwE);
                if (str4 != null) {
                    zzeVar.zzbwE = str4;
                }
            }
        }
        zzKg().zzb(str, zzaVarArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauw.zza[] zza(String str, zzauw.zzb[] zzbVarArr, zzauw.zzg[] zzgVarArr) {
        Map<Integer, List<zzauu.zze>> map;
        zzatn zzLV;
        Map<Integer, List<zzauu.zzb>> map2;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        HashSet hashSet = new HashSet();
        a aVar = new a();
        a aVar2 = new a();
        a aVar3 = new a();
        Map<Integer, zzauw.zzf> zzfy = zzKg().zzfy(str);
        if (zzfy != null) {
            for (Integer num : zzfy.keySet()) {
                int intValue = num.intValue();
                zzauw.zzf zzfVar = zzfy.get(Integer.valueOf(intValue));
                BitSet bitSet = (BitSet) aVar2.get(Integer.valueOf(intValue));
                BitSet bitSet2 = (BitSet) aVar3.get(Integer.valueOf(intValue));
                if (bitSet == null) {
                    bitSet = new BitSet();
                    aVar2.put(Integer.valueOf(intValue), bitSet);
                    bitSet2 = new BitSet();
                    aVar3.put(Integer.valueOf(intValue), bitSet2);
                }
                for (int i = 0; i < zzfVar.zzbxG.length * 64; i++) {
                    if (zzaut.zza(zzfVar.zzbxG, i)) {
                        zzKl().zzMe().zze("Filter already evaluated. audience ID, filter ID", Integer.valueOf(intValue), Integer.valueOf(i));
                        bitSet2.set(i);
                        if (zzaut.zza(zzfVar.zzbxH, i)) {
                            bitSet.set(i);
                        }
                    }
                }
                zzauw.zza zzaVar = new zzauw.zza();
                aVar.put(Integer.valueOf(intValue), zzaVar);
                zzaVar.zzbwW = false;
                zzaVar.zzbwV = zzfVar;
                zzaVar.zzbwU = new zzauw.zzf();
                zzaVar.zzbwU.zzbxH = zzaut.zza(bitSet);
                zzaVar.zzbwU.zzbxG = zzaut.zza(bitSet2);
            }
        }
        if (zzbVarArr != null) {
            a aVar4 = new a();
            int length = zzbVarArr.length;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= length) {
                    break;
                }
                zzauw.zzb zzbVar = zzbVarArr[i3];
                zzatn zzQ = zzKg().zzQ(str, zzbVar.name);
                if (zzQ == null) {
                    zzKl().zzMa().zze("Event aggregate wasn't created during raw event logging. appId, event", zzatx.zzfE(str), zzbVar.name);
                    zzLV = new zzatn(str, zzbVar.name, 1L, 1L, zzbVar.zzbwZ.longValue());
                } else {
                    zzLV = zzQ.zzLV();
                }
                zzKg().zza(zzLV);
                long j = zzLV.zzbrA;
                Map<Integer, List<zzauu.zzb>> map3 = (Map) aVar4.get(zzbVar.name);
                if (map3 == null) {
                    Map<Integer, List<zzauu.zzb>> zzV = zzKg().zzV(str, zzbVar.name);
                    if (zzV == null) {
                        zzV = new a<>();
                    }
                    aVar4.put(zzbVar.name, zzV);
                    map2 = zzV;
                } else {
                    map2 = map3;
                }
                for (Integer num2 : map2.keySet()) {
                    int intValue2 = num2.intValue();
                    if (hashSet.contains(Integer.valueOf(intValue2))) {
                        zzKl().zzMe().zzj("Skipping failed audience ID", Integer.valueOf(intValue2));
                    } else {
                        zzauw.zza zzaVar2 = (zzauw.zza) aVar.get(Integer.valueOf(intValue2));
                        BitSet bitSet3 = (BitSet) aVar2.get(Integer.valueOf(intValue2));
                        BitSet bitSet4 = (BitSet) aVar3.get(Integer.valueOf(intValue2));
                        if (zzaVar2 == null) {
                            zzauw.zza zzaVar3 = new zzauw.zza();
                            aVar.put(Integer.valueOf(intValue2), zzaVar3);
                            zzaVar3.zzbwW = true;
                            bitSet3 = new BitSet();
                            aVar2.put(Integer.valueOf(intValue2), bitSet3);
                            bitSet4 = new BitSet();
                            aVar3.put(Integer.valueOf(intValue2), bitSet4);
                        }
                        for (zzauu.zzb zzbVar2 : map2.get(Integer.valueOf(intValue2))) {
                            if (zzKl().zzak(2)) {
                                zzKl().zzMe().zzd("Evaluating filter. audience, filter, event", Integer.valueOf(intValue2), zzbVar2.zzbwo, zzbVar2.zzbwp);
                                zzKl().zzMe().zzj("Filter definition", zzaut.zza(zzbVar2));
                            }
                            if (zzbVar2.zzbwo == null || zzbVar2.zzbwo.intValue() > 256) {
                                zzKl().zzMa().zze("Invalid event filter ID. appId, id", zzatx.zzfE(str), String.valueOf(zzbVar2.zzbwo));
                            } else if (bitSet3.get(zzbVar2.zzbwo.intValue())) {
                                zzKl().zzMe().zze("Event filter already evaluated true. audience ID, filter ID", Integer.valueOf(intValue2), zzbVar2.zzbwo);
                            } else {
                                Boolean zza = zza(zzbVar2, zzbVar, j);
                                zzKl().zzMe().zzj("Event filter result", zza == null ? "null" : zza);
                                if (zza == null) {
                                    hashSet.add(Integer.valueOf(intValue2));
                                } else {
                                    bitSet4.set(zzbVar2.zzbwo.intValue());
                                    if (zza.booleanValue()) {
                                        bitSet3.set(zzbVar2.zzbwo.intValue());
                                    }
                                }
                            }
                        }
                    }
                }
                i2 = i3 + 1;
            }
        }
        if (zzgVarArr != null) {
            a aVar5 = new a();
            for (zzauw.zzg zzgVar : zzgVarArr) {
                Map<Integer, List<zzauu.zze>> map4 = (Map) aVar5.get(zzgVar.name);
                if (map4 == null) {
                    Map<Integer, List<zzauu.zze>> zzW = zzKg().zzW(str, zzgVar.name);
                    if (zzW == null) {
                        zzW = new a<>();
                    }
                    aVar5.put(zzgVar.name, zzW);
                    map = zzW;
                } else {
                    map = map4;
                }
                for (Integer num3 : map.keySet()) {
                    int intValue3 = num3.intValue();
                    if (hashSet.contains(Integer.valueOf(intValue3))) {
                        zzKl().zzMe().zzj("Skipping failed audience ID", Integer.valueOf(intValue3));
                    } else {
                        zzauw.zza zzaVar4 = (zzauw.zza) aVar.get(Integer.valueOf(intValue3));
                        BitSet bitSet5 = (BitSet) aVar2.get(Integer.valueOf(intValue3));
                        BitSet bitSet6 = (BitSet) aVar3.get(Integer.valueOf(intValue3));
                        if (zzaVar4 == null) {
                            zzauw.zza zzaVar5 = new zzauw.zza();
                            aVar.put(Integer.valueOf(intValue3), zzaVar5);
                            zzaVar5.zzbwW = true;
                            bitSet5 = new BitSet();
                            aVar2.put(Integer.valueOf(intValue3), bitSet5);
                            bitSet6 = new BitSet();
                            aVar3.put(Integer.valueOf(intValue3), bitSet6);
                        }
                        for (zzauu.zze zzeVar : map.get(Integer.valueOf(intValue3))) {
                            if (zzKl().zzak(2)) {
                                zzKl().zzMe().zzd("Evaluating filter. audience, filter, property", Integer.valueOf(intValue3), zzeVar.zzbwo, zzeVar.zzbwE);
                                zzKl().zzMe().zzj("Filter definition", zzaut.zza(zzeVar));
                            }
                            if (zzeVar.zzbwo == null || zzeVar.zzbwo.intValue() > 256) {
                                zzKl().zzMa().zze("Invalid property filter ID. appId, id", zzatx.zzfE(str), String.valueOf(zzeVar.zzbwo));
                                hashSet.add(Integer.valueOf(intValue3));
                                break;
                            } else if (bitSet5.get(zzeVar.zzbwo.intValue())) {
                                zzKl().zzMe().zze("Property filter already evaluated true. audience ID, filter ID", Integer.valueOf(intValue3), zzeVar.zzbwo);
                            } else {
                                Boolean zza2 = zza(zzeVar, zzgVar);
                                zzKl().zzMe().zzj("Property filter result", zza2 == null ? "null" : zza2);
                                if (zza2 == null) {
                                    hashSet.add(Integer.valueOf(intValue3));
                                } else {
                                    bitSet6.set(zzeVar.zzbwo.intValue());
                                    if (zza2.booleanValue()) {
                                        bitSet5.set(zzeVar.zzbwo.intValue());
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        zzauw.zza[] zzaVarArr = new zzauw.zza[aVar2.size()];
        int i4 = 0;
        for (K k : aVar2.keySet()) {
            int intValue4 = k.intValue();
            if (!hashSet.contains(Integer.valueOf(intValue4))) {
                zzauw.zza zzaVar6 = (zzauw.zza) aVar.get(Integer.valueOf(intValue4));
                if (zzaVar6 == null) {
                    zzaVar6 = new zzauw.zza();
                }
                zzauw.zza zzaVar7 = zzaVar6;
                zzaVarArr[i4] = zzaVar7;
                zzaVar7.zzbwk = Integer.valueOf(intValue4);
                zzaVar7.zzbwU = new zzauw.zzf();
                zzaVar7.zzbwU.zzbxH = zzaut.zza((BitSet) aVar2.get(Integer.valueOf(intValue4)));
                zzaVar7.zzbwU.zzbxG = zzaut.zza((BitSet) aVar3.get(Integer.valueOf(intValue4)));
                zzKg().zza(str, intValue4, zzaVar7.zzbwU);
                i4++;
            }
        }
        return (zzauw.zza[]) Arrays.copyOf(zzaVarArr, i4);
    }

    @Override // com.google.android.gms.internal.zzauh
    protected void zzmS() {
    }
}
