package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class PrivFrame extends Id3Frame {
    public static final Parcelable.Creator<PrivFrame> CREATOR = new Parcelable.Creator<PrivFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.PrivFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivFrame createFromParcel(Parcel parcel) {
            return new PrivFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PrivFrame[] newArray(int i) {
            return new PrivFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3319a;
    public final byte[] b;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.f3319a = str;
        this.b = bArr;
    }

    PrivFrame(Parcel parcel) {
        super("PRIV");
        this.f3319a = parcel.readString();
        this.b = parcel.createByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PrivFrame privFrame = (PrivFrame) obj;
        return v.a(this.f3319a, privFrame.f3319a) && Arrays.equals(this.b, privFrame.b);
    }

    public int hashCode() {
        return (((this.f3319a != null ? this.f3319a.hashCode() : 0) + 527) * 31) + Arrays.hashCode(this.b);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3319a);
        parcel.writeByteArray(this.b);
    }
}
