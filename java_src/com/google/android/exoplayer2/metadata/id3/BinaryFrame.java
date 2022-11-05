package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class BinaryFrame extends Id3Frame {
    public static final Parcelable.Creator<BinaryFrame> CREATOR = new Parcelable.Creator<BinaryFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.BinaryFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BinaryFrame createFromParcel(Parcel parcel) {
            return new BinaryFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BinaryFrame[] newArray(int i) {
            return new BinaryFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final byte[] f3314a;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.f3314a = bArr;
    }

    BinaryFrame(Parcel parcel) {
        super(parcel.readString());
        this.f3314a = parcel.createByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BinaryFrame binaryFrame = (BinaryFrame) obj;
        return this.f.equals(binaryFrame.f) && Arrays.equals(this.f3314a, binaryFrame.f3314a);
    }

    public int hashCode() {
        return ((this.f.hashCode() + 527) * 31) + Arrays.hashCode(this.f3314a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f);
        parcel.writeByteArray(this.f3314a);
    }
}
