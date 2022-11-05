package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzk extends com.google.android.gms.drive.zzr implements DriveEvent {
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();
    final DataHolder zzaBi;
    final boolean zzaLW;
    final int zzaLX;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(int i, DataHolder dataHolder, boolean z, int i2) {
        this.zzaiI = i;
        this.zzaBi = dataHolder;
        this.zzaLW = z;
        this.zzaLX = i2;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public int getType() {
        return 3;
    }

    public DataHolder zzAQ() {
        return this.zzaBi;
    }

    public boolean zzAR() {
        return this.zzaLW;
    }

    public int zzAS() {
        return this.zzaLX;
    }

    @Override // com.google.android.gms.drive.zzr
    public void zzK(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
