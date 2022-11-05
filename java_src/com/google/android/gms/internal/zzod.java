package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzod {
    public static void zza(Context context, Runnable runnable) {
        com.google.android.gms.common.internal.zzac.zzdj("Adapters must be initialized on the main thread.");
        Map<String, zzjr> zzkf = com.google.android.gms.ads.internal.zzw.zzcQ().zzkw().zzkf();
        if (zzkf == null || zzkf.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzpk.zzc("Could not initialize rewarded ads.", th);
                return;
            }
        }
        zzns zzjE = zzns.zzjE();
        if (zzjE == null) {
            return;
        }
        zza(context, zzkf.values(), zzjE);
    }

    static void zza(Context context, Collection<zzjr> collection, zzns zznsVar) {
        HashMap hashMap = new HashMap();
        IObjectWrapper zzA = com.google.android.gms.dynamic.zzd.zzA(context);
        for (zzjr zzjrVar : collection) {
            for (zzjq zzjqVar : zzjrVar.zzKD) {
                String str = zzjqVar.zzKv;
                for (String str2 : zzjqVar.zzKp) {
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, new ArrayList());
                    }
                    if (str != null) {
                        ((Collection) hashMap.get(str2)).add(str);
                    }
                }
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            String str3 = (String) entry.getKey();
            try {
                zzol zzaN = zznsVar.zzaN(str3);
                if (zzaN != null) {
                    zzkb zzjN = zzaN.zzjN();
                    if (!zzjN.isInitialized() && zzjN.zzhg()) {
                        zzjN.zza(zzA, zzaN.zzjO(), (List) entry.getValue());
                        String valueOf = String.valueOf(str3);
                        zzpk.zzbf(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                    }
                }
            } catch (Throwable th) {
                zzpk.zzc(new StringBuilder(String.valueOf(str3).length() + 56).append("Failed to initialize rewarded video mediation adapter \"").append(str3).append("\"").toString(), th);
            }
        }
    }
}
