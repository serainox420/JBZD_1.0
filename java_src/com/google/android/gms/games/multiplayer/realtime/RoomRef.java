package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantRef;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class RoomRef extends zzc implements Room {
    private final int zzaZk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzaZk = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return RoomEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Room mo520freeze() {
        return new RoomEntity(this);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Bundle getAutoMatchCriteria() {
        if (!getBoolean("has_automatch_criteria")) {
            return null;
        }
        return RoomConfig.createAutoMatchCriteria(getInteger("automatch_min_players"), getInteger("automatch_max_players"), getLong("automatch_bit_mask"));
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getAutoMatchWaitEstimateSeconds() {
        return getInteger("automatch_wait_estimate_sec");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public long getCreationTimestamp() {
        return getLong("creation_timestamp");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getCreatorId() {
        return getString("creator_external");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getDescription() {
        return getString("description");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Participant getParticipant(String str) {
        return RoomEntity.zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getParticipantId(String str) {
        return RoomEntity.zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public ArrayList<String> getParticipantIds() {
        return RoomEntity.zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getParticipantStatus(String str) {
        return RoomEntity.zza((Room) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        ArrayList<Participant> arrayList = new ArrayList<>(this.zzaZk);
        for (int i = 0; i < this.zzaZk; i++) {
            arrayList.add(new ParticipantRef(this.zzaBi, this.zzaDL + i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getRoomId() {
        return getString("external_match_id");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getStatus() {
        return getInteger("status");
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getVariant() {
        return getInteger("variant");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return RoomEntity.zza(this);
    }

    public String toString() {
        return RoomEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((RoomEntity) ((Room) mo520freeze())).writeToParcel(parcel, i);
    }
}
