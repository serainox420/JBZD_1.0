package com.google.android.gms.wallet.firstparty;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    zzm zzbRG;
    boolean zzbRH;

    zzh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzm zzmVar, boolean z) {
        this.zzbRG = zzmVar;
        this.zzbRH = z;
        if (zzmVar == null) {
            throw new NullPointerException("WalletCustomTheme is required");
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
