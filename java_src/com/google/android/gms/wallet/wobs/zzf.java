package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzf> CREATOR = new zzi();
    String label;
    String type;
    zzl zzbQF;
    zzg zzbSy;

    zzf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(String str, zzg zzgVar, String str2, zzl zzlVar) {
        this.label = str;
        this.zzbSy = zzgVar;
        this.type = str2;
        this.zzbQF = zzlVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
