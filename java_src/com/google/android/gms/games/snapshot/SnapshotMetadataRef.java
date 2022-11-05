package com.google.android.gms.games.snapshot;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzc;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.VastIconXmlManager;
/* loaded from: classes2.dex */
public final class SnapshotMetadataRef extends zzc implements SnapshotMetadata {
    private final Game zzbdD;
    private final Player zzbfA;

    public SnapshotMetadataRef(DataHolder dataHolder, int i) {
        super(dataHolder, i);
        this.zzbdD = new GameRef(dataHolder, i);
        this.zzbfA = new PlayerRef(dataHolder, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public boolean equals(Object obj) {
        return SnapshotMetadataEntity.zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: freeze */
    public SnapshotMetadata mo520freeze() {
        return new SnapshotMetadataEntity(this);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public float getCoverImageAspectRatio() {
        float f = getFloat("cover_icon_image_height");
        return f == BitmapDescriptorFactory.HUE_RED ? BitmapDescriptorFactory.HUE_RED : getFloat("cover_icon_image_width") / f;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Uri getCoverImageUri() {
        return zzdg("cover_icon_image_uri");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getCoverImageUrl() {
        return getString("cover_icon_image_url");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDescription() {
        return getString("description");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zza("description", charArrayBuffer);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getDeviceName() {
        return getString("device_name");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Game getGame() {
        return this.zzbdD;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getLastModifiedTimestamp() {
        return getLong("last_modified_timestamp");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public Player getOwner() {
        return this.zzbfA;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getPlayedTime() {
        return getLong(VastIconXmlManager.DURATION);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public long getProgressValue() {
        return getLong("progress_value");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getSnapshotId() {
        return getString("external_snapshot_id");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getTitle() {
        return getString("title");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public String getUniqueName() {
        return getString("unique_name");
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadata
    public boolean hasChangePending() {
        return getInteger("pending_change_count") > 0;
    }

    @Override // com.google.android.gms.common.data.zzc
    public int hashCode() {
        return SnapshotMetadataEntity.zza(this);
    }

    public String toString() {
        return SnapshotMetadataEntity.zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        ((SnapshotMetadataEntity) ((SnapshotMetadata) mo520freeze())).writeToParcel(parcel, i);
    }
}
