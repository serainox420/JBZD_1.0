package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareOpenGraphAction;
/* loaded from: classes.dex */
public final class ShareOpenGraphContent extends ShareContent<ShareOpenGraphContent, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphContent> CREATOR = new Parcelable.Creator<ShareOpenGraphContent>() { // from class: com.facebook.share.model.ShareOpenGraphContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareOpenGraphContent mo161createFromParcel(Parcel parcel) {
            return new ShareOpenGraphContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareOpenGraphContent[] mo162newArray(int i) {
            return new ShareOpenGraphContent[i];
        }
    };
    private final ShareOpenGraphAction action;
    private final String previewPropertyName;

    private ShareOpenGraphContent(Builder builder) {
        super(builder);
        this.action = builder.action;
        this.previewPropertyName = builder.previewPropertyName;
    }

    ShareOpenGraphContent(Parcel parcel) {
        super(parcel);
        this.action = new ShareOpenGraphAction.Builder().readFrom(parcel).mo178build();
        this.previewPropertyName = parcel.readString();
    }

    public ShareOpenGraphAction getAction() {
        return this.action;
    }

    public String getPreviewPropertyName() {
        return this.previewPropertyName;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.action, 0);
        parcel.writeString(this.previewPropertyName);
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareContent.Builder<ShareOpenGraphContent, Builder> {
        private ShareOpenGraphAction action;
        private String previewPropertyName;

        public Builder setAction(ShareOpenGraphAction shareOpenGraphAction) {
            this.action = shareOpenGraphAction == null ? null : new ShareOpenGraphAction.Builder().readFrom(shareOpenGraphAction).mo178build();
            return this;
        }

        public Builder setPreviewPropertyName(String str) {
            this.previewPropertyName = str;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareOpenGraphContent mo178build() {
            return new ShareOpenGraphContent(this);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareOpenGraphContent shareOpenGraphContent) {
            if (shareOpenGraphContent == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) shareOpenGraphContent)).setAction(shareOpenGraphContent.getAction()).setPreviewPropertyName(shareOpenGraphContent.getPreviewPropertyName());
        }
    }
}
