package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
/* loaded from: classes2.dex */
public final class UrlLinkFrame extends Id3Frame {
    public static final Parcelable.Creator<UrlLinkFrame> CREATOR = new Parcelable.Creator<UrlLinkFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.UrlLinkFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UrlLinkFrame createFromParcel(Parcel parcel) {
            return new UrlLinkFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public UrlLinkFrame[] newArray(int i) {
            return new UrlLinkFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3321a;
    public final String b;

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.f3321a = str2;
        this.b = str3;
    }

    UrlLinkFrame(Parcel parcel) {
        super(parcel.readString());
        this.f3321a = parcel.readString();
        this.b = parcel.readString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
        return this.f.equals(urlLinkFrame.f) && v.a(this.f3321a, urlLinkFrame.f3321a) && v.a(this.b, urlLinkFrame.b);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.f3321a != null ? this.f3321a.hashCode() : 0) + ((this.f.hashCode() + 527) * 31)) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f);
        parcel.writeString(this.f3321a);
        parcel.writeString(this.b);
    }
}
