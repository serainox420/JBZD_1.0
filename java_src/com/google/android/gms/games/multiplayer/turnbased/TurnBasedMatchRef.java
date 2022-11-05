package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class TurnBasedMatchRef extends zzc implements TurnBasedMatch {
    private final int zzaZk;
    private final Game zzbdD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TurnBasedMatchRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbdD = new GameRef(dataHolder, i);
        this.zzaZk = i2;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean canRematch() {
        return getTurnStatus() == 3 && getRematchId() == null && getParticipants().size() > 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return TurnBasedMatchEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public TurnBasedMatch mo520freeze() {
        return new TurnBasedMatchEntity(this);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Bundle getAutoMatchCriteria() {
        if (!getBoolean("has_automatch_criteria")) {
            return null;
        }
        return TurnBasedMatchConfig.createAutoMatchCriteria(getInteger("automatch_min_players"), getInteger("automatch_max_players"), getLong("automatch_bit_mask"));
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getAvailableAutoMatchSlots() {
        if (!getBoolean("has_automatch_criteria")) {
            return 0;
        }
        return getInteger("automatch_max_players");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getCreatorId() {
        return getString("creator_external");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getData() {
        return getByteArray("data");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getDescription() {
        return getString("description");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Participant getDescriptionParticipant() {
        String descriptionParticipantId = getDescriptionParticipantId();
        if (descriptionParticipantId == null) {
            return null;
        }
        return getParticipant(descriptionParticipantId);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getDescriptionParticipantId() {
        return getString("description_participant_id");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Game getGame() {
        return this.zzbdD;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getLastUpdatedTimestamp() {
        return getLong("last_updated_timestamp");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getLastUpdaterId() {
        return getString("last_updater_external");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getMatchId() {
        return getString("external_match_id");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getMatchNumber() {
        return getInteger("match_number");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Participant getParticipant(String str) {
        return TurnBasedMatchEntity.zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getParticipantId(String str) {
        return TurnBasedMatchEntity.zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public ArrayList<String> getParticipantIds() {
        return TurnBasedMatchEntity.zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getParticipantStatus(String str) {
        return TurnBasedMatchEntity.zza((TurnBasedMatch) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        ArrayList<Participant> arrayList = new ArrayList<>(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            arrayList.add(new ParticipantRef(this.zzaBi, this.zzaDL + i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getPendingParticipantId() {
        return getString("pending_participant_external");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getPreviousMatchData() {
        return getByteArray("previous_match_data");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getRematchId() {
        return getString("rematch_id");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getStatus() {
        return getInteger("status");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getTurnStatus() {
        return getInteger("user_match_status");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVariant() {
        return getInteger("variant");
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVersion() {
        return getInteger("version");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return TurnBasedMatchEntity.zza(this);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean isLocallyModified() {
        return getBoolean("upsync_required");
    }

    public String toString() {
        return TurnBasedMatchEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((TurnBasedMatchEntity) ((TurnBasedMatch) mo520freeze())).writeToParcel(parcel, i);
    }
}
