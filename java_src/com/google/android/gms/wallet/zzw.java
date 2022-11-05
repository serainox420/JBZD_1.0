package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzw> CREATOR = new zzx();
    Cart zzbRx;
    String zzbRy;
    String zzbRz;

    private zzw() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(Cart cart, String str, String str2) {
        this.zzbRx = cart;
        this.zzbRy = str;
        this.zzbRz = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzx.zza(this, parcel, i);
    }
}
