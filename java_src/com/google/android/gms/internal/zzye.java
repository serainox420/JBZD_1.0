package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.games.GameManagerClient;
import com.google.android.gms.cast.games.GameManagerState;
import com.google.android.gms.cast.games.PlayerInfo;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class zzye extends zzyo {
    static final String NAMESPACE = zzyr.zzcR("com.google.cast.games");
    private static final zzyz zzanA = new zzyz("GameManagerChannel");
    private final SharedPreferences zzBd;
    private final Cast.CastApi zzaql;
    private final GoogleApiClient zzasD;
    private final Map<String, String> zzava;
    private final List<zzzd> zzavb;
    private final String zzavc;
    private zzyf zzavd;
    private boolean zzave;
    private GameManagerState zzavf;
    private GameManagerState zzavg;
    private String zzavh;
    private JSONObject zzavi;
    private long zzavj;
    private GameManagerClient.Listener zzavk;
    private String zzavl;
    private final com.google.android.gms.common.util.zze zzuP;

    /* loaded from: classes2.dex */
    public abstract class zza extends zzb<GameManagerClient.GameManagerResult> {
        public zza() {
            super(zzye.this);
            this.zzapH = new zzzc() { // from class: com.google.android.gms.internal.zzye.zza.1
                @Override // com.google.android.gms.internal.zzzc
                public void zzD(long j) {
                    zza.this.zzb((zza) ((GameManagerClient.GameManagerResult) zza.this.zzc(new Status(2103))));
                }

                @Override // com.google.android.gms.internal.zzzc
                public void zza(long j, int i, Object obj) {
                    try {
                        if (obj == null) {
                            zza.this.zzb((zza) new zze(new Status(i, null, null), null, j, null));
                            return;
                        }
                        zzyg zzygVar = (zzyg) obj;
                        String playerId = zzygVar.getPlayerId();
                        if (i == 0 && playerId != null) {
                            zzye.this.zzavl = playerId;
                        }
                        zza.this.zzb((zza) new zze(new Status(i, zzygVar.zzut(), null), playerId, zzygVar.getRequestId(), zzygVar.getExtraMessageData()));
                    } catch (ClassCastException e) {
                        zza.this.zzb((zza) ((GameManagerClient.GameManagerResult) zza.this.zzc(new Status(13))));
                    }
                }
            };
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzs */
        public GameManagerClient.GameManagerResult zzc(Status status) {
            return new zze(status, null, -1L, null);
        }
    }

    /* loaded from: classes2.dex */
    public abstract class zzb<R extends Result> extends zzyn<R> {
        protected zzzc zzapH;

        public zzb(zzye zzyeVar) {
            super(zzyeVar.zzasD);
        }

        public abstract void execute();

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzyq zzyqVar) {
            execute();
        }

        public zzzc zzuq() {
            return this.zzapH;
        }
    }

    /* loaded from: classes2.dex */
    public abstract class zzc extends zzb<GameManagerClient.GameManagerInstanceResult> {
        private GameManagerClient zzavu;

        public zzc(GameManagerClient gameManagerClient) {
            super(zzye.this);
            this.zzavu = gameManagerClient;
            this.zzapH = new zzzc() { // from class: com.google.android.gms.internal.zzye.zzc.1
                @Override // com.google.android.gms.internal.zzzc
                public void zzD(long j) {
                    zzc.this.zzb((zzc) ((GameManagerClient.GameManagerInstanceResult) zzc.this.zzc(new Status(2103))));
                }

                @Override // com.google.android.gms.internal.zzzc
                public void zza(long j, int i, Object obj) {
                    try {
                        if (obj == null) {
                            zzc.this.zzb((zzc) new zzd(new Status(i, null, null), zzc.this.zzavu));
                        } else {
                            zzyg zzygVar = (zzyg) obj;
                            zzyf zzux = zzygVar.zzux();
                            if (zzux == null || zzyr.zza("1.0.0", zzux.getVersion())) {
                                zzc.this.zzb((zzc) new zzd(new Status(i, zzygVar.zzut(), null), zzc.this.zzavu));
                            } else {
                                zzye.this.zzavd = null;
                                zzc.this.zzb((zzc) ((GameManagerClient.GameManagerInstanceResult) zzc.this.zzc(new Status(GameManagerClient.STATUS_INCORRECT_VERSION, String.format(Locale.ROOT, "Incorrect Game Manager SDK version. Receiver: %s Sender: %s", zzux.getVersion(), "1.0.0")))));
                            }
                        }
                    } catch (ClassCastException e) {
                        zzc.this.zzb((zzc) ((GameManagerClient.GameManagerInstanceResult) zzc.this.zzc(new Status(13))));
                    }
                }
            };
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzt */
        public GameManagerClient.GameManagerInstanceResult zzc(Status status) {
            return new zzd(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zzd implements GameManagerClient.GameManagerInstanceResult {
        private final Status zzair;
        private final GameManagerClient zzavu;

        zzd(Status status, GameManagerClient gameManagerClient) {
            this.zzair = status;
            this.zzavu = gameManagerClient;
        }

        @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerInstanceResult
        public GameManagerClient getGameManagerClient() {
            return this.zzavu;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zze implements GameManagerClient.GameManagerResult {
        private final Status zzair;
        private final String zzavw;
        private final long zzavx;
        private final JSONObject zzavy;

        zze(Status status, String str, long j, JSONObject jSONObject) {
            this.zzair = status;
            this.zzavw = str;
            this.zzavx = j;
            this.zzavy = jSONObject;
        }

        @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
        public JSONObject getExtraMessageData() {
            return this.zzavy;
        }

        @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
        public String getPlayerId() {
            return this.zzavw;
        }

        @Override // com.google.android.gms.cast.games.GameManagerClient.GameManagerResult
        public long getRequestId() {
            return this.zzavx;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    public zzye(GoogleApiClient googleApiClient, String str, Cast.CastApi castApi) throws IllegalArgumentException, IllegalStateException {
        super(NAMESPACE, "CastGameManagerChannel", null);
        this.zzava = new ConcurrentHashMap();
        this.zzave = false;
        this.zzavj = 0L;
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("castSessionId cannot be null.");
        }
        if (googleApiClient == null || !googleApiClient.isConnected() || !googleApiClient.hasConnectedApi(Cast.API)) {
            throw new IllegalArgumentException("googleApiClient needs to be connected and contain the Cast.API API.");
        }
        this.zzuP = com.google.android.gms.common.util.zzi.zzzc();
        this.zzavb = new ArrayList();
        this.zzavc = str;
        this.zzaql = castApi;
        this.zzasD = googleApiClient;
        Context applicationContext = googleApiClient.getContext().getApplicationContext();
        this.zzBd = applicationContext.getApplicationContext().getSharedPreferences(String.format(Locale.ROOT, "%s.%s", applicationContext.getPackageName(), "game_manager_channel_data"), 0);
        this.zzavg = null;
        this.zzavf = new zzyi(0, 0, "", null, new ArrayList(), "", -1);
    }

    private JSONObject zza(long j, String str, int i, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("requestId", j);
            jSONObject2.put("type", i);
            jSONObject2.put("extraMessageData", jSONObject);
            jSONObject2.put("playerId", str);
            jSONObject2.put("playerToken", zzcO(str));
            return jSONObject2;
        } catch (JSONException e) {
            zzanA.zzf("JSONException when trying to create a message: %s", e.getMessage());
            return null;
        }
    }

    private synchronized void zza(zzyg zzygVar) {
        boolean z = true;
        synchronized (this) {
            if (zzygVar.zzus() != 1) {
                z = false;
            }
            this.zzavg = this.zzavf;
            if (z && zzygVar.zzux() != null) {
                this.zzavd = zzygVar.zzux();
            }
            if (isInitialized()) {
                ArrayList arrayList = new ArrayList();
                for (zzyk zzykVar : zzygVar.zzuu()) {
                    String playerId = zzykVar.getPlayerId();
                    arrayList.add(new zzyj(playerId, zzykVar.getPlayerState(), zzykVar.getPlayerData(), this.zzava.containsKey(playerId)));
                }
                this.zzavf = new zzyi(zzygVar.getLobbyState(), zzygVar.getGameplayState(), zzygVar.zzuv(), zzygVar.getGameData(), arrayList, this.zzavd.zzur(), this.zzavd.getMaxPlayers());
                PlayerInfo player = this.zzavf.getPlayer(zzygVar.getPlayerId());
                if (player != null && player.isControllable() && zzygVar.zzus() == 2) {
                    this.zzavh = zzygVar.getPlayerId();
                    this.zzavi = zzygVar.getExtraMessageData();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, int i, JSONObject jSONObject, zzzc zzzcVar) {
        final long j = 1 + this.zzavj;
        this.zzavj = j;
        JSONObject zza2 = zza(j, str, i, jSONObject);
        if (zza2 == null) {
            zzzcVar.zza(-1L, 2001, null);
            zzanA.zzf("Not sending request because it was invalid.", new Object[0]);
            return;
        }
        zzzd zzzdVar = new zzzd(this.zzuP, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
        zzzdVar.zza(j, zzzcVar);
        this.zzavb.add(zzzdVar);
        zzaq(true);
        this.zzaql.sendMessage(this.zzasD, getNamespace(), zza2.toString()).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzye.4
            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(Status status) {
                if (!status.isSuccess()) {
                    zzye.this.zzb(j, status.getStatusCode());
                }
            }
        });
    }

    private void zzb(long j, int i, Object obj) {
        Iterator<zzzd> it = this.zzavb.iterator();
        while (it.hasNext()) {
            if (it.next().zzc(j, i, obj)) {
                it.remove();
            }
        }
    }

    private int zzch(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 2001;
            case 2:
                return CastStatusCodes.NOT_ALLOWED;
            case 3:
                return GameManagerClient.STATUS_INCORRECT_VERSION;
            case 4:
                return GameManagerClient.STATUS_TOO_MANY_PLAYERS;
            default:
                zzanA.zzf(new StringBuilder(53).append("Unknown GameManager protocol status code: ").append(i).toString(), new Object[0]);
                return 13;
        }
    }

    private synchronized void zzul() throws IllegalStateException {
        if (!isInitialized()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel before it is initialized.");
        }
        if (isDisposed()) {
            throw new IllegalStateException("Attempted to perform an operation on the GameManagerChannel after it has been disposed.");
        }
    }

    private void zzum() {
        if (this.zzavk != null) {
            if (this.zzavg != null && !this.zzavf.equals(this.zzavg)) {
                this.zzavk.onStateChanged(this.zzavf, this.zzavg);
            }
            if (this.zzavi != null && this.zzavh != null) {
                this.zzavk.onGameMessageReceived(this.zzavh, this.zzavi);
            }
        }
        this.zzavg = null;
        this.zzavh = null;
        this.zzavi = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzun() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("castSessionId", this.zzavc);
            jSONObject.put("playerTokenMap", new JSONObject(this.zzava));
            this.zzBd.edit().putString("save_data", jSONObject.toString()).commit();
        } catch (JSONException e) {
            zzanA.zzf("Error while saving data: %s", e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzuo() {
        String string = this.zzBd.getString("save_data", null);
        if (string != null) {
            try {
                JSONObject jSONObject = new JSONObject(string);
                if (this.zzavc.equals(jSONObject.getString("castSessionId"))) {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("playerTokenMap");
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        this.zzava.put(next, jSONObject2.getString(next));
                    }
                    this.zzavj = 0L;
                }
            } catch (JSONException e) {
                zzanA.zzf("Error while loading data: %s", e.getMessage());
            }
        }
    }

    public synchronized void dispose() throws IllegalStateException {
        if (!this.zzave) {
            this.zzavf = null;
            this.zzavg = null;
            this.zzavh = null;
            this.zzavi = null;
            this.zzave = true;
            try {
                this.zzaql.removeMessageReceivedCallbacks(this.zzasD, getNamespace());
            } catch (IOException e) {
                zzanA.zzf("Exception while detaching game manager channel.", e);
            }
        }
    }

    public synchronized GameManagerState getCurrentState() throws IllegalStateException {
        zzul();
        return this.zzavf;
    }

    public synchronized String getLastUsedPlayerId() throws IllegalStateException {
        zzul();
        return this.zzavl;
    }

    public synchronized boolean isDisposed() {
        return this.zzave;
    }

    public synchronized boolean isInitialized() {
        return this.zzavd != null;
    }

    public synchronized void sendGameMessage(String str, JSONObject jSONObject) throws IllegalStateException {
        zzul();
        long j = 1 + this.zzavj;
        this.zzavj = j;
        JSONObject zza2 = zza(j, str, 7, jSONObject);
        if (zza2 != null) {
            this.zzaql.sendMessage(this.zzasD, getNamespace(), zza2.toString());
        }
    }

    public synchronized PendingResult<GameManagerClient.GameManagerResult> sendGameRequest(final String str, final JSONObject jSONObject) throws IllegalStateException {
        zzul();
        return this.zzasD.zzb((GoogleApiClient) new zza() { // from class: com.google.android.gms.internal.zzye.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzye.zzb
            public void execute() {
                zzye.this.zza(str, 6, jSONObject, zzuq());
            }
        });
    }

    public synchronized void setListener(GameManagerClient.Listener listener) {
        this.zzavk = listener;
    }

    @Override // com.google.android.gms.internal.zzyo
    protected boolean zzF(long j) {
        boolean z;
        Iterator<zzzd> it = this.zzavb.iterator();
        while (it.hasNext()) {
            if (it.next().zzd(j, 15)) {
                it.remove();
            }
        }
        synchronized (zzzd.zzqS) {
            Iterator<zzzd> it2 = this.zzavb.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                } else if (it2.next().zzuP()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    public synchronized PendingResult<GameManagerClient.GameManagerInstanceResult> zza(GameManagerClient gameManagerClient) throws IllegalArgumentException {
        if (gameManagerClient == null) {
            throw new IllegalArgumentException("gameManagerClient can't be null.");
        }
        return this.zzasD.zzb((GoogleApiClient) new zzc(gameManagerClient) { // from class: com.google.android.gms.internal.zzye.1
            @Override // com.google.android.gms.internal.zzye.zzb
            public void execute() {
                try {
                    zzye.this.zzaql.setMessageReceivedCallbacks(zzye.this.zzasD, zzye.this.getNamespace(), new Cast.MessageReceivedCallback() { // from class: com.google.android.gms.internal.zzye.1.1
                        @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
                        public void onMessageReceived(CastDevice castDevice, String str, String str2) {
                            zzye.this.zzcP(str2);
                        }
                    });
                    zzye.this.zzuo();
                    zzye.this.zzun();
                    zzye.this.zza((String) null, 1100, (JSONObject) null, zzuq());
                } catch (IOException | IllegalStateException e) {
                    zzuq().zza(-1L, 8, null);
                }
            }
        });
    }

    public synchronized PendingResult<GameManagerClient.GameManagerResult> zza(final String str, final int i, final JSONObject jSONObject) throws IllegalStateException {
        zzul();
        return this.zzasD.zzb((GoogleApiClient) new zza() { // from class: com.google.android.gms.internal.zzye.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzye.zzb
            public void execute() {
                int zzci = zzyh.zzci(i);
                if (zzci != 0) {
                    zzye.this.zza(str, zzci, jSONObject, zzuq());
                    return;
                }
                zzuq().zza(-1L, 2001, null);
                zzye.zzanA.zzf("sendPlayerRequest for unsupported playerState: %d", Integer.valueOf(i));
            }
        });
    }

    @Override // com.google.android.gms.internal.zzyp
    public void zzb(long j, int i) {
        zzb(j, i, null);
    }

    public synchronized String zzcO(String str) throws IllegalStateException {
        return str == null ? null : this.zzava.get(str);
    }

    @Override // com.google.android.gms.internal.zzyp
    public final void zzcP(String str) {
        zzanA.zzb("message received: %s", str);
        try {
            zzyg zzr = zzyg.zzr(new JSONObject(str));
            if (zzr == null) {
                zzanA.zzf("Could not parse game manager message from string: %s", str);
            } else if ((!isInitialized() && zzr.zzux() == null) || isDisposed()) {
            } else {
                boolean z = zzr.zzus() == 1;
                if (z && !TextUtils.isEmpty(zzr.zzuw())) {
                    this.zzava.put(zzr.getPlayerId(), zzr.zzuw());
                    zzun();
                }
                if (zzr.getStatusCode() == 0) {
                    zza(zzr);
                } else {
                    zzanA.zzf("Not updating from game message because the message contains error code: %d", Integer.valueOf(zzr.getStatusCode()));
                }
                int zzch = zzch(zzr.getStatusCode());
                if (z) {
                    zzb(zzr.getRequestId(), zzch, zzr);
                }
                if (!isInitialized() || zzch != 0) {
                    return;
                }
                zzum();
            }
        } catch (JSONException e) {
            zzanA.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }
}
