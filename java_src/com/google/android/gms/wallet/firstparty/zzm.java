package com.google.android.gms.wallet.firstparty;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzm> CREATOR = new zzn();
    int zzbRK;
    Bundle zzbRL;
    String zzbRM;

    public zzm() {
        this.zzbRK = 0;
        this.zzbRL = new Bundle();
        this.zzbRM = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(int i, Bundle bundle, String str) {
        this.zzbRL = bundle;
        this.zzbRK = i;
        this.zzbRM = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }
}
