package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class RoomEntity extends GamesDowngradeableSafeParcel implements Room {
    public static final Parcelable.Creator<RoomEntity> CREATOR = new RoomEntityCreatorCompat();
    private final long mCreationTimestamp;
    private final String zzaZZ;
    private final String zzade;
    private final String zzbeA;
    private final int zzbeB;
    private final int zzbeC;
    private final ArrayList<ParticipantEntity> zzbeh;
    private final int zzbei;
    private final Bundle zzbey;

    /* loaded from: classes2.dex */
    static final class RoomEntityCreatorCompat extends RoomEntityCreator {
        RoomEntityCreatorCompat() {
        }

        @Override // com.google.android.gms.games.multiplayer.realtime.RoomEntityCreator, android.os.Parcelable.Creator
        /* renamed from: zzfW */
        public RoomEntity createFromParcel(Parcel parcel) {
            if (RoomEntity.zzf(RoomEntity.zzxV()) || RoomEntity.zzdl(RoomEntity.class.getCanonicalName())) {
                return super.createFromParcel(parcel);
            }
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            long readLong = parcel.readLong();
            int readInt = parcel.readInt();
            String readString3 = parcel.readString();
            int readInt2 = parcel.readInt();
            Bundle readBundle = parcel.readBundle();
            int readInt3 = parcel.readInt();
            ArrayList arrayList = new ArrayList(readInt3);
            for (int i = 0; i < readInt3; i++) {
                arrayList.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }
            return new RoomEntity(readString, readString2, readLong, readInt, readString3, readInt2, readBundle, arrayList, -1);
        }
    }

    public RoomEntity(Room room) {
        this.zzaZZ = room.getRoomId();
        this.zzbeA = room.getCreatorId();
        this.mCreationTimestamp = room.getCreationTimestamp();
        this.zzbeB = room.getStatus();
        this.zzade = room.getDescription();
        this.zzbei = room.getVariant();
        this.zzbey = room.getAutoMatchCriteria();
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        this.zzbeh = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            this.zzbeh.add((ParticipantEntity) participants.get(i).mo520freeze());
        }
        this.zzbeC = room.getAutoMatchWaitEstimateSeconds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RoomEntity(String str, String str2, long j, int i, String str3, int i2, Bundle bundle, ArrayList<ParticipantEntity> arrayList, int i3) {
        this.zzaZZ = str;
        this.zzbeA = str2;
        this.mCreationTimestamp = j;
        this.zzbeB = i;
        this.zzade = str3;
        this.zzbei = i2;
        this.zzbey = bundle;
        this.zzbeh = arrayList;
        this.zzbeC = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Room room) {
        return zzaa.hashCode(room.getRoomId(), room.getCreatorId(), Long.valueOf(room.getCreationTimestamp()), Integer.valueOf(room.getStatus()), room.getDescription(), Integer.valueOf(room.getVariant()), room.getAutoMatchCriteria(), room.getParticipants(), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant.getStatus();
            }
        }
        String valueOf = String.valueOf(room.getRoomId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 28 + String.valueOf(valueOf).length()).append("Participant ").append(str).append(" is not in room ").append(valueOf).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(Room room, Object obj) {
        if (!(obj instanceof Room)) {
            return false;
        }
        if (room == obj) {
            return true;
        }
        Room room2 = (Room) obj;
        return zzaa.equal(room2.getRoomId(), room.getRoomId()) && zzaa.equal(room2.getCreatorId(), room.getCreatorId()) && zzaa.equal(Long.valueOf(room2.getCreationTimestamp()), Long.valueOf(room.getCreationTimestamp())) && zzaa.equal(Integer.valueOf(room2.getStatus()), Integer.valueOf(room.getStatus())) && zzaa.equal(room2.getDescription(), room.getDescription()) && zzaa.equal(Integer.valueOf(room2.getVariant()), Integer.valueOf(room.getVariant())) && zzaa.equal(room2.getAutoMatchCriteria(), room.getAutoMatchCriteria()) && zzaa.equal(room2.getParticipants(), room.getParticipants()) && zzaa.equal(Integer.valueOf(room2.getAutoMatchWaitEstimateSeconds()), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Room room) {
        return zzaa.zzv(room).zzg("RoomId", room.getRoomId()).zzg("CreatorId", room.getCreatorId()).zzg("CreationTimestamp", Long.valueOf(room.getCreationTimestamp())).zzg("RoomStatus", Integer.valueOf(room.getStatus())).zzg("Description", room.getDescription()).zzg("Variant", Integer.valueOf(room.getVariant())).zzg("AutoMatchCriteria", room.getAutoMatchCriteria()).zzg("Participants", room.getParticipants()).zzg("AutoMatchWaitEstimateSeconds", Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
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
    public static Participant zzc(Room room, String str) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        for (int i = 0; i < size; i++) {
            Participant participant = participants.get(i);
            if (participant.getParticipantId().equals(str)) {
                return participant;
            }
        }
        String valueOf = String.valueOf(room.getRoomId());
        throw new IllegalStateException(new StringBuilder(String.valueOf(str).length() + 29 + String.valueOf(valueOf).length()).append("Participant ").append(str).append(" is not in match ").append(valueOf).toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> zzc(Room room) {
        ArrayList<Participant> participants = room.getParticipants();
        int size = participants.size();
        ArrayList<String> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(participants.get(i).getParticipantId());
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public Room mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Bundle getAutoMatchCriteria() {
        return this.zzbey;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getAutoMatchWaitEstimateSeconds() {
        return this.zzbeC;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public long getCreationTimestamp() {
        return this.mCreationTimestamp;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getCreatorId() {
        return this.zzbeA;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public Participant getParticipant(String str) {
        return zzc(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getParticipantId(String str) {
        return zzb(this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public ArrayList<String> getParticipantIds() {
        return zzc(this);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getParticipantStatus(String str) {
        return zza((Room) this, str);
    }

    @Override // com.google.android.gms.games.multiplayer.Participatable
    public ArrayList<Participant> getParticipants() {
        return new ArrayList<>(this.zzbeh);
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public String getRoomId() {
        return this.zzaZZ;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
    public int getStatus() {
        return this.zzbeB;
    }

    @Override // com.google.android.gms.games.multiplayer.realtime.Room
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
        RoomEntityCreator.zza(this, parcel, i);
    }
}
