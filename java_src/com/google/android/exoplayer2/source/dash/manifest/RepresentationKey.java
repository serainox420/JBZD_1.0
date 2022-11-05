package com.google.android.exoplayer2.source.dash.manifest;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class RepresentationKey implements Parcelable, Comparable<RepresentationKey> {
    public static final Parcelable.Creator<RepresentationKey> CREATOR = new Parcelable.Creator<RepresentationKey>() { // from class: com.google.android.exoplayer2.source.dash.manifest.RepresentationKey.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public RepresentationKey createFromParcel(Parcel parcel) {
            return new RepresentationKey(parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public RepresentationKey[] newArray(int i) {
            return new RepresentationKey[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f3391a;
    public final int b;
    public final int c;

    public RepresentationKey(int i, int i2, int i3) {
        this.f3391a = i;
        this.b = i2;
        this.c = i3;
    }

    public String toString() {
        return this.f3391a + "." + this.b + "." + this.c;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3391a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(RepresentationKey representationKey) {
        int i = this.f3391a - representationKey.f3391a;
        if (i == 0) {
            int i2 = this.b - representationKey.b;
            if (i2 == 0) {
                return this.c - representationKey.c;
            }
            return i2;
        }
        return i;
    }
}
