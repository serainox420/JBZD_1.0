package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveSpace;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzain extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzain> CREATOR = new zzaio();
    final List<DriveSpace> zzaLH;
    private final Set<DriveSpace> zzaLI;
    final com.google.android.gms.drive.zza zzaNM;
    final int zzaNN;
    final boolean zzaNO;
    final int zzaiI;

    private zzain(int i, com.google.android.gms.drive.zza zzaVar, int i2, List<DriveSpace> list, Set<DriveSpace> set, boolean z) {
        this.zzaiI = i;
        this.zzaNM = zzaVar;
        this.zzaNN = i2;
        this.zzaLH = list;
        this.zzaLI = set;
        this.zzaNO = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzain(int i, com.google.android.gms.drive.zza zzaVar, int i2, List<DriveSpace> list, boolean z) {
        this(i, zzaVar, i2, list, list == null ? null : new HashSet(list), z);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaio.zza(this, parcel, i);
    }
}
