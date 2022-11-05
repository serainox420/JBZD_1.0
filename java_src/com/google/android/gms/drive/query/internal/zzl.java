package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzl extends zza {
    public static final Parcelable.Creator<zzl> CREATOR = new zzm();
    final String mValue;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(int i, String str) {
        this.zzaiI = i;
        this.mValue = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <F> F zza(zzj<F> zzjVar) {
        return zzjVar.zzdQ(this.mValue);
    }
}
