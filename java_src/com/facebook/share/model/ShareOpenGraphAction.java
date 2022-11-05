package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphValueContainer;
/* loaded from: classes.dex */
public final class ShareOpenGraphAction extends ShareOpenGraphValueContainer<ShareOpenGraphAction, Builder> {
    public static final Parcelable.Creator<ShareOpenGraphAction> CREATOR = new Parcelable.Creator<ShareOpenGraphAction>() { // from class: com.facebook.share.model.ShareOpenGraphAction.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareOpenGraphAction mo158createFromParcel(Parcel parcel) {
            return new ShareOpenGraphAction(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareOpenGraphAction[] mo159newArray(int i) {
            return new ShareOpenGraphAction[i];
        }
    };

    private ShareOpenGraphAction(Builder builder) {
        super(builder);
    }

    ShareOpenGraphAction(Parcel parcel) {
        super(parcel);
    }

    public String getActionType() {
        return getString("og:type");
    }

    /* loaded from: classes.dex */
    public static final class Builder extends ShareOpenGraphValueContainer.Builder<ShareOpenGraphAction, Builder> {
        private static final String ACTION_TYPE_KEY = "og:type";

        public Builder setActionType(String str) {
            putString(ACTION_TYPE_KEY, str);
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareOpenGraphAction mo178build() {
            return new ShareOpenGraphAction(this);
        }

        @Override // com.facebook.share.model.ShareOpenGraphValueContainer.Builder
        public Builder readFrom(ShareOpenGraphAction shareOpenGraphAction) {
            if (shareOpenGraphAction == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) shareOpenGraphAction)).setActionType(shareOpenGraphAction.getActionType());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder readFrom(Parcel parcel) {
            return readFrom((ShareOpenGraphAction) parcel.readParcelable(ShareOpenGraphAction.class.getClassLoader()));
        }
    }
}
