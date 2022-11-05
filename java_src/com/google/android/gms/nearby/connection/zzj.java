package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
/* loaded from: classes2.dex */
public final class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    public static final zzj zzbyj = new zzj(3, 3);
    public static final zzj zzbyk = new zzj(2, 1);
    private final int zzbyl;
    private final int zzbym;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, int i2) {
        this.zzbyl = i;
        this.zzbym = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.zzbyl == zzjVar.zzbyl && this.zzbym == zzjVar.zzbym;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getConnectionType() {
        return this.zzbym;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzbyl), Integer.valueOf(this.zzbym));
    }

    public String toString() {
        int i = this.zzbyl;
        return new StringBuilder(63).append("Strategy{discoveryMode=").append(i).append(", connectionType=").append(this.zzbym).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzOc() {
        return this.zzbyl;
    }
}
