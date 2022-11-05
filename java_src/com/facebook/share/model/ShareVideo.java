package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
/* loaded from: classes.dex */
public final class ShareVideo extends ShareMedia {
    public static final Parcelable.Creator<ShareVideo> CREATOR = new Parcelable.Creator<ShareVideo>() { // from class: com.facebook.share.model.ShareVideo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareVideo mo173createFromParcel(Parcel parcel) {
            return new ShareVideo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareVideo[] mo174newArray(int i) {
            return new ShareVideo[i];
        }
    };
    private final Uri localUrl;

    private ShareVideo(Builder builder) {
        super(builder);
        this.localUrl = builder.localUrl;
    }

    ShareVideo(Parcel parcel) {
        super(parcel);
        this.localUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
    }

    public Uri getLocalUrl() {
        return this.localUrl;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.localUrl, 0);
    }

    @Override // com.facebook.share.model.ShareMedia
    public ShareMedia.Type getMediaType() {
        return ShareMedia.Type.VIDEO;
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareMedia.Builder<ShareVideo, Builder> {
        private Uri localUrl;

        public Builder setLocalUrl(Uri uri) {
            this.localUrl = uri;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareVideo mo178build() {
            return new ShareVideo(this);
        }

        @Override // com.facebook.share.model.ShareMedia.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareVideo shareVideo) {
            if (shareVideo == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) shareVideo)).setLocalUrl(shareVideo.getLocalUrl());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder readFrom(Parcel parcel) {
            return readFrom((ShareVideo) parcel.readParcelable(ShareVideo.class.getClassLoader()));
        }
    }
}
