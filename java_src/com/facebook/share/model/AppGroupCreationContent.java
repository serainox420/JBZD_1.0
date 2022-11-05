package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class AppGroupCreationContent implements ShareModel {
    public static final Parcelable.Creator<AppGroupCreationContent> CREATOR = new Parcelable.Creator<AppGroupCreationContent>() { // from class: com.facebook.share.model.AppGroupCreationContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public AppGroupCreationContent mo140createFromParcel(Parcel parcel) {
            return new AppGroupCreationContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public AppGroupCreationContent[] mo141newArray(int i) {
            return new AppGroupCreationContent[i];
        }
    };
    private final String description;
    private final String name;
    private AppGroupPrivacy privacy;

    /* loaded from: classes.dex */
    public enum AppGroupPrivacy {
        Open,
        Closed
    }

    private AppGroupCreationContent(Builder builder) {
        this.name = builder.name;
        this.description = builder.description;
        this.privacy = builder.privacy;
    }

    AppGroupCreationContent(Parcel parcel) {
        this.name = parcel.readString();
        this.description = parcel.readString();
        this.privacy = (AppGroupPrivacy) parcel.readSerializable();
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public AppGroupPrivacy getAppGroupPrivacy() {
        return this.privacy;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.name);
        parcel.writeString(this.description);
        parcel.writeSerializable(this.privacy);
    }

    /* loaded from: classes.dex */
    public static class Builder implements ShareModelBuilder<AppGroupCreationContent, Builder> {
        private String description;
        private String name;
        private AppGroupPrivacy privacy;

        public Builder setName(String str) {
            this.name = str;
            return this;
        }

        public Builder setDescription(String str) {
            this.description = str;
            return this;
        }

        public Builder setAppGroupPrivacy(AppGroupPrivacy appGroupPrivacy) {
            this.privacy = appGroupPrivacy;
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public AppGroupCreationContent mo178build() {
            return new AppGroupCreationContent(this);
        }

        @Override // com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(AppGroupCreationContent appGroupCreationContent) {
            if (appGroupCreationContent == null) {
                return this;
            }
            return setName(appGroupCreationContent.getName()).setDescription(appGroupCreationContent.getDescription()).setAppGroupPrivacy(appGroupCreationContent.getAppGroupPrivacy());
        }
    }
}
