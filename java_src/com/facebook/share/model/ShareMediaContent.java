package com.facebook.share.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.ShareVideo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class ShareMediaContent extends ShareContent<ShareMediaContent, Builder> {
    public static final Parcelable.Creator<ShareMediaContent> CREATOR = new Parcelable.Creator<ShareMediaContent>() { // from class: com.facebook.share.model.ShareMediaContent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: createFromParcel */
        public ShareMediaContent mo155createFromParcel(Parcel parcel) {
            return new ShareMediaContent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        /* renamed from: newArray */
        public ShareMediaContent[] mo156newArray(int i) {
            return new ShareMediaContent[i];
        }
    };
    private final List<ShareMedia> media;

    private ShareMediaContent(Builder builder) {
        super(builder);
        this.media = Collections.unmodifiableList(builder.media);
    }

    ShareMediaContent(Parcel parcel) {
        super(parcel);
        this.media = Arrays.asList((ShareMedia[]) parcel.readParcelableArray(ShareMedia.class.getClassLoader()));
    }

    public List<ShareMedia> getMedia() {
        return this.media;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.share.model.ShareContent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelableArray((ShareMedia[]) this.media.toArray(), i);
    }

    /* loaded from: classes.dex */
    public static class Builder extends ShareContent.Builder<ShareMediaContent, Builder> {
        private final List<ShareMedia> media = new ArrayList();

        public Builder addMedium(ShareMedia shareMedia) {
            ShareMedia mo178build;
            if (shareMedia != null) {
                if (shareMedia instanceof SharePhoto) {
                    mo178build = new SharePhoto.Builder().readFrom((SharePhoto) shareMedia).mo178build();
                } else if (shareMedia instanceof ShareVideo) {
                    mo178build = new ShareVideo.Builder().readFrom((ShareVideo) shareMedia).mo178build();
                } else {
                    throw new IllegalArgumentException("medium must be either a SharePhoto or ShareVideo");
                }
                this.media.add(mo178build);
            }
            return this;
        }

        public Builder addMedia(List<ShareMedia> list) {
            if (list != null) {
                for (ShareMedia shareMedia : list) {
                    addMedium(shareMedia);
                }
            }
            return this;
        }

        @Override // com.facebook.share.ShareBuilder
        /* renamed from: build */
        public ShareMediaContent mo178build() {
            return new ShareMediaContent(this);
        }

        @Override // com.facebook.share.model.ShareContent.Builder, com.facebook.share.model.ShareModelBuilder
        public Builder readFrom(ShareMediaContent shareMediaContent) {
            if (shareMediaContent == null) {
                return this;
            }
            return ((Builder) super.readFrom((Builder) shareMediaContent)).addMedia(shareMediaContent.getMedia());
        }

        public Builder setMedia(List<ShareMedia> list) {
            this.media.clear();
            addMedia(list);
            return this;
        }
    }
}
