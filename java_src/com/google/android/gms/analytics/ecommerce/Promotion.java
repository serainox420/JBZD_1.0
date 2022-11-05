package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzf;
import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class Promotion {
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_VIEW = "view";
    Map<String, String> zzadz = new HashMap();

    void put(String str, String str2) {
        zzac.zzb(str, "Name should be non-null");
        this.zzadz.put(str, str2);
    }

    public Promotion setCreative(String str) {
        put("cr", str);
        return this;
    }

    public Promotion setId(String str) {
        put("id", str);
        return this;
    }

    public Promotion setName(String str) {
        put("nm", str);
        return this;
    }

    public Promotion setPosition(String str) {
        put("ps", str);
        return this;
    }

    public String toString() {
        return zzf.zzS(this.zzadz);
    }

    public Map<String, String> zzbM(String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : this.zzadz.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(entry.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), entry.getValue());
        }
        return hashMap;
    }
}
