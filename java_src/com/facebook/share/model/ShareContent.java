package com.facebook.share.model;

import android.net.Uri;
import android.os.Parcel;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareContent.Builder;
import com.facebook.share.model.ShareHashtag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class ShareContent<P extends ShareContent, E extends Builder> implements ShareModel {
    private final Uri contentUrl;
    private final ShareHashtag hashtag;
    private final List<String> peopleIds;
    private final String placeId;
    private final String ref;

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(Builder builder) {
        this.contentUrl = builder.contentUrl;
        this.peopleIds = builder.peopleIds;
        this.placeId = builder.placeId;
        this.ref = builder.ref;
        this.hashtag = builder.hashtag;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ShareContent(Parcel parcel) {
        this.contentUrl = (Uri) parcel.readParcelable(Uri.class.getClassLoader());
        this.peopleIds = readUnmodifiableStringList(parcel);
        this.placeId = parcel.readString();
        this.ref = parcel.readString();
        this.hashtag = new ShareHashtag.Builder().readFrom(parcel).mo178build();
    }

    public Uri getContentUrl() {
        return this.contentUrl;
    }

    public List<String> getPeopleIds() {
        return this.peopleIds;
    }

    public String getPlaceId() {
        return this.placeId;
    }

    public String getRef() {
        return this.ref;
    }

    public ShareHashtag getShareHashtag() {
        return this.hashtag;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.contentUrl, 0);
        parcel.writeStringList(this.peopleIds);
        parcel.writeString(this.placeId);
        parcel.writeString(this.ref);
        parcel.writeParcelable(this.hashtag, 0);
    }

    private List<String> readUnmodifiableStringList(Parcel parcel) {
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        if (arrayList.size() == 0) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* loaded from: classes.dex */
    public static abstract class Builder<P extends ShareContent, E extends Builder> implements ShareModelBuilder<P, E> {
        private Uri contentUrl;
        private ShareHashtag hashtag;
        private List<String> peopleIds;
        private String placeId;
        private String ref;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.facebook.share.model.ShareModelBuilder
        public /* bridge */ /* synthetic */ ShareModelBuilder readFrom(ShareModel shareModel) {
            return readFrom((Builder<P, E>) ((ShareContent) shareModel));
        }

        public E setContentUrl(Uri uri) {
            this.contentUrl = uri;
            return this;
        }

        public E setPeopleIds(List<String> list) {
            this.peopleIds = list == null ? null : Collections.unmodifiableList(list);
            return this;
        }

        public E setPlaceId(String str) {
            this.placeId = str;
            return this;
        }

        public E setRef(String str) {
            this.ref = str;
            return this;
        }

        public E setShareHashtag(ShareHashtag shareHashtag) {
            this.hashtag = shareHashtag;
            return this;
        }

        public E readFrom(P p) {
            if (p == null) {
                return this;
            }
            return (E) setContentUrl(p.getContentUrl()).setPeopleIds(p.getPeopleIds()).setPlaceId(p.getPlaceId()).setRef(p.getRef());
        }
    }
}
