package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    String zzbRw;

    private zzu() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(String str) {
        this.zzbRw = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzv.zza(this, parcel, i);
    }
}
