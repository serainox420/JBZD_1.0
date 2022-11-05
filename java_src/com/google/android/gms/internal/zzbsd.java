package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbny;
import com.google.firebase.database.DatabaseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbsd {
    public static int zza(zzbrq zzbrqVar, zzbsc zzbscVar, zzbrq zzbrqVar2, zzbsc zzbscVar2) {
        int compareTo = zzbscVar.compareTo(zzbscVar2);
        return compareTo != 0 ? compareTo : zzbrqVar.compareTo(zzbrqVar2);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[Catch: ClassCastException -> 0x00d2, TryCatch #0 {ClassCastException -> 0x00d2, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x0010, B:7:0x001a, B:9:0x0022, B:11:0x002b, B:13:0x0030, B:15:0x0034, B:16:0x003d, B:18:0x0041, B:19:0x004a, B:21:0x004e, B:22:0x0060, B:24:0x0064, B:25:0x006d, B:27:0x0071, B:28:0x007a, B:30:0x007e, B:61:0x012e, B:63:0x0144, B:64:0x0148, B:65:0x014b, B:66:0x014c, B:32:0x0082, B:34:0x0086, B:36:0x0090, B:37:0x0097, B:38:0x00a8, B:40:0x00ae, B:42:0x00bc, B:44:0x00ca, B:50:0x00dc, B:52:0x00e2, B:60:0x0121, B:53:0x00e8, B:54:0x00f4, B:56:0x00fa, B:58:0x0117, B:59:0x011e), top: B:70:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[Catch: ClassCastException -> 0x00d2, TryCatch #0 {ClassCastException -> 0x00d2, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x0010, B:7:0x001a, B:9:0x0022, B:11:0x002b, B:13:0x0030, B:15:0x0034, B:16:0x003d, B:18:0x0041, B:19:0x004a, B:21:0x004e, B:22:0x0060, B:24:0x0064, B:25:0x006d, B:27:0x0071, B:28:0x007a, B:30:0x007e, B:61:0x012e, B:63:0x0144, B:64:0x0148, B:65:0x014b, B:66:0x014c, B:32:0x0082, B:34:0x0086, B:36:0x0090, B:37:0x0097, B:38:0x00a8, B:40:0x00ae, B:42:0x00bc, B:44:0x00ca, B:50:0x00dc, B:52:0x00e2, B:60:0x0121, B:53:0x00e8, B:54:0x00f4, B:56:0x00fa, B:58:0x0117, B:59:0x011e), top: B:70:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzbsc zza(Object obj, zzbsc zzbscVar) throws DatabaseException {
        Object obj2;
        HashMap hashMap;
        try {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (map.containsKey(".priority")) {
                    zzbscVar = zzbsg.zzau(map.get(".priority"));
                }
                if (map.containsKey(".value")) {
                    obj2 = map.get(".value");
                    if (obj2 != null) {
                        return zzbrv.zzaaZ();
                    }
                    if (obj2 instanceof String) {
                        return new zzbsi((String) obj2, zzbscVar);
                    }
                    if (obj2 instanceof Long) {
                        return new zzbsa((Long) obj2, zzbscVar);
                    }
                    if (obj2 instanceof Integer) {
                        return new zzbsa(Long.valueOf(((Integer) obj2).intValue()), zzbscVar);
                    }
                    if (obj2 instanceof Double) {
                        return new zzbru((Double) obj2, zzbscVar);
                    }
                    if (obj2 instanceof Boolean) {
                        return new zzbrp((Boolean) obj2, zzbscVar);
                    }
                    if (!(obj2 instanceof Map) && !(obj2 instanceof List)) {
                        String valueOf = String.valueOf(obj2.getClass().toString());
                        throw new DatabaseException(valueOf.length() != 0 ? "Failed to parse node with class ".concat(valueOf) : new String("Failed to parse node with class "));
                    }
                    if (obj2 instanceof Map) {
                        Map map2 = (Map) obj2;
                        if (map2.containsKey(".sv")) {
                            return new zzbrt(map2, zzbscVar);
                        }
                        HashMap hashMap2 = new HashMap(map2.size());
                        for (String str : map2.keySet()) {
                            if (!str.startsWith(".")) {
                                zzbsc zzat = zzat(map2.get(str));
                                if (!zzat.isEmpty()) {
                                    hashMap2.put(zzbrq.zzja(str), zzat);
                                }
                            }
                        }
                        hashMap = hashMap2;
                    } else {
                        List list = (List) obj2;
                        HashMap hashMap3 = new HashMap(list.size());
                        for (int i = 0; i < list.size(); i++) {
                            String sb = new StringBuilder(11).append(i).toString();
                            zzbsc zzat2 = zzat(list.get(i));
                            if (!zzat2.isEmpty()) {
                                hashMap3.put(zzbrq.zzja(sb), zzat2);
                            }
                        }
                        hashMap = hashMap3;
                    }
                    return hashMap.isEmpty() ? zzbrv.zzaaZ() : new zzbrr(zzbny.zza.zzb(hashMap, zzbrr.zzciW), zzbscVar);
                }
            }
            obj2 = obj;
            if (obj2 != null) {
            }
        } catch (ClassCastException e) {
            throw new DatabaseException("Failed to parse node", e);
        }
    }

    public static zzbsc zzat(Object obj) throws DatabaseException {
        return zza(obj, zzbsg.zzabl());
    }
}
