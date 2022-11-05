package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    String description;
    String zzbSH;

    zzn() {
    }

    public zzn(String str, String str2) {
        this.zzbSH = str;
        this.description = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
