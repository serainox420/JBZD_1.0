package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes.dex */
public final class ShareOpenGraphObject extends ShareOpenGraphValueContainer<ShareOpenGraphObject, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphObject> CREATOR = new Parcelable.Creator<ShareOpenGraphObject>() { // from class: com.facebook.share.model.ShareOpenGraphObject.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareOpenGraphObject mo164createFromParcel(Parcel parcel) {
            return new ShareOpenGraphObject(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareOpenGraphObject[] mo165newArray(int i) {
            return new ShareOpenGraphObject[i];
        }
    };

    private ShareOpenGraphObject(Builder builder) {
        super(builder);
    }

    ShareOpenGraphObject(Parcel parcel) {
        super(parcel);
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphObject, Builder> {
        public Builder() {
            putBoolean(NativeProtocol.OPEN_GRAPH_CREATE_OBJECT_KEY, true);
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareOpenGraphObject mo178build() {
            return new ShareOpenGraphObject(this);
        }

        Builder readFrom(Parcel parcel) {
            return readFrom((Builder) ((ShareOpenGraphObject) parcel.readParcelable(ShareOpenGraphObject.class.getClassLoader())));
        }
    }
}
