package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import java.util.List;
/* loaded from: classes2.dex */
public class zzajf extends com.google.android.gms.drive.zzr {
    public static final Parcelable.Creator<zzajf> CREATOR = new zzajg();
    final DataHolder zzaNY;
    final List<DriveId> zzaNZ;
    final com.google.android.gms.drive.zza zzaOa;
    final boolean zzaOb;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajf(int i, DataHolder dataHolder, List<DriveId> list, com.google.android.gms.drive.zza zzaVar, boolean z) {
        this.zzaiI = i;
        this.zzaNY = dataHolder;
        this.zzaNZ = list;
        this.zzaOa = zzaVar;
        this.zzaOb = z;
    }

    @Override // com.google.android.gms.drive.zzr
    protected void zzK(Parcel parcel, int i) {
        zzajg.zza(this, parcel, i | 1);
    }
}
