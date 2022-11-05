package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class TurnBasedMatchEntity extends GamesAbstractSafeParcelable implements TurnBasedMatch {
    public static final Parcelable.Creator<TurnBasedMatchEntity> CREATOR = new TurnBasedMatchEntityCreator();
    private final long mCreationTimestamp;
    private final int mVersion;
    private final long zzaYP;
    private final String zzade;
    private final String zzbau;
    private final GameEntity zzbcv;
    private final String zzbeA;
    private final String zzbeI;
    private final String zzbeJ;
    private final int zzbeK;
    private final byte[] zzbeL;
    private final String zzbeM;
    private final byte[] zzbeN;
    private final int zzbeO;
    private final int zzbeP;
    private final boolean zzbeQ;
    private final String zzbeR;
    private final ArrayList<ParticipantEntity> zzbeh;
    private final int zzbei;
    private final Bundle zzbey;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TurnBasedMatchEntity(GameEntity gameEntity, String str, String str2, long j, String str3, long j2, String str4, int i, int i2, int i3, byte[] bArr, ArrayList<ParticipantEntity> arrayList, String str5, byte[] bArr2, int i4, Bundle bundle, int i5, boolean z, String str6, String str7) {
        this.zzbcv = gameEntity;
        this.zzbau = str;
        this.zzbeA = str2;
        this.mCreationTimestamp = j;
        this.zzbeI = str3;
        this.zzaYP = j2;
        this.zzbeJ = str4;
        this.zzbeK = i;
        this.zzbeP = i5;
        this.zzbei = i2;
        this.mVersion = i3;
        this.zzbeL = bArr;
        this.zzbeh = arrayList;
        this.zzbeM = str5;
        this.zzbeN = bArr2;
        this.zzbeO = i4;
        this.zzbey = bundle;
        this.zzbeQ = z;
        this.zzade = str6;
        this.zzbeR = str7;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnBasedMatch) {
        this.zzbcv = new GameEntity(turnBasedMatch.getGame());
        this.zzbau = turnBasedMatch.getMatchId();
        this.zzbeA = turnBasedMatch.getCreatorId();
        this.mCreationTimestamp = turnBasedMatch.getCreationTimestamp();
        this.zzbeI = turnBasedMatch.getLastUpdaterId();
        this.zzaYP = turnBasedMatch.getLastUpdatedTimestamp();
        this.zzbeJ = turnBasedMatch.getPendingParticipantId();
        this.zzbeK = turnBasedMatch.getStatus();
        this.zzbeP = turnBasedMatch.getTurnStatus();
        this.zzbei = turnBasedMatch.getVariant();
        this.mVersion = turnBasedMatch.getVersion();
        this.zzbeM = turnBasedMatch.getRematchId();
        this.zzbeO = turnBasedMatch.getMatchNumber();
        this.zzbey = turnBasedMatch.getAutoMatchCriteria();
        this.zzbeQ = turnBasedMatch.isLocallyModified();
        this.zzade = turnBasedMatch.getDescription();
        this.zzbeR = turnBasedMatch.getDescriptionParticipantId();
        byte[] data = turnBasedMatch.getData();
        if (data == null) {
            this.zzbeL = null;
        } else {
            this.zzbeL = new byte[data.length];
            System.arraycopy(data, 0, this.zzbeL, 0, data.length);
        }
        byte[] previousMatchData = turnBasedMatch.getPreviousMatchData();
        if (previousMatchData == null) {
            this.zzbeN = null;
        } else {
            this.zzbeN = new byte[previousMatchData.length];
            System.arraycopy(previousMatchData, 0, this.zzbeN, 0, previousMatchData.length);
        }
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        this.zzbeh = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.zzbeh.add((ParticipantEntity) participants.get(i).mo520freeze());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(TurnBasedMatch turnBasedMatch) {
        return zzaa.hashCode(turnBasedMatch.getGame(), turnBasedMatch.getMatchId(), turnBasedMatch.getCreatorId(), Long.valueOf(turnBasedMatch.getCreationTimestamp()), turnBasedMatch.getLastUpdaterId(), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp()), turnBasedMatch.getPendingParticipantId(), Integer.valueOf(turnBasedMatch.getStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus()), turnBasedMatch.getDescription(), Integer.valueOf(turnBasedMatch.getVariant()), Integer.valueOf(turnBasedMatch.getVersion()), turnBasedMatch.getParticipants(), turnBasedMatch.getRematchId(), Integer.valueOf(turnBasedMatch.getMatchNumber()), turnBasedMatch.getAutoMatchCriteria(), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
        }
        String valueOf = String.valueOf(turnBasedMatch.getMatchId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf).length()).append("Participant ").append(str).append(" is not in match ").append(valueOf).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(TurnBasedMatch turnBasedMatch, Object obj) {
        if (!(obj instanceof TurnBasedMatch)) {
            return false;
        }
        if (turnBasedMatch == obj) {
            return true;
        }
        TurnBasedMatch turnBasedMatch2 = (TurnBasedMatch) obj;
        return zzaa.equal(turnBasedMatch2.getGame(), turnBasedMatch.getGame()) && zzaa.equal(turnBasedMatch2.getMatchId(), turnBasedMatch.getMatchId()) && zzaa.equal(turnBasedMatch2.getCreatorId(), turnBasedMatch.getCreatorId()) && zzaa.equal(Long.valueOf(turnBasedMatch2.getCreationTimestamp()), Long.valueOf(turnBasedMatch.getCreationTimestamp())) && zzaa.equal(turnBasedMatch2.getLastUpdaterId(), turnBasedMatch.getLastUpdaterId()) && zzaa.equal(Long.valueOf(turnBasedMatch2.getLastUpdatedTimestamp()), Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())) && zzaa.equal(turnBasedMatch2.getPendingParticipantId(), turnBasedMatch.getPendingParticipantId()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getStatus()), Integer.valueOf(turnBasedMatch.getStatus())) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getTurnStatus()), Integer.valueOf(turnBasedMatch.getTurnStatus())) && zzaa.equal(turnBasedMatch2.getDescription(), turnBasedMatch.getDescription()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getVariant()), Integer.valueOf(turnBasedMatch.getVariant())) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getVersion()), Integer.valueOf(turnBasedMatch.getVersion())) && zzaa.equal(turnBasedMatch2.getParticipants(), turnBasedMatch.getParticipants()) && zzaa.equal(turnBasedMatch2.getRematchId(), turnBasedMatch.getRematchId()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getMatchNumber()), Integer.valueOf(turnBasedMatch.getMatchNumber())) && zzaa.equal(turnBasedMatch2.getAutoMatchCriteria(), turnBasedMatch.getAutoMatchCriteria()) && zzaa.equal(Integer.valueOf(turnBasedMatch2.getAvailableAutoMatchSlots()), Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())) && zzaa.equal(Boolean.valueOf(turnBasedMatch2.isLocallyModified()), Boolean.valueOf(turnBasedMatch.isLocallyModified()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(TurnBasedMatch turnBasedMatch) {
        return zzaa.zzv(turnBasedMatch).zzg("Game", turnBasedMatch.getGame()).zzg("MatchId", turnBasedMatch.getMatchId()).zzg("CreatorId", turnBasedMatch.getCreatorId()).zzg("CreationTimestamp", Long.valueOf(turnBasedMatch.getCreationTimestamp())).zzg("LastUpdaterId", turnBasedMatch.getLastUpdaterId()).zzg("LastUpdatedTimestamp", Long.valueOf(turnBasedMatch.getLastUpdatedTimestamp())).zzg("PendingParticipantId", turnBasedMatch.getPendingParticipantId()).zzg("MatchStatus", Integer.valueOf(turnBasedMatch.getStatus())).zzg("TurnStatus", Integer.valueOf(turnBasedMatch.getTurnStatus())).zzg("Description", turnBasedMatch.getDescription()).zzg("Variant", Integer.valueOf(turnBasedMatch.getVariant())).zzg("Data", turnBasedMatch.getData()).zzg("Version", Integer.valueOf(turnBasedMatch.getVersion())).zzg("Participants", turnBasedMatch.getParticipants()).zzg("RematchId", turnBasedMatch.getRematchId()).zzg("PreviousData", turnBasedMatch.getPreviousMatchData()).zzg("MatchNumber", Integer.valueOf(turnBasedMatch.getMatchNumber())).zzg("AutoMatchCriteria", turnBasedMatch.getAutoMatchCriteria()).zzg("AvailableAutoMatchSlots", Integer.valueOf(turnBasedMatch.getAvailableAutoMatchSlots())).zzg("LocallyModified", Boolean.valueOf(turnBasedMatch.isLocallyModified())).zzg("DescriptionParticipantId", turnBasedMatch.getDescriptionParticipantId()).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(str)) {
                return participant.getParticipantId();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Participant zzc(TurnBasedMatch turnBasedMatch, String str) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
        }
        String valueOf = String.valueOf(turnBasedMatch.getMatchId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf).length()).append("Participant ").append(str).append(" is not in match ").append(valueOf).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> zzc(TurnBasedMatch turnBasedMatch) {
        ArrayList<Participant> participants = turnBasedMatch.getParticipants();
        int size = participants.size();
        ArrayList<String> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(participants.get(i).getParticipantId());
        }
        return arrayList;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean canRematch() {
        return this.zzbeK == 2 && this.zzbeM == null;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public TurnBasedMatch mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Bundle getAutoMatchCriteria() {
        return this.zzbey;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getAvailableAutoMatchSlots() {
        if (this.zzbey == null) {
            return 0;
        }
        return this.zzbey.getInt(Multiplayer.EXTRA_MAX_AUTOMATCH_PLAYERS);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getCreatorId() {
        return this.zzbeA;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getData() {
        return this.zzbeL;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
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
        return this.zzbeR;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public long getLastUpdatedTimestamp() {
        return this.zzaYP;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getLastUpdaterId() {
        return this.zzbeI;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getMatchId() {
        return this.zzbau;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getMatchNumber() {
        return this.zzbeO;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public Participant getParticipant(String str) {
        return zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getParticipantId(String str) {
        return zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public ArrayList<String> getParticipantIds() {
        return zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getParticipantStatus(String str) {
        return zza((TurnBasedMatch) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.zzbeh);
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getPendingParticipantId() {
        return this.zzbeJ;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public byte[] getPreviousMatchData() {
        return this.zzbeN;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public String getRematchId() {
        return this.zzbeM;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getStatus() {
        return this.zzbeK;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getTurnStatus() {
        return this.zzbeP;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVariant() {
        return this.zzbei;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public int getVersion() {
        return this.mVersion;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch
    public boolean isLocallyModified() {
        return this.zzbeQ;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        TurnBasedMatchEntityCreator.zza(this, parcel, i);
    }
}
