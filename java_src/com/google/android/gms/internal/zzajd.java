package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import java.util.List;
/* loaded from: classes2.dex */
public class zzajd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajd> CREATOR = new zzaje();
    final DriveId zzaKG;
    final boolean zzaNT;
    final List<String> zzaNU;
    final boolean zzaNV;
    final DataHolder zzaNW;
    final String zzaNX;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajd(int i, DriveId driveId, boolean z, List<String> list, boolean z2, DataHolder dataHolder, String str) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaNT = z;
        this.zzaNU = list;
        this.zzaNV = z2;
        this.zzaNW = dataHolder;
        this.zzaNX = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaje.zza(this, parcel, i);
    }
}
