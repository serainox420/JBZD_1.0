package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();
    public final String type;
    public final String zzaGP;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(int i, String str, String str2) {
        this.zzaiI = i;
        this.zzaGP = str;
        this.type = str2;
    }

    public zzt(String str, String str2) {
        this(1, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzt) || hashCode() != obj.hashCode()) {
            return false;
        }
        zzt zztVar = (zzt) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaGP, zztVar.zzaGP) && com.google.android.gms.common.internal.zzaa.equal(this.type, zztVar.type);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaGP, this.type);
    }

    public String toString() {
        String str = this.zzaGP;
        String str2 = this.type;
        return new StringBuilder(String.valueOf(str).length() + 17 + String.valueOf(str2).length()).append("namespace=").append(str).append(", type=").append(str2).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzu.zza(this, parcel, i);
    }
}
