package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public class zzasv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzasv> CREATOR = new zzasw();
    public static final zzasv zzbni = new zzasv(0, "Home");
    public static final zzasv zzbnj = new zzasv(0, "Work");
    final int zzaiI;
    private final String zzbnk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasv(int i, String str) {
        this.zzaiI = i;
        this.zzbnk = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzasv) {
            return com.google.android.gms.common.internal.zzaa.equal(this.zzbnk, ((zzasv) obj).zzbnk);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbnk);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("alias", this.zzbnk).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasw.zza(this, parcel, i);
    }

    public String zzJh() {
        return this.zzbnk;
    }
}
