package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class ChapterFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterFrame> CREATOR = new Parcelable.Creator<ChapterFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.ChapterFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterFrame createFromParcel(Parcel parcel) {
            return new ChapterFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterFrame[] newArray(int i) {
            return new ChapterFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3315a;
    public final int b;
    public final int c;
    public final long d;
    public final long e;
    private final Id3Frame[] g;

    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        this.f3315a = str;
        this.b = i;
        this.c = i2;
        this.d = j;
        this.e = j2;
        this.g = id3FrameArr;
    }

    ChapterFrame(Parcel parcel) {
        super("CHAP");
        this.f3315a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        int readInt = parcel.readInt();
        this.g = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.g[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChapterFrame chapterFrame = (ChapterFrame) obj;
        return this.b == chapterFrame.b && this.c == chapterFrame.c && this.d == chapterFrame.d && this.e == chapterFrame.e && v.a(this.f3315a, chapterFrame.f3315a) && Arrays.equals(this.g, chapterFrame.g);
    }

    public int hashCode() {
        return (this.f3315a != null ? this.f3315a.hashCode() : 0) + ((((((((this.b + 527) * 31) + this.c) * 31) + ((int) this.d)) * 31) + ((int) this.e)) * 31);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3315a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeInt(this.g.length);
        for (Id3Frame id3Frame : this.g) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }

    @Override // com.google.android.exoplayer2.metadata.id3.Id3Frame, android.os.Parcelable
    public int describeContents() {
        return 0;
    }
}
