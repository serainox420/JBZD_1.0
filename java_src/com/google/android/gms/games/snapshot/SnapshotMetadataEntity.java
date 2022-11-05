package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class SnapshotMetadataEntity extends GamesAbstractSafeParcelable implements SnapshotMetadata {
    public static final Parcelable.Creator<SnapshotMetadataEntity> CREATOR = new SnapshotMetadataEntityCreator();
    private final String zzaZS;
    private final String zzade;
    private final String zzamJ;
    private final GameEntity zzbcv;
    private final Uri zzbfo;
    private final PlayerEntity zzbfr;
    private final String zzbfs;
    private final long zzbft;
    private final long zzbfu;
    private final float zzbfv;
    private final String zzbfw;
    private final boolean zzbfx;
    private final long zzbfy;
    private final String zzbfz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SnapshotMetadataEntity(GameEntity gameEntity, PlayerEntity playerEntity, String str, Uri uri, String str2, String str3, String str4, long j, long j2, float f, String str5, boolean z, long j3, String str6) {
        this.zzbcv = gameEntity;
        this.zzbfr = playerEntity;
        this.zzaZS = str;
        this.zzbfo = uri;
        this.zzbfs = str2;
        this.zzbfv = f;
        this.zzamJ = str3;
        this.zzade = str4;
        this.zzbft = j;
        this.zzbfu = j2;
        this.zzbfw = str5;
        this.zzbfx = z;
        this.zzbfy = j3;
        this.zzbfz = str6;
    }

    public SnapshotMetadataEntity(SnapshotMetadata snapshotMetadata) {
        this.zzbcv = new GameEntity(snapshotMetadata.getGame());
        this.zzbfr = new PlayerEntity(snapshotMetadata.getOwner());
        this.zzaZS = snapshotMetadata.getSnapshotId();
        this.zzbfo = snapshotMetadata.getCoverImageUri();
        this.zzbfs = snapshotMetadata.getCoverImageUrl();
        this.zzbfv = snapshotMetadata.getCoverImageAspectRatio();
        this.zzamJ = snapshotMetadata.getTitle();
        this.zzade = snapshotMetadata.getDescription();
        this.zzbft = snapshotMetadata.getLastModifiedTimestamp();
        this.zzbfu = snapshotMetadata.getPlayedTime();
        this.zzbfw = snapshotMetadata.getUniqueName();
        this.zzbfx = snapshotMetadata.hasChangePending();
        this.zzbfy = snapshotMetadata.getProgressValue();
        this.zzbfz = snapshotMetadata.getDeviceName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(SnapshotMetadata snapshotMetadata) {
        return zzaa.hashCode(snapshotMetadata.getGame(), snapshotMetadata.getOwner(), snapshotMetadata.getSnapshotId(), snapshotMetadata.getCoverImageUri(), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio()), snapshotMetadata.getTitle(), snapshotMetadata.getDescription(), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getPlayedTime()), snapshotMetadata.getUniqueName(), Boolean.valueOf(snapshotMetadata.hasChangePending()), Long.valueOf(snapshotMetadata.getProgressValue()), snapshotMetadata.getDeviceName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zza(SnapshotMetadata snapshotMetadata, Object obj) {
        if (!(obj instanceof SnapshotMetadata)) {
            return false;
        }
        if (snapshotMetadata == obj) {
            return true;
        }
        SnapshotMetadata snapshotMetadata2 = (SnapshotMetadata) obj;
        return zzaa.equal(snapshotMetadata2.getGame(), snapshotMetadata.getGame()) && zzaa.equal(snapshotMetadata2.getOwner(), snapshotMetadata.getOwner()) && zzaa.equal(snapshotMetadata2.getSnapshotId(), snapshotMetadata.getSnapshotId()) && zzaa.equal(snapshotMetadata2.getCoverImageUri(), snapshotMetadata.getCoverImageUri()) && zzaa.equal(Float.valueOf(snapshotMetadata2.getCoverImageAspectRatio()), Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())) && zzaa.equal(snapshotMetadata2.getTitle(), snapshotMetadata.getTitle()) && zzaa.equal(snapshotMetadata2.getDescription(), snapshotMetadata.getDescription()) && zzaa.equal(Long.valueOf(snapshotMetadata2.getLastModifiedTimestamp()), Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())) && zzaa.equal(Long.valueOf(snapshotMetadata2.getPlayedTime()), Long.valueOf(snapshotMetadata.getPlayedTime())) && zzaa.equal(snapshotMetadata2.getUniqueName(), snapshotMetadata.getUniqueName()) && zzaa.equal(Boolean.valueOf(snapshotMetadata2.hasChangePending()), Boolean.valueOf(snapshotMetadata.hasChangePending())) && zzaa.equal(Long.valueOf(snapshotMetadata2.getProgressValue()), Long.valueOf(snapshotMetadata.getProgressValue())) && zzaa.equal(snapshotMetadata2.getDeviceName(), snapshotMetadata.getDeviceName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzb(SnapshotMetadata snapshotMetadata) {
        return zzaa.zzv(snapshotMetadata).zzg("Game", snapshotMetadata.getGame()).zzg("Owner", snapshotMetadata.getOwner()).zzg("SnapshotId", snapshotMetadata.getSnapshotId()).zzg("CoverImageUri", snapshotMetadata.getCoverImageUri()).zzg("CoverImageUrl", snapshotMetadata.getCoverImageUrl()).zzg("CoverImageAspectRatio", Float.valueOf(snapshotMetadata.getCoverImageAspectRatio())).zzg("Description", snapshotMetadata.getDescription()).zzg("LastModifiedTimestamp", Long.valueOf(snapshotMetadata.getLastModifiedTimestamp())).zzg("PlayedTime", Long.valueOf(snapshotMetadata.getPlayedTime())).zzg("UniqueName", snapshotMetadata.getUniqueName()).zzg("ChangePending", Boolean.valueOf(snapshotMetadata.hasChangePending())).zzg("ProgressValue", Long.valueOf(snapshotMetadata.getProgressValue())).zzg("DeviceName", snapshotMetadata.getDeviceName()).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public SnapshotMetadata mo520freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public float getCoverImageAspectRatio() {
        return this.zzbfv;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Uri getCoverImageUri() {
        return this.zzbfo;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getCoverImageUrl() {
        return this.zzbfs;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzh.zzb(this.zzade, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDeviceName() {
        return this.zzbfz;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Game getGame() {
        return this.zzbcv;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getLastModifiedTimestamp() {
        return this.zzbft;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Player getOwner() {
        return this.zzbfr;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getPlayedTime() {
        return this.zzbfu;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getProgressValue() {
        return this.zzbfy;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getSnapshotId() {
        return this.zzaZS;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getTitle() {
        return this.zzamJ;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getUniqueName() {
        return this.zzbfw;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public boolean hasChangePending() {
        return this.zzbfx;
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
        SnapshotMetadataEntityCreator.zza(this, parcel, i);
    }
}
