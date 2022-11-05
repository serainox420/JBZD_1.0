package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class zzsl implements Parcelable {
    @Deprecated
    public static final Parcelable.Creator<zzsl> CREATOR = new Parcelable.Creator<zzsl>() { // from class: com.google.android.gms.internal.zzsl.1
        @Override // android.os.Parcelable.Creator
        @Deprecated
        /* renamed from: zzaH */
        public zzsl[] newArray(int i) {
            return new zzsl[i];
        }

        @Override // android.os.Parcelable.Creator
        @Deprecated
        /* renamed from: zzx */
        public zzsl createFromParcel(Parcel parcel) {
            return new zzsl(parcel);
        }
    };
    private String mValue;
    private String zzGV;
    private String zzaeU;

    @Deprecated
    public zzsl() {
    }

    @Deprecated
    zzsl(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Deprecated
    private void readFromParcel(Parcel parcel) {
        this.zzGV = parcel.readString();
        this.zzaeU = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public int describeContents() {
        return 0;
    }

    public String getId() {
        return this.zzGV;
    }

    public String getValue() {
        return this.mValue;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzGV);
        parcel.writeString(this.zzaeU);
        parcel.writeString(this.mValue);
    }
}
