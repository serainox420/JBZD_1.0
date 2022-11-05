package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzt extends zza {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();
    final int zzaiI;

    public zzt() {
        this(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(int i) {
        this.zzaiI = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzu.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <F> F zza(zzj<F> zzjVar) {
        return zzjVar.zzBJ();
    }
}
