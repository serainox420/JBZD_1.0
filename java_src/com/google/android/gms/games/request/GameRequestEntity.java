package com.google.android.gms.games.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public final class GameRequestEntity extends GamesAbstractSafeParcelable implements GameRequest {
    public static final Parcelable.Creator<GameRequestEntity> CREATOR = new GameRequestEntityCreator();
    private final long mCreationTimestamp;
    private final int zzJO;
    private final String zzOV;
    private final int zzakD;
    private final GameEntity zzbcv;
    private final byte[] zzbeL;
    private final PlayerEntity zzbfe;
    private final ArrayList<PlayerEntity> zzbff;
    private final long zzbfg;
    private final Bundle zzbfh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GameRequestEntity(GameEntity gameEntity, PlayerEntity playerEntity, byte[] bArr, String str, ArrayList<PlayerEntity> arrayList, int i, long j, long j2, Bundle bundle, int i2) {
        this.zzbcv = gameEntity;
        this.zzbfe = playerEntity;
        this.zzbeL = bArr;
        this.zzOV = str;
        this.zzbff = arrayList;
        this.zzakD = i;
        this.mCreationTimestamp = j;
        this.zzbfg = j2;
        this.zzbfh = bundle;
        this.zzJO = i2;
    }

    public GameRequestEntity(GameRequest gameRequest) {
        this.zzbcv = new GameEntity(gameRequest.getGame());
        this.zzbfe = new PlayerEntity(gameRequest.getSender());
        this.zzOV = gameRequest.getRequestId();
        this.zzakD = gameRequest.getType();
        this.mCreationTimestamp = gameRequest.getCreationTimestamp();
        this.zzbfg = gameRequest.getExpirationTimestamp();
        this.zzJO = gameRequest.getStatus();
        byte[] data = gameRequest.getData();
        if (data == null) {
            this.zzbeL = null;
        } else {
            this.zzbeL = new byte[data.length];
            System.arraycopy(data, 0, this.zzbeL, 0, data.length);
        }
        List<Player> recipients = gameRequest.getRecipients();
        int size = recipients.size();
        this.zzbff = new ArrayList<>(size);
        this.zzbfh = new Bundle();
        for (int i = 0; i < size; i++) {
            Player freeze = recipients.get(i).mo520freeze();
            String playerId = freeze.getPlayerId();
            this.zzbff.add((PlayerEntity) freeze);
            this.zzbfh.putInt(playerId, gameRequest.getRecipientStatus(playerId));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(GameRequest gameRequest) {
        return zzaa.hashCode(gameRequest.getGame(), gameRequest.getRecipients(), gameRequest.getRequestId(), gameRequest.getSender(), zzb(gameRequest), Integer.valueOf(gameRequest.getType()), Long.valueOf(gameRequest.getCreationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(GameRequest gameRequest, Object obj) {
        if (!(obj instanceof GameRequest)) {
            return false;
        }
        if (gameRequest == obj) {
            return true;
        }
        GameRequest gameRequest2 = (GameRequest) obj;
        return zzaa.equal(gameRequest2.getGame(), gameRequest.getGame()) && zzaa.equal(gameRequest2.getRecipients(), gameRequest.getRecipients()) && zzaa.equal(gameRequest2.getRequestId(), gameRequest.getRequestId()) && zzaa.equal(gameRequest2.getSender(), gameRequest.getSender()) && Arrays.equals(zzb(gameRequest2), zzb(gameRequest)) && zzaa.equal(Integer.valueOf(gameRequest2.getType()), Integer.valueOf(gameRequest.getType())) && zzaa.equal(Long.valueOf(gameRequest2.getCreationTimestamp()), Long.valueOf(gameRequest.getCreationTimestamp())) && zzaa.equal(Long.valueOf(gameRequest2.getExpirationTimestamp()), Long.valueOf(gameRequest.getExpirationTimestamp()));
    }

    private static int[] zzb(GameRequest gameRequest) {
        List<Player> recipients = gameRequest.getRecipients();
        int size = recipients.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = gameRequest.getRecipientStatus(recipients.get(i).getPlayerId());
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzc(GameRequest gameRequest) {
        return zzaa.zzv(gameRequest).zzg("Game", gameRequest.getGame()).zzg("Sender", gameRequest.getSender()).zzg("Recipients", gameRequest.getRecipients()).zzg("Data", gameRequest.getData()).zzg("RequestId", gameRequest.getRequestId()).zzg("Type", Integer.valueOf(gameRequest.getType())).zzg("CreationTimestamp", Long.valueOf(gameRequest.getCreationTimestamp())).zzg("ExpirationTimestamp", Long.valueOf(gameRequest.getExpirationTimestamp())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public GameRequest mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        return this.zzbeL;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        return this.zzbfg;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        return this.zzbfh.getInt(str, 0);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public List<Player> getRecipients() {
        return new ArrayList(this.zzbff);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return this.zzOV;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return this.zzbfe;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        return this.zzJO;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return this.zzakD;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        GameRequestEntityCreator.zza(this, parcel, i);
    }

    public Bundle zzGy() {
        return this.zzbfh;
    }
}
