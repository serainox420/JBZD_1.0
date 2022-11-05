package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    private final int zzaSu;
    private final int zzbju;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, int i2) {
        this.zzaSu = i;
        this.zzbju = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzd)) {
            return false;
        }
        zzd zzdVar = (zzd) obj;
        return this.zzaSu == zzdVar.zzaSu && this.zzbju == zzdVar.zzbju;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaSu), Integer.valueOf(this.zzbju));
    }

    public String toString() {
        int i = this.zzaSu;
        return new StringBuilder(75).append("ActivityTransition [mActivityType=").append(i).append(", mTransitionType=").append(this.zzbju).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public int zzBW() {
        return this.zzaSu;
    }

    public int zzIc() {
        return this.zzbju;
    }
}
