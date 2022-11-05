package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
/* loaded from: classes2.dex */
public final class ParticipantEntity extends GamesDowngradeableSafeParcel implements Participant {
    public static final Parcelable.Creator<ParticipantEntity> CREATOR = new ParticipantEntityCreatorCompat();
    private final int zzJO;
    private final String zzaXJ;
    private final String zzaXK;
    private final Uri zzaXy;
    private final Uri zzaXz;
    private final PlayerEntity zzaYM;
    private final String zzaZr;
    private final String zzakb;
    private final int zzanu;
    private final String zzbaC;
    private final boolean zzbel;
    private final ParticipantResult zzbem;

    /* loaded from: classes2.dex */
    static final class ParticipantEntityCreatorCompat extends ParticipantEntityCreator {
        ParticipantEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.ParticipantEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfT */
        public ParticipantEntity createFromParcel(Parcel parcel) {
            boolean z = true;
            if (ParticipantEntity.zzf(ParticipantEntity.zzxV()) || ParticipantEntity.zzdl(ParticipantEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            Uri parse = readString3 == null ? null : Uri.parse(readString3);
            String readString4 = parcel.readString();
            Uri parse2 = readString4 == null ? null : Uri.parse(readString4);
            int readInt = parcel.readInt();
            String readString5 = parcel.readString();
            boolean z2 = parcel.readInt() > 0;
            if (parcel.readInt() <= 0) {
                z = false;
            }
            return new ParticipantEntity(readString, readString2, parse, parse2, readInt, readString5, z2, z ? PlayerEntity.CREATOR.createFromParcel(parcel) : null, 7, null, null, null);
        }
    }

    public ParticipantEntity(Participant participant) {
        this.zzbaC = participant.getParticipantId();
        this.zzakb = participant.getDisplayName();
        this.zzaXy = participant.getIconImageUri();
        this.zzaXz = participant.getHiResImageUri();
        this.zzJO = participant.getStatus();
        this.zzaZr = participant.zzEM();
        this.zzbel = participant.isConnectedToRoom();
        Player player = participant.getPlayer();
        this.zzaYM = player == null ? null : new PlayerEntity(player);
        this.zzanu = participant.getCapabilities();
        this.zzbem = participant.getResult();
        this.zzaXJ = participant.getIconImageUrl();
        this.zzaXK = participant.getHiResImageUrl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParticipantEntity(String str, String str2, Uri uri, Uri uri2, int i, String str3, boolean z, PlayerEntity playerEntity, int i2, ParticipantResult participantResult, String str4, String str5) {
        this.zzbaC = str;
        this.zzakb = str2;
        this.zzaXy = uri;
        this.zzaXz = uri2;
        this.zzJO = i;
        this.zzaZr = str3;
        this.zzbel = z;
        this.zzaYM = playerEntity;
        this.zzanu = i2;
        this.zzbem = participantResult;
        this.zzaXJ = str4;
        this.zzaXK = str5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Participant participant) {
        return zzaa.hashCode(participant.getPlayer(), Integer.valueOf(participant.getStatus()), participant.zzEM(), Boolean.valueOf(participant.isConnectedToRoom()), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), Integer.valueOf(participant.getCapabilities()), participant.getResult(), participant.getParticipantId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Participant participant, Object obj) {
        if (!(obj instanceof Participant)) {
            return false;
        }
        if (participant == obj) {
            return true;
        }
        Participant participant2 = (Participant) obj;
        return zzaa.equal(participant2.getPlayer(), participant.getPlayer()) && zzaa.equal(Integer.valueOf(participant2.getStatus()), Integer.valueOf(participant.getStatus())) && zzaa.equal(participant2.zzEM(), participant.zzEM()) && zzaa.equal(Boolean.valueOf(participant2.isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) && zzaa.equal(participant2.getDisplayName(), participant.getDisplayName()) && zzaa.equal(participant2.getIconImageUri(), participant.getIconImageUri()) && zzaa.equal(participant2.getHiResImageUri(), participant.getHiResImageUri()) && zzaa.equal(Integer.valueOf(participant2.getCapabilities()), Integer.valueOf(participant.getCapabilities())) && zzaa.equal(participant2.getResult(), participant.getResult()) && zzaa.equal(participant2.getParticipantId(), participant.getParticipantId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Participant participant) {
        return zzaa.zzv(participant).zzg("ParticipantId", participant.getParticipantId()).zzg("Player", participant.getPlayer()).zzg("Status", Integer.valueOf(participant.getStatus())).zzg("ClientAddress", participant.zzEM()).zzg("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).zzg("DisplayName", participant.getDisplayName()).zzg("IconImage", participant.getIconImageUri()).zzg("IconImageUrl", participant.getIconImageUrl()).zzg("HiResImage", participant.getHiResImageUri()).zzg("HiResImageUrl", participant.getHiResImageUrl()).zzg("Capabilities", Integer.valueOf(participant.getCapabilities())).zzg("Result", participant.getResult()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Participant mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getCapabilities() {
        return this.zzanu;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getDisplayName() {
        return this.zzaYM == null ? this.zzakb : this.zzaYM.getDisplayName();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public void getDisplayName(CharArrayBuffer charArrayBuffer) {
        if (this.zzaYM == null) {
            zzh.zzb(this.zzakb, charArrayBuffer);
        } else {
            this.zzaYM.getDisplayName(charArrayBuffer);
        }
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getHiResImageUri() {
        return this.zzaYM == null ? this.zzaXz : this.zzaYM.getHiResImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getHiResImageUrl() {
        return this.zzaYM == null ? this.zzaXK : this.zzaYM.getHiResImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Uri getIconImageUri() {
        return this.zzaYM == null ? this.zzaXy : this.zzaYM.getIconImageUri();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getIconImageUrl() {
        return this.zzaYM == null ? this.zzaXJ : this.zzaYM.getIconImageUrl();
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String getParticipantId() {
        return this.zzbaC;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public Player getPlayer() {
        return this.zzaYM;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public ParticipantResult getResult() {
        return this.zzbem;
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public int getStatus() {
        return this.zzJO;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public boolean isConnectedToRoom() {
        return this.zzbel;
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
        ParticipantEntityCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.multiplayer.Participant
    public String zzEM() {
        return this.zzaZr;
    }
}
