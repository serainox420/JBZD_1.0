package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class zzp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    final int zzaLZ;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(int i, int i2) {
        this.zzaiI = i;
        this.zzaLZ = i2;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj != this) {
            return zzaa.equal(Integer.valueOf(this.zzaLZ), Integer.valueOf(((zzp) obj).zzaLZ));
        }
        return true;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaLZ));
    }

    public String toString() {
        return String.format(Locale.US, "TransferProgressOptions[type=%d]", Integer.valueOf(this.zzaLZ));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
