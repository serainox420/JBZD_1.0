package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
/* loaded from: classes.dex */
public final class ShareLinkContent extends ShareContent<ShareLinkContent, Builder> {
    public static final Parcelable.Creator<ShareLinkContent> CREATOR = new Parcelable.Creator<ShareLinkContent>() { // from class: com.facebook.share.model.ShareLinkContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareLinkContent mo152createFromParcel(Parcel parcel) {
            return new ShareLinkContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareLinkContent[] mo153newArray(int i) {
            return new ShareLinkContent[i];
        }
    };
    private final String contentDescription;
    private final String contentTitle;
    private final Uri imageUrl;
    private final String quote;

    private ShareLinkContent(Builder builder) {
        super(builder);
        this.contentDescription = builder.contentDescription;
        this.contentTitle = builder.contentTitle;
        this.imageUrl = builder.imageUrl;
        this.quote = builder.quote;
    }

    ShareLinkContent(Parcel parcel) {
        super(parcel);
        this.contentDescription = parcel.readString();
        this.contentTitle = parcel.readString();
        this.imageUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.quote = parcel.readString();
    }

    public String getContentDescription() {
        return this.contentDescription;
    }

    public String getContentTitle() {
        return this.contentTitle;
    }

    public Uri getImageUrl() {
        return this.imageUrl;
    }

    public String getQuote() {
        return this.quote;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.contentDescription);
        parcel.writeString(this.contentTitle);
        parcel.writeParcelable(this.imageUrl, 0);
        parcel.writeString(this.quote);
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareContent.Builder<ShareLinkContent, Builder> {
        private String contentDescription;
        private String contentTitle;
        private Uri imageUrl;
        private String quote;

        public Builder setContentDescription(String str) {
            this.contentDescription = str;
            return this;
        }

        public Builder setContentTitle(String str) {
            this.contentTitle = str;
            return this;
        }

        public Builder setImageUrl(Uri uri) {
            this.imageUrl = uri;
            return this;
        }

        public Builder setQuote(String str) {
            this.quote = str;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareLinkContent mo178build() {
            return new ShareLinkContent(this);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareLinkContent shareLinkContent) {
            if (shareLinkContent == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) shareLinkContent)).setContentDescription(shareLinkContent.getContentDescription()).setImageUrl(shareLinkContent.getImageUrl()).setContentTitle(shareLinkContent.getContentTitle()).setQuote(shareLinkContent.getQuote());
        }
    }
}
