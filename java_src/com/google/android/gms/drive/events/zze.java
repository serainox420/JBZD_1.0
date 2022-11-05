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
public final class zze extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    final int zzaLF;
    final boolean zzaLG;
    final List<DriveSpace> zzaLH;
    private final Set<DriveSpace> zzaLI;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(int i, int i2, boolean z, List<DriveSpace> list) {
        this(i, i2, z, list, list == null ? null : new HashSet(list));
    }

    private zze(int i, int i2, boolean z, List<DriveSpace> list, Set<DriveSpace> set) {
        this.zzaiI = i;
        this.zzaLF = i2;
        this.zzaLG = z;
        this.zzaLH = list;
        this.zzaLI = set;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zze zzeVar = (zze) obj;
        return zzaa.equal(this.zzaLI, zzeVar.zzaLI) && this.zzaLF == zzeVar.zzaLF && this.zzaLG == zzeVar.zzaLG;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaLI, Integer.valueOf(this.zzaLF), Boolean.valueOf(this.zzaLG));
    }

    public String toString() {
        return String.format(Locale.US, "ChangesAvailableOptions[ChangesSizeLimit=%d, Repeats=%s, Spaces=%s]", Integer.valueOf(this.zzaLF), Boolean.valueOf(this.zzaLG), this.zzaLH);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
