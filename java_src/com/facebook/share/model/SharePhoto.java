package com.facebook.share.model;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMedia;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class SharePhoto extends ShareMedia {
    public static final Parcelable.Creator<SharePhoto> CREATOR = new Parcelable.Creator<SharePhoto>() { // from class: com.facebook.share.model.SharePhoto.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public SharePhoto mo167createFromParcel(Parcel parcel) {
            return new SharePhoto(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public SharePhoto[] mo168newArray(int i) {
            return new SharePhoto[i];
        }
    };
    private final Bitmap bitmap;
    private final String caption;
    private final Uri imageUrl;
    private final boolean userGenerated;

    private SharePhoto(Builder builder) {
        super(builder);
        this.bitmap = builder.bitmap;
        this.imageUrl = builder.imageUrl;
        this.userGenerated = builder.userGenerated;
        this.caption = builder.caption;
    }

    SharePhoto(Parcel parcel) {
        super(parcel);
        this.bitmap = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        this.imageUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.userGenerated = parcel.readByte() != 0;
        this.caption = parcel.readString();
    }

    public Bitmap getBitmap() {
        return this.bitmap;
    }

    public Uri getImageUrl() {
        return this.imageUrl;
    }

    public boolean getUserGenerated() {
        return this.userGenerated;
    }

    public String getCaption() {
        return this.caption;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareMedia, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 0;
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.bitmap, 0);
        parcel.writeParcelable(this.imageUrl, 0);
        if (this.userGenerated) {
            i2 = 1;
        }
        parcel.writeByte((byte) i2);
        parcel.writeString(this.caption);
    }

    @Override // com.facebook.share.model.ShareMedia
    public ShareMedia.Type getMediaType() {
        return ShareMedia.Type.PHOTO;
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareMedia.Builder<SharePhoto, Builder> {
        private Bitmap bitmap;
        private String caption;
        private Uri imageUrl;
        private boolean userGenerated;

        public Builder setBitmap(Bitmap bitmap) {
            this.bitmap = bitmap;
            return this;
        }

        public Builder setImageUrl(Uri uri) {
            this.imageUrl = uri;
            return this;
        }

        public Builder setUserGenerated(boolean z) {
            this.userGenerated = z;
            return this;
        }

        public Builder setCaption(String str) {
            this.caption = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Uri getImageUrl() {
            return this.imageUrl;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Bitmap getBitmap() {
            return this.bitmap;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public SharePhoto mo178build() {
            return new SharePhoto(this);
        }

        @Override // com.facebook.share.model.ShareMedia.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(SharePhoto sharePhoto) {
            if (sharePhoto == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) sharePhoto)).setBitmap(sharePhoto.getBitmap()).setImageUrl(sharePhoto.getImageUrl()).setUserGenerated(sharePhoto.getUserGenerated()).setCaption(sharePhoto.getCaption());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder readFrom(Parcel parcel) {
            return readFrom((SharePhoto) parcel.readParcelable(SharePhoto.class.getClassLoader()));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void writePhotoListTo(Parcel parcel, int i, List<SharePhoto> list) {
            ShareMedia[] shareMediaArr = new ShareMedia[list.size()];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < list.size()) {
                    shareMediaArr[i3] = list.get(i3);
                    i2 = i3 + 1;
                } else {
                    parcel.writeParcelableArray(shareMediaArr, i);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static List<SharePhoto> readPhotoListFrom(Parcel parcel) {
            List<ShareMedia> readListFrom = readListFrom(parcel);
            ArrayList arrayList = new ArrayList();
            for (ShareMedia shareMedia : readListFrom) {
                if (shareMedia instanceof SharePhoto) {
                    arrayList.add((SharePhoto) shareMedia);
                }
            }
            return arrayList;
        }
    }
}
