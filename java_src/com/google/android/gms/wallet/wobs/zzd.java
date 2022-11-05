package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    String zzbSv;
    String zzbSw;
    ArrayList<zzb> zzbSx;

    zzd() {
        this.zzbSx = com.google.android.gms.common.util.zzb.zzyY();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(String str, String str2, ArrayList<zzb> arrayList) {
        this.zzbSv = str;
        this.zzbSw = str2;
        this.zzbSx = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
