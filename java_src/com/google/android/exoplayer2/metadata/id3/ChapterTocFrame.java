package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new Parcelable.Creator<ChapterTocFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.ChapterTocFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ChapterTocFrame[] newArray(int i) {
            return new ChapterTocFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3316a;
    public final boolean b;
    public final boolean c;
    public final String[] d;
    private final Id3Frame[] e;

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f3316a = str;
        this.b = z;
        this.c = z2;
        this.d = strArr;
        this.e = id3FrameArr;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        boolean z = true;
        this.f3316a = parcel.readString();
        this.b = parcel.readByte() != 0;
        this.c = parcel.readByte() == 0 ? false : z;
        this.d = parcel.createStringArray();
        int readInt = parcel.readInt();
        this.e = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.e[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        return this.b == chapterTocFrame.b && this.c == chapterTocFrame.c && v.a(this.f3316a, chapterTocFrame.f3316a) && Arrays.equals(this.d, chapterTocFrame.d) && Arrays.equals(this.e, chapterTocFrame.e);
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        int i3 = ((this.b ? 1 : 0) + 527) * 31;
        if (!this.c) {
            i = 0;
        }
        int i4 = (i3 + i) * 31;
        if (this.f3316a != null) {
            i2 = this.f3316a.hashCode();
        }
        return i4 + i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int i2 = 1;
        parcel.writeString(this.f3316a);
        parcel.writeByte((byte) (this.b ? 1 : 0));
        if (!this.c) {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        parcel.writeStringArray(this.d);
        parcel.writeInt(this.e.length);
        for (int i3 = 0; i3 < this.e.length; i3++) {
            parcel.writeParcelable(this.e[i3], 0);
        }
    }
}
