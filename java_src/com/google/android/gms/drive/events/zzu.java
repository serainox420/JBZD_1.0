package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.drive.DriveSpace;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    final List<DriveSpace> zzaLH;
    private final Set<DriveSpace> zzaLI;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(int i, List<DriveSpace> list) {
        this(i, list, list == null ? null : new HashSet(list));
    }

    private zzu(int i, List<DriveSpace> list, Set<DriveSpace> set) {
        this.zzaiI = i;
        this.zzaLH = list;
        this.zzaLI = set;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj != this) {
            return zzaa.equal(this.zzaLI, ((zzu) obj).zzaLI);
        }
        return true;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLI);
    }

    public String toString() {
        return String.format(Locale.US, "TransferStateOptions[Spaces=%s]", this.zzaLH);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
