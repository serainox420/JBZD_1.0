package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzajt extends com.google.android.gms.drive.zzr {
    public static final Parcelable.Creator<zzajt> CREATOR = new zzaju();
    final boolean zzaMN;
    final DataHolder zzaOp;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajt(int i, DataHolder dataHolder, boolean z) {
        this.zzaiI = i;
        this.zzaOp = dataHolder;
        this.zzaMN = z;
    }

    public DataHolder zzBj() {
        return this.zzaOp;
    }

    public boolean zzBk() {
        return this.zzaMN;
    }

    @Override // com.google.android.gms.drive.zzr
    protected void zzK(Parcel parcel, int i) {
        zzaju.zza(this, parcel, i);
    }
}
