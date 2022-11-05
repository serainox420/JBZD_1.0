package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.BitmapTeleporter;
/* loaded from: classes2.dex */
public interface SnapshotMetadataChange {
    public static final SnapshotMetadataChange EMPTY_CHANGE = new SnapshotMetadataChangeEntity();

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String zzade;
        private Long zzbfl;
        private Long zzbfm;
        private BitmapTeleporter zzbfn;
        private Uri zzbfo;

        public SnapshotMetadataChange build() {
            return new SnapshotMetadataChangeEntity(this.zzade, this.zzbfl, this.zzbfn, this.zzbfo, this.zzbfm);
        }

        public Builder fromMetadata(SnapshotMetadata snapshotMetadata) {
            this.zzade = snapshotMetadata.getDescription();
            this.zzbfl = Long.valueOf(snapshotMetadata.getPlayedTime());
            this.zzbfm = Long.valueOf(snapshotMetadata.getProgressValue());
            if (this.zzbfl.longValue() == -1) {
                this.zzbfl = null;
            }
            this.zzbfo = snapshotMetadata.getCoverImageUri();
            if (this.zzbfo != null) {
                this.zzbfn = null;
            }
            return this;
        }

        public Builder setCoverImage(Bitmap bitmap) {
            this.zzbfn = new BitmapTeleporter(bitmap);
            this.zzbfo = null;
            return this;
        }

        public Builder setDescription(String str) {
            this.zzade = str;
            return this;
        }

        public Builder setPlayedTimeMillis(long j) {
            this.zzbfl = Long.valueOf(j);
            return this;
        }

        public Builder setProgressValue(long j) {
            this.zzbfm = Long.valueOf(j);
            return this;
        }
    }

    Bitmap getCoverImage();

    String getDescription();

    Long getPlayedTimeMillis();

    Long getProgressValue();

    BitmapTeleporter zzGz();
}
