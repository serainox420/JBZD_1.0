package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzane extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzane> CREATOR = new zzanf();
    final String zzaRm;
    final String zzaRn;
    final int zzaRo;
    final int zzaRp;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzane(int i, String str, String str2, int i2, int i3) {
        this.zzaiI = i;
        this.zzaRm = str;
        this.zzaRn = str2;
        this.zzaRo = i2;
        this.zzaRp = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanf.zza(this, parcel, i);
    }
}
