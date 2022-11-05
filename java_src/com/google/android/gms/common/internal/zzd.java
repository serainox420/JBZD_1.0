package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes2.dex */
public class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    final IBinder zzaEW;
    final Scope[] zzaEX;
    Integer zzaEY;
    Integer zzaEZ;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, IBinder iBinder, Scope[] scopeArr, Integer num, Integer num2) {
        this.zzaiI = i;
        this.zzaEW = iBinder;
        this.zzaEX = scopeArr;
        this.zzaEY = num;
        this.zzaEZ = num2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
