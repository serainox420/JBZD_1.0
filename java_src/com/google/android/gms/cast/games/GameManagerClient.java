package com.google.android.gms.cast.games;

import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzye;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class GameManagerClient {
    public static final int GAMEPLAY_STATE_LOADING = 1;
    public static final int GAMEPLAY_STATE_PAUSED = 3;
    public static final int GAMEPLAY_STATE_RUNNING = 2;
    public static final int GAMEPLAY_STATE_SHOWING_INFO_SCREEN = 4;
    public static final int GAMEPLAY_STATE_UNKNOWN = 0;
    public static final int LOBBY_STATE_CLOSED = 2;
    public static final int LOBBY_STATE_OPEN = 1;
    public static final int LOBBY_STATE_UNKNOWN = 0;
    public static final int PLAYER_STATE_AVAILABLE = 3;
    public static final int PLAYER_STATE_DROPPED = 1;
    public static final int PLAYER_STATE_IDLE = 5;
    public static final int PLAYER_STATE_PLAYING = 6;
    public static final int PLAYER_STATE_QUIT = 2;
    public static final int PLAYER_STATE_READY = 4;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int STATUS_INCORRECT_VERSION = 2150;
    public static final int STATUS_TOO_MANY_PLAYERS = 2151;
    private final zzye zzauZ;

    /* loaded from: classes2.dex */
    public interface GameManagerInstanceResult extends Result {
        GameManagerClient getGameManagerClient();
    }

    /* loaded from: classes2.dex */
    public interface GameManagerResult extends Result {
        JSONObject getExtraMessageData();

        String getPlayerId();

        long getRequestId();
    }

    /* loaded from: classes2.dex */
    public interface Listener {
        void onGameMessageReceived(String str, JSONObject jSONObject);

        void onStateChanged(GameManagerState gameManagerState, GameManagerState gameManagerState2);
    }

    public GameManagerClient(zzye zzyeVar) {
        this.zzauZ = zzyeVar;
    }

    public static PendingResult<GameManagerInstanceResult> getInstanceFor(GoogleApiClient googleApiClient, String str) throws IllegalArgumentException {
        return zza(new zzye(googleApiClient, str, Cast.CastApi));
    }

    static PendingResult<GameManagerInstanceResult> zza(zzye zzyeVar) throws IllegalArgumentException {
        return zzyeVar.zza(new GameManagerClient(zzyeVar));
    }

    private PendingResult<GameManagerResult> zza(String str, int i, JSONObject jSONObject) throws IllegalStateException {
        return this.zzauZ.zza(str, i, jSONObject);
    }

    public void dispose() {
        this.zzauZ.dispose();
    }

    public synchronized GameManagerState getCurrentState() throws IllegalStateException {
        return this.zzauZ.getCurrentState();
    }

    public String getLastUsedPlayerId() throws IllegalStateException {
        return this.zzauZ.getLastUsedPlayerId();
    }

    public boolean isDisposed() {
        return this.zzauZ.isDisposed();
    }

    public void sendGameMessage(String str, JSONObject jSONObject) throws IllegalStateException {
        this.zzauZ.sendGameMessage(str, jSONObject);
    }

    public void sendGameMessage(JSONObject jSONObject) throws IllegalStateException {
        sendGameMessage(getLastUsedPlayerId(), jSONObject);
    }

    public PendingResult<GameManagerResult> sendGameRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return this.zzauZ.sendGameRequest(str, jSONObject);
    }

    public PendingResult<GameManagerResult> sendGameRequest(JSONObject jSONObject) throws IllegalStateException {
        return sendGameRequest(getLastUsedPlayerId(), jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerAvailableRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return zza(str, 3, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerAvailableRequest(JSONObject jSONObject) throws IllegalStateException {
        return zza(getLastUsedPlayerId(), 3, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerIdleRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return zza(str, 5, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerIdleRequest(JSONObject jSONObject) throws IllegalStateException {
        return zza(getLastUsedPlayerId(), 5, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerPlayingRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return zza(str, 6, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerPlayingRequest(JSONObject jSONObject) throws IllegalStateException {
        return zza(getLastUsedPlayerId(), 6, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerQuitRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return zza(str, 2, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerQuitRequest(JSONObject jSONObject) throws IllegalStateException {
        return zza(getLastUsedPlayerId(), 2, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerReadyRequest(String str, JSONObject jSONObject) throws IllegalStateException {
        return zza(str, 4, jSONObject);
    }

    public PendingResult<GameManagerResult> sendPlayerReadyRequest(JSONObject jSONObject) throws IllegalStateException {
        return zza(getLastUsedPlayerId(), 4, jSONObject);
    }

    public void setListener(Listener listener) {
        this.zzauZ.setListener(listener);
    }

    public void setSessionLabel(String str) {
        this.zzauZ.setSessionLabel(str);
    }
}
