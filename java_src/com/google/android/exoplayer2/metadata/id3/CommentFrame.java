package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
/* loaded from: classes2.dex */
public final class CommentFrame extends Id3Frame {
    public static final Parcelable.Creator<CommentFrame> CREATOR = new Parcelable.Creator<CommentFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.CommentFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CommentFrame createFromParcel(Parcel parcel) {
            return new CommentFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public CommentFrame[] newArray(int i) {
            return new CommentFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3317a;
    public final String b;
    public final String c;

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.f3317a = str;
        this.b = str2;
        this.c = str3;
    }

    CommentFrame(Parcel parcel) {
        super("COMM");
        this.f3317a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CommentFrame commentFrame = (CommentFrame) obj;
        return v.a(this.b, commentFrame.b) && v.a(this.f3317a, commentFrame.f3317a) && v.a(this.c, commentFrame.c);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b != null ? this.b.hashCode() : 0) + (((this.f3317a != null ? this.f3317a.hashCode() : 0) + 527) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f);
        parcel.writeString(this.f3317a);
        parcel.writeString(this.c);
    }
}
