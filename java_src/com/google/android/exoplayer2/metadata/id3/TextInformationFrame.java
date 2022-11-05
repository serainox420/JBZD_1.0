package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
/* loaded from: classes2.dex */
public final class TextInformationFrame extends Id3Frame {
    public static final Parcelable.Creator<TextInformationFrame> CREATOR = new Parcelable.Creator<TextInformationFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.TextInformationFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TextInformationFrame createFromParcel(Parcel parcel) {
            return new TextInformationFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TextInformationFrame[] newArray(int i) {
            return new TextInformationFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3320a;
    public final String b;

    public TextInformationFrame(String str, String str2, String str3) {
        super(str);
        this.f3320a = str2;
        this.b = str3;
    }

    TextInformationFrame(Parcel parcel) {
        super(parcel.readString());
        this.f3320a = parcel.readString();
        this.b = parcel.readString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
        return this.f.equals(textInformationFrame.f) && v.a(this.f3320a, textInformationFrame.f3320a) && v.a(this.b, textInformationFrame.b);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.f3320a != null ? this.f3320a.hashCode() : 0) + ((this.f.hashCode() + 527) * 31)) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f);
        parcel.writeString(this.f3320a);
        parcel.writeString(this.b);
    }
}
