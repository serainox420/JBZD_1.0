package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class FavaDiagnosticsEntity extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<FavaDiagnosticsEntity> CREATOR = new zza();
    public final String zzaGP;
    public final int zzaGQ;
    final int zzaiI;

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.zzaiI = i;
        this.zzaGP = str;
        this.zzaGQ = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
