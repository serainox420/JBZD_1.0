package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzajl extends com.google.android.gms.common.internal.safeparcel.zza {
    final int zzJO;
    final long zzaOf;
    final long zzaOg;
    final List<com.google.android.gms.drive.zze> zzaOh;
    final int zzaiI;
    private static final List<com.google.android.gms.drive.zze> zzaOe = Collections.emptyList();
    public static final Parcelable.Creator<zzajl> CREATOR = new zzajm();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajl(int i, long j, long j2, int i2, List<com.google.android.gms.drive.zze> list) {
        this.zzaiI = i;
        this.zzaOf = j;
        this.zzaOg = j2;
        this.zzJO = i2;
        this.zzaOh = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajm.zza(this, parcel, i);
    }

    public long zzBg() {
        return this.zzaOf;
    }

    public long zzBh() {
        return this.zzaOg;
    }
}
