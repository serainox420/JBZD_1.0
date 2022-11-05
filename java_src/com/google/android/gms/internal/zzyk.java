package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzyk {
    private final int zzaoJ;
    private final JSONObject zzavM;
    private final String zzavw;

    public zzyk(String str, int i, JSONObject jSONObject) {
        this.zzavw = str;
        this.zzaoJ = i;
        this.zzavM = jSONObject;
    }

    public zzyk(JSONObject jSONObject) throws JSONException {
        this(jSONObject.optString("playerId"), jSONObject.optInt("playerState"), jSONObject.optJSONObject("playerData"));
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzyk)) {
            return false;
        }
        zzyk zzykVar = (zzyk) obj;
        return this.zzaoJ == zzykVar.getPlayerState() && zzyr.zza(this.zzavw, zzykVar.getPlayerId()) && com.google.android.gms.common.util.zzq.zze(this.zzavM, zzykVar.getPlayerData());
    }

    public JSONObject getPlayerData() {
        return this.zzavM;
    }

    public String getPlayerId() {
        return this.zzavw;
    }

    public int getPlayerState() {
        return this.zzaoJ;
    }
}
