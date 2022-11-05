package com.facebook.share.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareModelBuilder;
/* loaded from: classes.dex */
public class LikeContent implements ShareModel {
    public static final Parcelable.Creator<LikeContent> CREATOR = new Parcelable.Creator<LikeContent>() { // from class: com.facebook.share.internal.LikeContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public LikeContent mo134createFromParcel(Parcel parcel) {
            return new LikeContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public LikeContent[] mo135newArray(int i) {
            return new LikeContent[i];
        }
    };
    private final String objectId;
    private final String objectType;

    private LikeContent(Builder builder) {
        this.objectId = builder.objectId;
        this.objectType = builder.objectType;
    }

    LikeContent(Parcel parcel) {
        this.objectId = parcel.readString();
        this.objectType = parcel.readString();
    }

    public String getObjectId() {
        return this.objectId;
    }

    public String getObjectType() {
        return this.objectType;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.objectId);
        parcel.writeString(this.objectType);
    }

    /* loaded from: classes.dex */
    public static class Builder implements ShareModelBuilder<LikeContent, Builder> {
        private String objectId;
        private String objectType;

        public Builder setObjectId(String str) {
            this.objectId = str;
            return this;
        }

        public Builder setObjectType(String str) {
            this.objectType = str;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public LikeContent mo178build() {
            return new LikeContent(this);
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(LikeContent likeContent) {
            if (likeContent == null) {
                return this;
            }
            return setObjectId(likeContent.getObjectId()).setObjectType(likeContent.getObjectType());
        }
    }
}
