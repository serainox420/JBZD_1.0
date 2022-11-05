package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class GameRequestRef extends zzc implements GameRequest {
    private final int zzaZk;

    public GameRequestRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzaZk = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return GameRequestEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public GameRequest mo520freeze() {
        return new GameRequestEntity(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public byte[] getData() {
        return getByteArray("data");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public long getExpirationTimestamp() {
        return getLong("expiration_timestamp");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Game getGame() {
        return new GameRef(this.zzaBi, this.zzaDL);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getRecipientStatus(String str) {
        for (int i = this.zzaDL; i < this.zzaDL + this.zzaZk; i++) {
            int zzcI = this.zzaBi.zzcI(i);
            if (this.zzaBi.zzd("recipient_external_player_id", i, zzcI).equals(str)) {
                return this.zzaBi.zzc("recipient_status", i, zzcI);
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public List<Player> getRecipients() {
        ArrayList arrayList = new ArrayList(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            arrayList.add(new PlayerRef(this.zzaBi, this.zzaDL + i, "recipient_"));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public String getRequestId() {
        return getString("external_request_id");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public Player getSender() {
        return new PlayerRef(this.zzaBi, zzxi(), "sender_");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getStatus() {
        return getInteger("status");
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public int getType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return GameRequestEntity.zza(this);
    }

    @Override // com.google.android.gms.games.request.GameRequest
    public boolean isConsumed(String str) {
        return getRecipientStatus(str) == 1;
    }

    public String toString() {
        return GameRequestEntity.zzc(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((GameRequestEntity) ((GameRequest) mo520freeze())).writeToParcel(parcel, i);
    }
}
