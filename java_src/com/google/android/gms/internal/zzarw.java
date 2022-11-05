package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzarw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzarw> CREATOR = new zzarx();
    public final String packageName;
    public final int uid;

    public zzarw(int i, String str) {
        this.uid = i;
        this.packageName = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof zzarw)) {
            return false;
        }
        zzarw zzarwVar = (zzarw) obj;
        return zzarwVar.uid == this.uid && com.google.android.gms.common.internal.zzaa.equal(zzarwVar.packageName, this.packageName);
    }

    public int hashCode() {
        return this.uid;
    }

    public String toString() {
        return String.format("%d:%s", Integer.valueOf(this.uid), this.packageName);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzarx.zza(this, parcel, i);
    }
}
