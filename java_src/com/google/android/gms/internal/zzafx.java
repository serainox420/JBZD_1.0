package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzafx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzafx> CREATOR = new zzafy();
    public final ArrayList<zza> zzaJK;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzafz();
        public final String[] zzaKq;
        public final String[] zzaKr;
        public final String[] zzaKs;

        public zza(String[] strArr, String[] strArr2, String[] strArr3) {
            this.zzaKq = strArr;
            this.zzaKr = strArr2;
            this.zzaKs = strArr3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return Arrays.equals(this.zzaKq, zzaVar.zzaKq) && Arrays.equals(this.zzaKr, zzaVar.zzaKr) && Arrays.equals(this.zzaKs, zzaVar.zzaKs);
        }

        public int hashCode() {
            return Arrays.hashCode(this.zzaKq) + Arrays.hashCode(this.zzaKr) + Arrays.hashCode(this.zzaKs);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzafz.zza(this, parcel, i);
        }
    }

    public zzafx(ArrayList<zza> arrayList) {
        this.zzaJK = arrayList;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzafx) {
            return this.zzaJK.equals(((zzafx) obj).zzaJK);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaJK);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafy.zza(this, parcel, i);
    }
}
