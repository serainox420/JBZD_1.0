package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
/* loaded from: classes2.dex */
public final class ParticipantRef extends zzc implements Participant {
    private final PlayerRef zzben;

    public ParticipantRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzben = new PlayerRef(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return ParticipantEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Participant mo520freeze() {
        return new ParticipantEntity(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getCapabilities() {
        return getInteger("capabilities");
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getDisplayName() {
        return zzdh("external_player_id") ? getString("default_display_name") : this.zzben.getDisplayName();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (zzdh("external_player_id")) {
            zza("default_display_name", charArrayBuffer);
        } else {
            this.zzben.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getHiResImageUri() {
        return zzdh("external_player_id") ? zzdg("default_display_hi_res_image_uri") : this.zzben.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getHiResImageUrl() {
        return zzdh("external_player_id") ? getString("default_display_hi_res_image_url") : this.zzben.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getIconImageUri() {
        return zzdh("external_player_id") ? zzdg("default_display_image_uri") : this.zzben.getIconImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getIconImageUrl() {
        return zzdh("external_player_id") ? getString("default_display_image_url") : this.zzben.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getParticipantId() {
        return getString("external_participant_id");
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Player getPlayer() {
        if (zzdh("external_player_id")) {
            return null;
        }
        return this.zzben;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public ParticipantResult getResult() {
        if (zzdh("result_type")) {
            return null;
        }
        return new ParticipantResult(getParticipantId(), getInteger("result_type"), getInteger("placing"));
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getStatus() {
        return getInteger("player_status");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return ParticipantEntity.zza(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public boolean isConnectedToRoom() {
        return getInteger("connected") > 0;
    }

    public String toString() {
        return ParticipantEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((ParticipantEntity) ((Participant) mo520freeze())).writeToParcel(parcel, i);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String zzEM() {
        return getString("client_address");
    }
}
