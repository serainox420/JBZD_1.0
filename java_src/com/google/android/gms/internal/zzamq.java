package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzamq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzamq> CREATOR = new zzamr();
    final int zzaiI;
    final long zzaxb;
    final List<zzana> zzth;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamq(int i, long j, List<zzana> list) {
        this.zzaiI = i;
        this.zzaxb = j;
        this.zzth = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzamr.zza(this, parcel, i);
    }
}
