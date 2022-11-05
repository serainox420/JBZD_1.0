package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class GeobFrame extends Id3Frame {
    public static final Parcelable.Creator<GeobFrame> CREATOR = new Parcelable.Creator<GeobFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.GeobFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GeobFrame createFromParcel(Parcel parcel) {
            return new GeobFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public GeobFrame[] newArray(int i) {
            return new GeobFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3318a;
    public final String b;
    public final String c;
    public final byte[] d;

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f3318a = str;
        this.b = str2;
        this.c = str3;
        this.d = bArr;
    }

    GeobFrame(Parcel parcel) {
        super("GEOB");
        this.f3318a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.createByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        GeobFrame geobFrame = (GeobFrame) obj;
        return v.a(this.f3318a, geobFrame.f3318a) && v.a(this.b, geobFrame.b) && v.a(this.c, geobFrame.c) && Arrays.equals(this.d, geobFrame.d);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b != null ? this.b.hashCode() : 0) + (((this.f3318a != null ? this.f3318a.hashCode() : 0) + 527) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return ((hashCode + i) * 31) + Arrays.hashCode(this.d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3318a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeByteArray(this.d);
    }
}
