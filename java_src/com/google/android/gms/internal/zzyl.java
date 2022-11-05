package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzyl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzyl> CREATOR = new zzym();
    private String zzavO;

    public zzyl() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzyl(String str) {
        this.zzavO = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzyl) {
            return zzyr.zza(this.zzavO, ((zzyl) obj).zzavO);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzavO);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzym.zza(this, parcel, i);
    }

    public String zzuy() {
        return this.zzavO;
    }
}
