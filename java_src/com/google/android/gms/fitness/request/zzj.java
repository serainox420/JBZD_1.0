package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    final int versionCode;
    public final DataSource zzaTi;
    public final long zzaUc;
    public final int zzaVF;
    public final long zzaVL;
    public final int zzaVM;
    public final long zzait;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, DataSource dataSource, long j, long j2, long j3, int i2, int i3) {
        this.versionCode = i;
        this.zzaTi = dataSource;
        this.zzait = j;
        this.zzaUc = j2;
        this.zzaVL = j3;
        this.zzaVF = i2;
        this.zzaVM = i3;
    }

    public String toString() {
        return String.format("{%1$s, %2$tF %2$tT - %3$tF %3$tT (%4$s %5$s)}", this.zzaTi.toDebugString(), Long.valueOf(this.zzaUc / 1000000), Long.valueOf(this.zzaVL / 1000000), Integer.valueOf(this.zzaVF), Integer.valueOf(this.zzaVM));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
