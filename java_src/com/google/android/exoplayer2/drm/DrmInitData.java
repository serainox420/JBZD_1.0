package com.google.android.exoplayer2.drm;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.util.v;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class DrmInitData implements Parcelable, Comparator<SchemeData> {
    public static final Parcelable.Creator<DrmInitData> CREATOR = new Parcelable.Creator<DrmInitData>() { // from class: com.google.android.exoplayer2.drm.DrmInitData.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DrmInitData createFromParcel(Parcel parcel) {
            return new DrmInitData(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public DrmInitData[] newArray(int i) {
            return new DrmInitData[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f3198a;
    private final SchemeData[] b;
    private int c;

    public DrmInitData(List<SchemeData> list) {
        this(false, (SchemeData[]) list.toArray(new SchemeData[list.size()]));
    }

    public DrmInitData(SchemeData... schemeDataArr) {
        this(true, schemeDataArr);
    }

    private DrmInitData(boolean z, SchemeData... schemeDataArr) {
        SchemeData[] schemeDataArr2 = z ? (SchemeData[]) schemeDataArr.clone() : schemeDataArr;
        Arrays.sort(schemeDataArr2, this);
        for (int i = 1; i < schemeDataArr2.length; i++) {
            if (schemeDataArr2[i - 1].e.equals(schemeDataArr2[i].e)) {
                throw new IllegalArgumentException("Duplicate data for uuid: " + schemeDataArr2[i].e);
            }
        }
        this.b = schemeDataArr2;
        this.f3198a = schemeDataArr2.length;
    }

    DrmInitData(Parcel parcel) {
        this.b = (SchemeData[]) parcel.createTypedArray(SchemeData.CREATOR);
        this.f3198a = this.b.length;
    }

    public SchemeData a(int i) {
        return this.b[i];
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b);
        }
        return this.c;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.b, ((DrmInitData) obj).b);
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(SchemeData schemeData, SchemeData schemeData2) {
        if (com.google.android.exoplayer2.b.b.equals(schemeData.e)) {
            return com.google.android.exoplayer2.b.b.equals(schemeData2.e) ? 0 : 1;
        }
        return schemeData.e.compareTo(schemeData2.e);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedArray(this.b, 0);
    }

    /* loaded from: classes2.dex */
    public static final class SchemeData implements Parcelable {
        public static final Parcelable.Creator<SchemeData> CREATOR = new Parcelable.Creator<SchemeData>() { // from class: com.google.android.exoplayer2.drm.DrmInitData.SchemeData.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SchemeData createFromParcel(Parcel parcel) {
                return new SchemeData(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SchemeData[] newArray(int i) {
                return new SchemeData[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final String f3199a;
        public final byte[] b;
        public final boolean c;
        private int d;
        private final UUID e;

        public SchemeData(UUID uuid, String str, byte[] bArr) {
            this(uuid, str, bArr, false);
        }

        public SchemeData(UUID uuid, String str, byte[] bArr, boolean z) {
            this.e = (UUID) com.google.android.exoplayer2.util.a.a(uuid);
            this.f3199a = (String) com.google.android.exoplayer2.util.a.a(str);
            this.b = (byte[]) com.google.android.exoplayer2.util.a.a(bArr);
            this.c = z;
        }

        SchemeData(Parcel parcel) {
            this.e = new UUID(parcel.readLong(), parcel.readLong());
            this.f3199a = parcel.readString();
            this.b = parcel.createByteArray();
            this.c = parcel.readByte() != 0;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeData schemeData = (SchemeData) obj;
            return this.f3199a.equals(schemeData.f3199a) && v.a(this.e, schemeData.e) && Arrays.equals(this.b, schemeData.b);
        }

        public int hashCode() {
            if (this.d == 0) {
                this.d = (((this.e.hashCode() * 31) + this.f3199a.hashCode()) * 31) + Arrays.hashCode(this.b);
            }
            return this.d;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.e.getMostSignificantBits());
            parcel.writeLong(this.e.getLeastSignificantBits());
            parcel.writeString(this.f3199a);
            parcel.writeByteArray(this.b);
            parcel.writeByte((byte) (this.c ? 1 : 0));
        }
    }
}
