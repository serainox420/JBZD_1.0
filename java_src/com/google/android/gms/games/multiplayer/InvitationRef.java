package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class InvitationRef extends zzc implements Invitation {
    private final Game zzbdD;
    private final ArrayList<Participant> zzbeh;
    private final ParticipantRef zzbek;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InvitationRef(DataHolder dataHolder, int i, int i2) {
        super(dataHolder, i);
        this.zzbdD = new GameRef(dataHolder, i);
        this.zzbeh = new ArrayList<>(i2);
        String string = getString("external_inviter_id");
        ParticipantRef participantRef = null;
        for (int i3 = 0; i3 < i2; i3++) {
            ParticipantRef participantRef2 = new ParticipantRef(this.zzaBi, this.zzaDL + i3);
            if (participantRef2.getParticipantId().equals(string)) {
                participantRef = participantRef2;
            }
            this.zzbeh.add(participantRef2);
        }
        this.zzbek = (ParticipantRef) zzac.zzb(participantRef, "Must have a valid inviter!");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return InvitationEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Invitation mo520freeze() {
        return new InvitationEntity(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getAvailableAutoMatchSlots() {
        if (!getBoolean("has_automatch_criteria")) {
            return 0;
        }
        return getInteger("automatch_max_players");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public long getCreationTimestamp() {
        return Math.max(getLong("creation_timestamp"), getLong("last_modified_timestamp"));
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Game getGame() {
        return this.zzbdD;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public String getInvitationId() {
        return getString("external_invitation_id");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getInvitationType() {
        return getInteger("type");
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Participant getInviter() {
        return this.zzbek;
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return this.zzbeh;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getVariant() {
        return getInteger("variant");
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return InvitationEntity.zza(this);
    }

    public String toString() {
        return InvitationEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((InvitationEntity) ((Invitation) mo520freeze())).writeToParcel(parcel, i);
    }
}
