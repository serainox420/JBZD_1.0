package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    String body;
    String zzbSE;
    zzl zzbSI;
    zzn zzbSJ;
    zzn zzbSK;

    zzp() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(String str, String str2, zzl zzlVar, zzn zznVar, zzn zznVar2) {
        this.zzbSE = str;
        this.body = str2;
        this.zzbSI = zzlVar;
        this.zzbSJ = zznVar;
        this.zzbSK = zznVar2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
