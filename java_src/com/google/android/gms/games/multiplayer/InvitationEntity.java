package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class InvitationEntity extends GamesDowngradeableSafeParcel implements Invitation {
    public static final Parcelable.Creator<InvitationEntity> CREATOR = new InvitationEntityCreatorCompat();
    private final long mCreationTimestamp;
    private final String zzaij;
    private final GameEntity zzbcv;
    private final int zzbef;
    private final ParticipantEntity zzbeg;
    private final ArrayList<ParticipantEntity> zzbeh;
    private final int zzbei;
    private final int zzbej;

    /* loaded from: classes2.dex */
    static final class InvitationEntityCreatorCompat extends InvitationEntityCreator {
        InvitationEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.InvitationEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfS */
        public InvitationEntity createFromParcel(Parcel parcel) {
            if (InvitationEntity.zzf(InvitationEntity.zzxV()) || InvitationEntity.zzdl(InvitationEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            GameEntity createFromParcel = GameEntity.CREATOR.createFromParcel(parcel);
            String readString = parcel.readString();
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            ParticipantEntity createFromParcel2 = ParticipantEntity.CREATOR.createFromParcel(parcel);
            int readInt2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt2);
            for (int i = 0; i < readInt2; i++) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new InvitationEntity(createFromParcel, readString, readLong, readInt, createFromParcel2, arrayList, -1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InvitationEntity(GameEntity gameEntity, String str, long j, int i, ParticipantEntity participantEntity, ArrayList<ParticipantEntity> arrayList, int i2, int i3) {
        this.zzbcv = gameEntity;
        this.zzaij = str;
        this.mCreationTimestamp = j;
        this.zzbef = i;
        this.zzbeg = participantEntity;
        this.zzbeh = arrayList;
        this.zzbei = i2;
        this.zzbej = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InvitationEntity(Invitation invitation) {
        this.zzbcv = new GameEntity(invitation.getGame());
        this.zzaij = invitation.getInvitationId();
        this.mCreationTimestamp = invitation.getCreationTimestamp();
        this.zzbef = invitation.getInvitationType();
        this.zzbei = invitation.getVariant();
        this.zzbej = invitation.getAvailableAutoMatchSlots();
        String participantId = invitation.getInviter().getParticipantId();
        Participant participant = null;
        ArrayList<Participant> participants = invitation.getParticipants();
        int size = participants.size();
        this.zzbeh = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            Participant participant2 = participants.get(i);
            if (participant2.getParticipantId().equals(participantId)) {
                participant = participant2;
            }
            this.zzbeh.add((ParticipantEntity) participant2.mo520freeze());
        }
        zzac.zzb(participant, "Must have a valid inviter!");
        this.zzbeg = (ParticipantEntity) participant.mo520freeze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Invitation invitation) {
        return zzaa.hashCode(invitation.getGame(), invitation.getInvitationId(), Long.valueOf(invitation.getCreationTimestamp()), Integer.valueOf(invitation.getInvitationType()), invitation.getInviter(), invitation.getParticipants(), Integer.valueOf(invitation.getVariant()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Invitation invitation, Object obj) {
        if (!(obj instanceof Invitation)) {
            return false;
        }
        if (invitation == obj) {
            return true;
        }
        Invitation invitation2 = (Invitation) obj;
        return zzaa.equal(invitation2.getGame(), invitation.getGame()) && zzaa.equal(invitation2.getInvitationId(), invitation.getInvitationId()) && zzaa.equal(Long.valueOf(invitation2.getCreationTimestamp()), Long.valueOf(invitation.getCreationTimestamp())) && zzaa.equal(Integer.valueOf(invitation2.getInvitationType()), Integer.valueOf(invitation.getInvitationType())) && zzaa.equal(invitation2.getInviter(), invitation.getInviter()) && zzaa.equal(invitation2.getParticipants(), invitation.getParticipants()) && zzaa.equal(Integer.valueOf(invitation2.getVariant()), Integer.valueOf(invitation.getVariant())) && zzaa.equal(Integer.valueOf(invitation2.getAvailableAutoMatchSlots()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Invitation invitation) {
        return zzaa.zzv(invitation).zzg("Game", invitation.getGame()).zzg("InvitationId", invitation.getInvitationId()).zzg("CreationTimestamp", Long.valueOf(invitation.getCreationTimestamp())).zzg("InvitationType", Integer.valueOf(invitation.getInvitationType())).zzg("Inviter", invitation.getInviter()).zzg("Participants", invitation.getParticipants()).zzg("Variant", Integer.valueOf(invitation.getVariant())).zzg("AvailableAutoMatchSlots", Integer.valueOf(invitation.getAvailableAutoMatchSlots())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Invitation mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getAvailableAutoMatchSlots() {
        return this.zzbej;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public String getInvitationId() {
        return this.zzaij;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getInvitationType() {
        return this.zzbef;
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public Participant getInviter() {
        return this.zzbeg;
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.zzbeh);
    }

    @Override // com.google.android.gms.games.multiplayer.Invitation
    public int getVariant() {
        return this.zzbei;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        InvitationEntityCreator.zza(this, parcel, i);
    }
}
