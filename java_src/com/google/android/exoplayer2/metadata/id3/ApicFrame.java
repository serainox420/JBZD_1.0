package com.google.android.exoplayer2.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class ApicFrame extends Id3Frame {
    public static final Parcelable.Creator<ApicFrame> CREATOR = new Parcelable.Creator<ApicFrame>() { // from class: com.google.android.exoplayer2.metadata.id3.ApicFrame.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ApicFrame createFromParcel(Parcel parcel) {
            return new ApicFrame(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ApicFrame[] newArray(int i) {
            return new ApicFrame[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final String f3313a;
    public final String b;
    public final int c;
    public final byte[] d;

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.f3313a = str;
        this.b = str2;
        this.c = i;
        this.d = bArr;
    }

    ApicFrame(Parcel parcel) {
        super("APIC");
        this.f3313a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readInt();
        this.d = parcel.createByteArray();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ApicFrame apicFrame = (ApicFrame) obj;
        return this.c == apicFrame.c && v.a(this.f3313a, apicFrame.f3313a) && v.a(this.b, apicFrame.b) && Arrays.equals(this.d, apicFrame.d);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.f3313a != null ? this.f3313a.hashCode() : 0) + ((this.c + 527) * 31)) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return ((hashCode + i) * 31) + Arrays.hashCode(this.d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3313a);
        parcel.writeString(this.b);
        parcel.writeInt(this.c);
        parcel.writeByteArray(this.d);
    }
}
