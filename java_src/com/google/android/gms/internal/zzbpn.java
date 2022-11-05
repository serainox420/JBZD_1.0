package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbpp;
import com.google.android.gms.internal.zzbrr;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpn {
    public static zzboy zza(zzboy zzboyVar, Map<String, Object> map) {
        zzboy zzYo = zzboy.zzYo();
        Iterator<Map.Entry<zzbph, zzbsc>> it = zzboyVar.iterator();
        while (true) {
            zzboy zzboyVar2 = zzYo;
            if (it.hasNext()) {
                Map.Entry<zzbph, zzbsc> next = it.next();
                zzYo = zzboyVar2.zze(next.getKey(), zza(next.getValue(), map));
            } else {
                return zzboyVar2;
            }
        }
    }

    public static zzbpp zza(zzbpp zzbppVar, final Map<String, Object> map) {
        final zzbpp zzbppVar2 = new zzbpp();
        zzbppVar.zza(new zzbph(""), new zzbpp.zzb() { // from class: com.google.android.gms.internal.zzbpn.1
            @Override // com.google.android.gms.internal.zzbpp.zzb
            public void zzf(zzbph zzbphVar, zzbsc zzbscVar) {
                zzbpp.this.zzh(zzbphVar, zzbpn.zza(zzbscVar, (Map<String, Object>) map));
            }
        });
        return zzbppVar2;
    }

    public static zzbsc zza(zzbsc zzbscVar, final Map<String, Object> map) {
        Object value = zzbscVar.zzaaO().getValue();
        if (value instanceof Map) {
            Map map2 = (Map) value;
            if (map2.containsKey(".sv")) {
                value = map.get((String) map2.get(".sv"));
            }
        }
        zzbsc zzau = zzbsg.zzau(value);
        if (zzbscVar.zzaaN()) {
            Object zza = zza(zzbscVar.getValue(), map);
            return (!zza.equals(zzbscVar.getValue()) || !zzau.equals(zzbscVar.zzaaO())) ? zzbsd.zza(zza, zzau) : zzbscVar;
        } else if (zzbscVar.isEmpty()) {
            return zzbscVar;
        } else {
            zzbrr zzbrrVar = (zzbrr) zzbscVar;
            final zzbpo zzbpoVar = new zzbpo(zzbrrVar);
            zzbrrVar.zza(new zzbrr.zza() { // from class: com.google.android.gms.internal.zzbpn.2
                @Override // com.google.android.gms.internal.zzbrr.zza
                public void zzb(zzbrq zzbrqVar, zzbsc zzbscVar2) {
                    zzbsc zza2 = zzbpn.zza(zzbscVar2, (Map<String, Object>) map);
                    if (zza2 != zzbscVar2) {
                        zzbpoVar.zzg(new zzbph(zzbrqVar.asString()), zza2);
                    }
                }
            });
            return !zzbpoVar.zzZf().zzaaO().equals(zzau) ? zzbpoVar.zzZf().zzg(zzau) : zzbpoVar.zzZf();
        }
    }

    public static Object zza(Object obj, Map<String, Object> map) {
        if (obj instanceof Map) {
            Map map2 = (Map) obj;
            if (!map2.containsKey(".sv")) {
                return obj;
            }
            String str = (String) map2.get(".sv");
            return map.containsKey(str) ? map.get(str) : obj;
        }
        return obj;
    }

    public static Map<String, Object> zza(zzbsw zzbswVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("timestamp", Long.valueOf(zzbswVar.zzabI()));
        return hashMap;
    }
}
