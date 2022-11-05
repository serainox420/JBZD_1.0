package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class ShareHashtag implements ShareModel {
    public static final Parcelable.Creator<ShareHashtag> CREATOR = new Parcelable.Creator<ShareHashtag>() { // from class: com.facebook.share.model.ShareHashtag.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareHashtag mo149createFromParcel(Parcel parcel) {
            return new ShareHashtag(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareHashtag[] mo150newArray(int i) {
            return new ShareHashtag[i];
        }
    };
    private final String hashtag;

    private ShareHashtag(Builder builder) {
        this.hashtag = builder.hashtag;
    }

    ShareHashtag(Parcel parcel) {
        this.hashtag = parcel.readString();
    }

    public String getHashtag() {
        return this.hashtag;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.hashtag);
    }

    /* loaded from: classes.dex */
    public static class Builder implements ShareModelBuilder<ShareHashtag, Builder> {
        private String hashtag;

        public Builder setHashtag(String str) {
            this.hashtag = str;
            return this;
        }

        public String getHashtag() {
            return this.hashtag;
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareHashtag shareHashtag) {
            return shareHashtag == null ? this : setHashtag(shareHashtag.getHashtag());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder readFrom(Parcel parcel) {
            return readFrom((ShareHashtag) parcel.readParcelable(ShareHashtag.class.getClassLoader()));
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareHashtag mo178build() {
            return new ShareHashtag(this);
        }
    }
}
