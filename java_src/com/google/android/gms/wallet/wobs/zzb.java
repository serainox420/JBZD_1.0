package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    String label;
    String value;

    zzb() {
    }

    public zzb(String str, String str2) {
        this.label = str;
        this.value = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
