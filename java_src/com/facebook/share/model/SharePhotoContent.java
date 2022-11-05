package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class SharePhotoContent extends ShareContent<SharePhotoContent, Builder> {
    public static final Parcelable.Creator<SharePhotoContent> CREATOR = new Parcelable.Creator<SharePhotoContent>() { // from class: com.facebook.share.model.SharePhotoContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public SharePhotoContent mo170createFromParcel(Parcel parcel) {
            return new SharePhotoContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public SharePhotoContent[] mo171newArray(int i) {
            return new SharePhotoContent[i];
        }
    };
    private final List<SharePhoto> photos;

    private SharePhotoContent(Builder builder) {
        super(builder);
        this.photos = Collections.unmodifiableList(builder.photos);
    }

    SharePhotoContent(Parcel parcel) {
        super(parcel);
        this.photos = Collections.unmodifiableList(SharePhoto.Builder.readPhotoListFrom(parcel));
    }

    public List<SharePhoto> getPhotos() {
        return this.photos;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        SharePhoto.Builder.writePhotoListTo(parcel, i, this.photos);
    }

    /* loaded from: classes.dex */
    public static class Builder extends ShareContent.Builder<SharePhotoContent, Builder> {
        private final List<SharePhoto> photos = new ArrayList();

        public Builder addPhoto(SharePhoto sharePhoto) {
            if (sharePhoto != null) {
                this.photos.add(new SharePhoto.Builder().readFrom(sharePhoto).mo178build());
            }
            return this;
        }

        public Builder addPhotos(List<SharePhoto> list) {
            if (list != null) {
                for (SharePhoto sharePhoto : list) {
                    addPhoto(sharePhoto);
                }
            }
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public SharePhotoContent mo178build() {
            return new SharePhotoContent(this);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(SharePhotoContent sharePhotoContent) {
            if (sharePhotoContent == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) sharePhotoContent)).addPhotos(sharePhotoContent.getPhotos());
        }

        public Builder setPhotos(List<SharePhoto> list) {
            this.photos.clear();
            addPhotos(list);
            return this;
        }
    }
}
