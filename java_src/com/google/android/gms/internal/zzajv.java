package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzajv extends com.google.android.gms.drive.zzr {
    public static final Parcelable.Creator<zzajv> CREATOR = new zzajw();
    final DataHolder zzaOq;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajv(int i, DataHolder dataHolder) {
        this.zzaiI = i;
        this.zzaOq = dataHolder;
    }

    public DataHolder zzBl() {
        return this.zzaOq;
    }

    @Override // com.google.android.gms.drive.zzr
    protected void zzK(Parcel parcel, int i) {
        zzajw.zza(this, parcel, i);
    }
}
