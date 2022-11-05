package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zzd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    public final DataSource zzaTi;
    public final boolean zzaWT;
    public final long zzaWU;
    public final long zzaWV;
    public final long zzaWW;
    final int zzaiI;
    public final long zzait;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, DataSource dataSource, long j, boolean z, long j2, long j3, long j4) {
        this.zzaiI = i;
        this.zzaTi = dataSource;
        this.zzait = j;
        this.zzaWT = z;
        this.zzaWU = j2;
        this.zzaWV = j3;
        this.zzaWW = j4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
