package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzyf {
    private final int zzavA;
    private final String zzavB;
    private final String zzavz;

    public zzyf(String str, int i, String str2) {
        this.zzavz = str;
        this.zzavA = i;
        this.zzavB = str2;
    }

    public zzyf(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("applicationName"), jSONObject.optInt("maxPlayers"), jSONObject.optString("version"));
    }

    public final int getMaxPlayers() {
        return this.zzavA;
    }

    public final String getVersion() {
        return this.zzavB;
    }

    public final String zzur() {
        return this.zzavz;
    }
}
