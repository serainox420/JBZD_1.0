package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzakf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakf> CREATOR = new zzakg();
    final ParcelFileDescriptor zzaOs;
    final IBinder zzaOt;
    final int zzaiI;
    final String zzxB;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakf(int i, ParcelFileDescriptor parcelFileDescriptor, IBinder iBinder, String str) {
        this.zzaiI = i;
        this.zzaOs = parcelFileDescriptor;
        this.zzaOt = iBinder;
        this.zzxB = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakg.zza(this, parcel, i | 1);
    }
}
