package com.google.android.gms.internal;

import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class zzyi implements GameManagerState {
    private final int zzavA;
    private final int zzavF;
    private final int zzavG;
    private final JSONObject zzavI;
    private final String zzavJ;
    private final Map<String, PlayerInfo> zzavL;
    private final String zzavz;

    public zzyi(int i, int i2, String str, JSONObject jSONObject, Collection<PlayerInfo> collection, String str2, int i3) {
        this.zzavG = i;
        this.zzavF = i2;
        this.zzavJ = str;
        this.zzavI = jSONObject;
        this.zzavz = str2;
        this.zzavA = i3;
        this.zzavL = new HashMap(collection.size());
        for (PlayerInfo playerInfo : collection) {
            this.zzavL.put(playerInfo.getPlayerId(), playerInfo);
        }
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2 = true;
        if (obj == null || !(obj instanceof GameManagerState)) {
            return false;
        }
        GameManagerState gameManagerState = (GameManagerState) obj;
        if (getPlayers().size() != gameManagerState.getPlayers().size()) {
            return false;
        }
        for (PlayerInfo playerInfo : getPlayers()) {
            boolean z3 = false;
            for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
                if (!zzyr.zza(playerInfo.getPlayerId(), playerInfo2.getPlayerId())) {
                    z = z3;
                } else if (!zzyr.zza(playerInfo, playerInfo2)) {
                    return false;
                } else {
                    z = true;
                }
                z3 = z;
            }
            if (!z3) {
                return false;
            }
        }
        if (this.zzavG != gameManagerState.getLobbyState() || this.zzavF != gameManagerState.getGameplayState() || this.zzavA != gameManagerState.getMaxPlayers() || !zzyr.zza(this.zzavz, gameManagerState.getApplicationName()) || !zzyr.zza(this.zzavJ, gameManagerState.getGameStatusText()) || !com.google.android.gms.common.util.zzq.zze(this.zzavI, gameManagerState.getGameData())) {
            z2 = false;
        }
        return z2;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public CharSequence getApplicationName() {
        return this.zzavz;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public List<PlayerInfo> getConnectedControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected() && playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public List<PlayerInfo> getConnectedPlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isConnected()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public List<PlayerInfo> getControllablePlayers() {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.isControllable()) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public JSONObject getGameData() {
        return this.zzavI;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public CharSequence getGameStatusText() {
        return this.zzavJ;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public int getGameplayState() {
        return this.zzavF;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public Collection<String> getListOfChangedPlayers(GameManagerState gameManagerState) {
        HashSet hashSet = new HashSet();
        for (PlayerInfo playerInfo : getPlayers()) {
            PlayerInfo player = gameManagerState.getPlayer(playerInfo.getPlayerId());
            if (player == null || !playerInfo.equals(player)) {
                hashSet.add(playerInfo.getPlayerId());
            }
        }
        for (PlayerInfo playerInfo2 : gameManagerState.getPlayers()) {
            if (getPlayer(playerInfo2.getPlayerId()) == null) {
                hashSet.add(playerInfo2.getPlayerId());
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public int getLobbyState() {
        return this.zzavG;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public int getMaxPlayers() {
        return this.zzavA;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public PlayerInfo getPlayer(String str) {
        if (str == null) {
            return null;
        }
        return this.zzavL.get(str);
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public Collection<PlayerInfo> getPlayers() {
        return Collections.unmodifiableCollection(this.zzavL.values());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public List<PlayerInfo> getPlayersInState(int i) {
        ArrayList arrayList = new ArrayList();
        for (PlayerInfo playerInfo : getPlayers()) {
            if (playerInfo.getPlayerState() == i) {
                arrayList.add(playerInfo);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasGameDataChanged(GameManagerState gameManagerState) {
        return !com.google.android.gms.common.util.zzq.zze(this.zzavI, gameManagerState.getGameData());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasGameStatusTextChanged(GameManagerState gameManagerState) {
        return !zzyr.zza(this.zzavJ, gameManagerState.getGameStatusText());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasGameplayStateChanged(GameManagerState gameManagerState) {
        return this.zzavF != gameManagerState.getGameplayState();
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasLobbyStateChanged(GameManagerState gameManagerState) {
        return this.zzavG != gameManagerState.getLobbyState();
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasPlayerChanged(String str, GameManagerState gameManagerState) {
        return !zzyr.zza(getPlayer(str), gameManagerState.getPlayer(str));
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasPlayerDataChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || !com.google.android.gms.common.util.zzq.zze(player.getPlayerData(), player2.getPlayerData());
    }

    @Override // com.google.android.gms.cast.games.GameManagerState
    public boolean hasPlayerStateChanged(String str, GameManagerState gameManagerState) {
        PlayerInfo player = getPlayer(str);
        PlayerInfo player2 = gameManagerState.getPlayer(str);
        if (player == null && player2 == null) {
            return false;
        }
        return player == null || player2 == null || player.getPlayerState() != player2.getPlayerState();
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzavG), Integer.valueOf(this.zzavF), this.zzavL, this.zzavJ, this.zzavI, this.zzavz, Integer.valueOf(this.zzavA));
    }
}
