package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.games.internal.GamesAbstractSafeParcelable;
/* loaded from: classes2.dex */
public final class SnapshotMetadataChangeEntity extends GamesAbstractSafeParcelable implements SnapshotMetadataChange {
    public static final Parcelable.Creator<SnapshotMetadataChangeEntity> CREATOR = new SnapshotMetadataChangeCreator();
    private final String zzade;
    private final Long zzbfm;
    private final Uri zzbfo;
    private final Long zzbfp;
    private BitmapTeleporter zzbfq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SnapshotMetadataChangeEntity() {
        this(null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SnapshotMetadataChangeEntity(String str, Long l, BitmapTeleporter bitmapTeleporter, Uri uri, Long l2) {
        boolean z = true;
        this.zzade = str;
        this.zzbfp = l;
        this.zzbfq = bitmapTeleporter;
        this.zzbfo = uri;
        this.zzbfm = l2;
        if (this.zzbfq != null) {
            zzac.zza(this.zzbfo != null ? false : z, "Cannot set both a URI and an image");
        } else if (this.zzbfo == null) {
        } else {
            zzac.zza(this.zzbfq != null ? false : z, "Cannot set both a URI and an image");
        }
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Bitmap getCoverImage() {
        if (this.zzbfq == null) {
            return null;
        }
        return this.zzbfq.zzxg();
    }

    public Uri getCoverImageUri() {
        return this.zzbfo;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public String getDescription() {
        return this.zzade;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getPlayedTimeMillis() {
        return this.zzbfp;
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public Long getProgressValue() {
        return this.zzbfm;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        SnapshotMetadataChangeCreator.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.games.snapshot.SnapshotMetadataChange
    public BitmapTeleporter zzGz() {
        return this.zzbfq;
    }
}
