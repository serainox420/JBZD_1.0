package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbsu {
    private final String zzbxT;
    private final Map<String, Object> zzckz;

    public zzbsu(String str, Map<String, Object> map) {
        this.zzbxT = str;
        this.zzckz = map;
    }

    public static zzbsu zzjd(String str) {
        if (!str.startsWith("gauth|")) {
            return null;
        }
        try {
            Map<String, Object> zzje = zzbsv.zzje(str.substring("gauth|".length()));
            return new zzbsu((String) zzje.get("token"), (Map) zzje.get("auth"));
        } catch (IOException e) {
            throw new RuntimeException("Failed to parse gauth token", e);
        }
    }

    public String getToken() {
        return this.zzbxT;
    }

    public Map<String, Object> zzabH() {
        return this.zzckz;
    }
}
