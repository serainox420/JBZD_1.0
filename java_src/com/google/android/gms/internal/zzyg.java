package com.google.android.gms.internal;

import com.google.android.gms.games.Games;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzyg {
    private static final zzyz zzanA = new zzyz("GameManagerMessage");
    protected final int zzavC;
    protected final int zzavD;
    protected final String zzavE;
    protected final int zzavF;
    protected final int zzavG;
    protected final List<zzyk> zzavH;
    protected final JSONObject zzavI;
    protected final String zzavJ;
    protected final String zzavK;
    protected final zzyf zzavd;
    protected final String zzavw;
    protected final long zzavx;
    protected final JSONObject zzavy;

    public zzyg(int i, int i2, String str, JSONObject jSONObject, int i3, int i4, List<zzyk> list, JSONObject jSONObject2, String str2, String str3, long j, String str4, zzyf zzyfVar) {
        this.zzavC = i;
        this.zzavD = i2;
        this.zzavE = str;
        this.zzavy = jSONObject;
        this.zzavF = i3;
        this.zzavG = i4;
        this.zzavH = list;
        this.zzavI = jSONObject2;
        this.zzavJ = str2;
        this.zzavw = str3;
        this.zzavx = j;
        this.zzavK = str4;
        this.zzavd = zzyfVar;
    }

    private static List<zzyk> zzb(JSONArray jSONArray) {
        zzyk zzykVar;
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null) {
            return arrayList;
        }
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                try {
                    zzykVar = new zzyk(optJSONObject);
                } catch (JSONException e) {
                    zzanA.zzc(e, "Exception when attempting to parse PlayerInfoMessageComponent at index %d", Integer.valueOf(i));
                    zzykVar = null;
                }
                if (zzykVar != null) {
                    arrayList.add(zzykVar);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzyg zzr(JSONObject jSONObject) {
        int optInt = jSONObject.optInt("type", -1);
        try {
        } catch (JSONException e) {
            zzanA.zzc(e, "Exception while parsing GameManagerMessage from json", new Object[0]);
        }
        switch (optInt) {
            case 1:
                zzyf zzyfVar = null;
                JSONObject optJSONObject = jSONObject.optJSONObject("gameManagerConfig");
                if (optJSONObject != null) {
                    zzyfVar = new zzyf(optJSONObject);
                }
                return new zzyg(optInt, jSONObject.optInt("statusCode"), jSONObject.optString("errorDescription"), jSONObject.optJSONObject("extraMessageData"), jSONObject.optInt("gameplayState"), jSONObject.optInt("lobbyState"), zzb(jSONObject.optJSONArray(Games.EXTRA_PLAYER_IDS)), jSONObject.optJSONObject("gameData"), jSONObject.optString("gameStatusText"), jSONObject.optString("playerId"), jSONObject.optLong("requestId"), jSONObject.optString("playerToken"), zzyfVar);
            case 2:
                return new zzyg(optInt, jSONObject.optInt("statusCode"), jSONObject.optString("errorDescription"), jSONObject.optJSONObject("extraMessageData"), jSONObject.optInt("gameplayState"), jSONObject.optInt("lobbyState"), zzb(jSONObject.optJSONArray(Games.EXTRA_PLAYER_IDS)), jSONObject.optJSONObject("gameData"), jSONObject.optString("gameStatusText"), jSONObject.optString("playerId"), -1L, null, null);
            default:
                zzanA.zzf("Unrecognized Game Message type %d", Integer.valueOf(optInt));
                return null;
        }
    }

    public final JSONObject getExtraMessageData() {
        return this.zzavy;
    }

    public final JSONObject getGameData() {
        return this.zzavI;
    }

    public final int getGameplayState() {
        return this.zzavF;
    }

    public final int getLobbyState() {
        return this.zzavG;
    }

    public final String getPlayerId() {
        return this.zzavw;
    }

    public final long getRequestId() {
        return this.zzavx;
    }

    public final int getStatusCode() {
        return this.zzavD;
    }

    public final int zzus() {
        return this.zzavC;
    }

    public final String zzut() {
        return this.zzavE;
    }

    public final List<zzyk> zzuu() {
        return this.zzavH;
    }

    public final String zzuv() {
        return this.zzavJ;
    }

    public final String zzuw() {
        return this.zzavK;
    }

    public final zzyf zzux() {
        return this.zzavd;
    }
}
