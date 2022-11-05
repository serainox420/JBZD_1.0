package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzajx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajx> CREATOR = new zzakc();
    final int zzaiI;
    final boolean zztZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajx(int i, boolean z) {
        this.zzaiI = i;
        this.zztZ = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakc.zza(this, parcel, i);
    }
}
