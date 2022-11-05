package com.google.android.gms.games.internal.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class GameRequestCluster extends GamesAbstractSafeParcelable implements GameRequest {
    public static final Parcelable.Creator<GameRequestCluster> CREATOR = new GameRequestClusterCreator();
    private final int zzaiI;
    private final ArrayList<GameRequestEntity> zzbdx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GameRequestCluster(int i, ArrayList<GameRequestEntity> arrayList) {
        this.zzaiI = i;
        this.zzbdx = arrayList;
        zzFU();
    }

    private void zzFU() {
        zzc.zzaw(!this.zzbdx.isEmpty());
        GameRequestEntity gameRequestEntity = this.zzbdx.get(0);
        int size = this.zzbdx.size();
        for (int i = 1; i < size; i++) {
            GameRequestEntity gameRequestEntity2 = this.zzbdx.get(i);
            zzc.zza(gameRequestEntity.getType() == gameRequestEntity2.getType(), "All the requests must be of the same type");
            zzc.zza(gameRequestEntity.getSender().equals(gameRequestEntity2.getSender()), "All the requests must be from the same sender");
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GameRequestCluster)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        GameRequestCluster gameRequestCluster = (GameRequestCluster) obj;
        if (gameRequestCluster.zzbdx.size() != this.zzbdx.size()) {
            return false;
        }
        int size = this.zzbdx.size();
        for (int i = 0; i < size; i++) {
            if (!this.zzbdx.get(i).equals(gameRequestCluster.zzbdx.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public GameRequest mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return this.zzbdx.get(0).getRequestId();
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return this.zzbdx.get(0).getSender();
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return this.zzbdx.get(0).getType();
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbdx.toArray());
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        GameRequestClusterCreator.zza(this, parcel, i);
    }

    public ArrayList<GameRequest> zzGk() {
        return new ArrayList<>(this.zzbdx);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    /* renamed from: zzGl */
    public ArrayList<Player> getRecipients() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
}
