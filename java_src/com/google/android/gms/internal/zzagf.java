package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzagf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagf> CREATOR = new zzage();
    public final ArrayList<zza> zzaKv;
    public final int[] zzaKw;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzagg();
        public final long zzaKx;
        public final long zzaKy;

        public zza(long j, long j2) {
            boolean z = true;
            com.google.android.gms.common.internal.zzac.zzax(j >= -1);
            com.google.android.gms.common.internal.zzac.zzax(j2 > -1);
            if (j != -1) {
                com.google.android.gms.common.internal.zzac.zzax(j > j2 ? false : z);
            }
            this.zzaKx = j;
            this.zzaKy = j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zzaKx == zzaVar.zzqn() && this.zzaKy == zzaVar.zzAm();
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(Long.valueOf(this.zzaKx), Long.valueOf(this.zzaKy));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzagg.zza(this, parcel, i);
        }

        public long zzAm() {
            return this.zzaKy;
        }

        public long zzqn() {
            return this.zzaKx;
        }
    }

    public zzagf(ArrayList<zza> arrayList, int[] iArr) {
        this.zzaKv = arrayList;
        this.zzaKw = iArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzagf)) {
            return false;
        }
        zzagf zzagfVar = (zzagf) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaKv, zzagfVar.zzaKv) && com.google.android.gms.common.internal.zzaa.equal(this.zzaKw, zzagfVar.zzaKw);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaKv, this.zzaKw);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzage.zza(this, parcel, i);
    }
}
