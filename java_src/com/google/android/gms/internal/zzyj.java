package com.google.android.gms.internal;

import com.google.android.gms.cast.games.PlayerInfo;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzyj implements PlayerInfo {
    private final int zzaoJ;
    private final JSONObject zzavM;
    private final boolean zzavN;
    private final String zzavw;

    public zzyj(String str, int i, JSONObject jSONObject, boolean z) {
        this.zzavw = str;
        this.zzaoJ = i;
        this.zzavM = jSONObject;
        this.zzavN = z;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof PlayerInfo)) {
            return false;
        }
        PlayerInfo playerInfo = (PlayerInfo) obj;
        return this.zzavN == playerInfo.isControllable() && this.zzaoJ == playerInfo.getPlayerState() && zzyr.zza(this.zzavw, playerInfo.getPlayerId()) && com.google.android.gms.common.util.zzq.zze(this.zzavM, playerInfo.getPlayerData());
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public JSONObject getPlayerData() {
        return this.zzavM;
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public String getPlayerId() {
        return this.zzavw;
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public int getPlayerState() {
        return this.zzaoJ;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzavw, Integer.valueOf(this.zzaoJ), this.zzavM, Boolean.valueOf(this.zzavN));
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public boolean isConnected() {
        switch (this.zzaoJ) {
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.cast.games.PlayerInfo
    public boolean isControllable() {
        return this.zzavN;
    }
}
