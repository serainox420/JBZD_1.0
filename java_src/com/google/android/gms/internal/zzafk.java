package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzafk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzafk> CREATOR = new zzafj();
    public final ArrayList<zza> zzaJK;
    public final ArrayList<String> zzaJL;
    public final zzaga zzaJM;

    /* loaded from: classes2.dex */
    public static class zza extends com.google.android.gms.common.internal.safeparcel.zza {
        public static final Parcelable.Creator<zza> CREATOR = new zzafl();
        public final int name;
        public final int zzaJN;
        public final zzagf zzaJO;
        public final zzafx zzaJP;

        public zza(int i, int i2, zzagf zzagfVar, zzafx zzafxVar) {
            this.zzaJN = i;
            this.name = i2;
            this.zzaJO = zzagfVar;
            this.zzaJP = zzafxVar;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return this.zzaJN == zzaVar.zzaJN && this.name == zzaVar.name && this.zzaJO.equals(zzaVar.zzaJO) && com.google.android.gms.common.internal.zzaa.equal(this.zzaJP, zzaVar.zzaJP);
        }

        public int hashCode() {
            return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.zzaJN), Integer.valueOf(this.name), this.zzaJO, this.zzaJP);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzafl.zza(this, parcel, i);
        }
    }

    public zzafk(ArrayList<zza> arrayList, ArrayList<String> arrayList2, zzaga zzagaVar) {
        this.zzaJK = arrayList;
        this.zzaJL = arrayList2;
        this.zzaJM = zzagaVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzafk)) {
            return false;
        }
        zzafk zzafkVar = (zzafk) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaJK, zzafkVar.zzaJK) && com.google.android.gms.common.internal.zzaa.equal(this.zzaJL, zzafkVar.zzaJL);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaJK, this.zzaJL);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("contexts=[");
        if (this.zzaJK != null && this.zzaJK.size() > 0) {
            Iterator<zza> it = this.zzaJK.iterator();
            while (it.hasNext()) {
                sb.append(it.next().name).append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafj.zza(this, parcel, i);
    }
}
