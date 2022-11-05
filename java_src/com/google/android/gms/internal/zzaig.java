package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzs;
/* loaded from: classes2.dex */
public class zzaig extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaig> CREATOR = new zzaih();
    final IBinder zzaNE;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaig(int i, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaNE = iBinder;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaih.zza(this, parcel, i);
    }

    public com.google.android.gms.common.internal.zzs zzBc() {
        return zzs.zza.zzbs(this.zzaNE);
    }
}
