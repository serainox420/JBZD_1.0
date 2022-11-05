package com.google.android.gms.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbjc {
    public static Map<String, Object> zzO(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                hashMap.put(str, zzO((Bundle) obj));
            } else if (obj instanceof List) {
                hashMap.put(str, zzR((List) obj));
            } else {
                hashMap.put(str, obj);
            }
        }
        return hashMap;
    }

    private static List<Object> zzR(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof Bundle) {
                arrayList.add(zzO((Bundle) obj));
            } else if (obj instanceof List) {
                arrayList.add(zzR((List) obj));
            } else {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static zzbit<?> zzZ(Object obj) {
        if (obj == null) {
            return zzbix.zzbMR;
        }
        if (obj instanceof zzbit) {
            return (zzbit) obj;
        }
        if (obj instanceof Boolean) {
            return new zzbiu((Boolean) obj);
        }
        if (obj instanceof Short) {
            return new zzbiv(Double.valueOf(((Short) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new zzbiv(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Long) {
            return new zzbiv(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Float) {
            return new zzbiv(Double.valueOf(((Float) obj).doubleValue()));
        }
        if (obj instanceof Double) {
            return new zzbiv((Double) obj);
        }
        if (!(obj instanceof Byte) && !(obj instanceof Character)) {
            if (obj instanceof String) {
                return new zzbjb((String) obj);
            }
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                for (Object obj2 : (List) obj) {
                    arrayList.add(zzZ(obj2));
                }
                return new zzbiy(arrayList);
            } else if (obj instanceof Map) {
                HashMap hashMap = new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    com.google.android.gms.common.internal.zzac.zzax(entry.getKey() instanceof String);
                    hashMap.put((String) entry.getKey(), zzZ(entry.getValue()));
                }
                return new zzbiz(hashMap);
            } else if (!(obj instanceof Bundle)) {
                String valueOf = String.valueOf(obj.getClass());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(valueOf).length() + 20).append("Type not supported: ").append(valueOf).toString());
            } else {
                HashMap hashMap2 = new HashMap();
                for (String str : ((Bundle) obj).keySet()) {
                    hashMap2.put(str, zzZ(((Bundle) obj).get(str)));
                }
                return new zzbiz(hashMap2);
            }
        }
        return new zzbjb(obj.toString());
    }

    public static zzbit zza(zzbcd zzbcdVar, zzbit zzbitVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzbitVar);
        if (!zzn(zzbitVar) && !(zzbitVar instanceof zzbiw) && !(zzbitVar instanceof zzbiy) && !(zzbitVar instanceof zzbiz)) {
            if (!(zzbitVar instanceof zzbja)) {
                throw new UnsupportedOperationException("Attempting to evaluate unknown type");
            }
            zzbitVar = zza(zzbcdVar, (zzbja) zzbitVar);
        }
        if (zzbitVar != null) {
            if (!(zzbitVar instanceof zzbja)) {
                return zzbitVar;
            }
            throw new IllegalArgumentException("AbstractType evaluated to illegal type Statement.");
        }
        throw new IllegalArgumentException("AbstractType evaluated to Java null");
    }

    public static zzbit zza(zzbcd zzbcdVar, zzbja zzbjaVar) {
        String zzTt = zzbjaVar.zzTt();
        List<zzbit<?>> zzTu = zzbjaVar.zzTu();
        zzbit<?> zzhM = zzbcdVar.zzhM(zzTt);
        if (zzhM == null) {
            throw new UnsupportedOperationException(new StringBuilder(String.valueOf(zzTt).length() + 28).append("Function '").append(zzTt).append("' is not supported").toString());
        }
        if (zzhM instanceof zzbiw) {
            return ((zzbcq) ((zzbiw) zzhM).zzTi()).zzb(zzbcdVar, (zzbit[]) zzTu.toArray(new zzbit[zzTu.size()]));
        }
        throw new UnsupportedOperationException(new StringBuilder(String.valueOf(zzTt).length() + 29).append("Function '").append(zzTt).append("' is not a function").toString());
    }

    public static zzbix zza(zzbcd zzbcdVar, List<zzbit<?>> list) {
        for (zzbit<?> zzbitVar : list) {
            com.google.android.gms.common.internal.zzac.zzax(zzbitVar instanceof zzbja);
            zzbit zza = zza(zzbcdVar, zzbitVar);
            if (zzo(zza)) {
                return (zzbix) zza;
            }
        }
        return zzbix.zzbMS;
    }

    public static Bundle zzas(Map<String, zzbit<?>> map) {
        if (map == null) {
            return null;
        }
        Bundle bundle = new Bundle(map.size());
        for (Map.Entry<String, zzbit<?>> entry : map.entrySet()) {
            if (entry.getValue() instanceof zzbjb) {
                bundle.putString(entry.getKey(), (String) ((zzbjb) entry.getValue()).zzTi());
            } else if (entry.getValue() instanceof zzbiu) {
                bundle.putBoolean(entry.getKey(), ((Boolean) ((zzbiu) entry.getValue()).zzTi()).booleanValue());
            } else if (entry.getValue() instanceof zzbiv) {
                bundle.putDouble(entry.getKey(), ((Double) ((zzbiv) entry.getValue()).zzTi()).doubleValue());
            } else if (!(entry.getValue() instanceof zzbiz)) {
                throw new IllegalArgumentException(String.format("Invalid param type for key '%s'. Only boolean, double and string types and maps of thereof are supported.", entry.getKey()));
            } else {
                bundle.putBundle(entry.getKey(), zzas(((zzbiz) entry.getValue()).zzTi()));
            }
        }
        return bundle;
    }

    public static Object zzl(zzbit<?> zzbitVar) {
        if (zzbitVar != null && zzbitVar != zzbix.zzbMR) {
            if (zzbitVar instanceof zzbiu) {
                return (Boolean) ((zzbiu) zzbitVar).zzTi();
            }
            if (zzbitVar instanceof zzbiv) {
                double doubleValue = ((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue();
                return (Double.isInfinite(doubleValue) || doubleValue - Math.floor(doubleValue) >= 1.0E-5d) ? ((Double) ((zzbiv) zzbitVar).zzTi()).toString() : Integer.valueOf((int) doubleValue);
            } else if (zzbitVar instanceof zzbjb) {
                return (String) ((zzbjb) zzbitVar).zzTi();
            } else {
                if (zzbitVar instanceof zzbiy) {
                    ArrayList arrayList = new ArrayList();
                    for (zzbit<?> zzbitVar2 : ((zzbiy) zzbitVar).zzTi()) {
                        Object zzl = zzl(zzbitVar2);
                        if (zzl == null) {
                            zzbbu.e(String.format("Failure to convert a list element to object: %s (%s)", zzbitVar2, zzbitVar2.getClass().getCanonicalName()));
                            return null;
                        }
                        arrayList.add(zzl);
                    }
                    return arrayList;
                } else if (!(zzbitVar instanceof zzbiz)) {
                    String valueOf = String.valueOf(zzbitVar.getClass());
                    zzbbu.e(new StringBuilder(String.valueOf(valueOf).length() + 49).append("Converting to Object from unknown abstract type: ").append(valueOf).toString());
                    return null;
                } else {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry<String, zzbit<?>> entry : ((zzbiz) zzbitVar).zzTi().entrySet()) {
                        Object zzl2 = zzl(entry.getValue());
                        if (zzl2 == null) {
                            zzbbu.e(String.format("Failure to convert a map's value to object: %s (%s)", entry.getValue(), entry.getValue().getClass().getCanonicalName()));
                            return null;
                        }
                        hashMap.put(entry.getKey(), zzl2);
                    }
                    return hashMap;
                }
            }
        }
        return null;
    }

    public static zzbit zzm(zzbit<?> zzbitVar) {
        if (zzbitVar instanceof zzbiz) {
            HashSet<String> hashSet = new HashSet();
            Map<String, zzbit<?>> zzTi = ((zzbiz) zzbitVar).zzTi();
            for (Map.Entry<String, zzbit<?>> entry : zzTi.entrySet()) {
                if (entry.getValue() == zzbix.zzbMS) {
                    hashSet.add(entry.getKey());
                }
            }
            for (String str : hashSet) {
                zzTi.remove(str);
            }
        }
        return zzbitVar;
    }

    public static boolean zzn(zzbit zzbitVar) {
        return (zzbitVar instanceof zzbiu) || (zzbitVar instanceof zzbiv) || (zzbitVar instanceof zzbjb) || zzbitVar == zzbix.zzbMR || zzbitVar == zzbix.zzbMS;
    }

    public static boolean zzo(zzbit zzbitVar) {
        return zzbitVar == zzbix.zzbMQ || zzbitVar == zzbix.zzbMP || ((zzbitVar instanceof zzbix) && ((zzbix) zzbitVar).zzTp());
    }
}
