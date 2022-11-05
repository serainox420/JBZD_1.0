package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public final class zza extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zza> CREATOR = new zzb();
    private final zzj zzbxX;

    public zza(zzj zzjVar) {
        this.zzbxX = zzjVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zza)) {
            return false;
        }
        return zzaa.equal(this.zzbxX, ((zza) obj).zzbxX);
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzbxX);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }

    public zzj zzNT() {
        return this.zzbxX;
    }
}
