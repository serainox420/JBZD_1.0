package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzagv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagv> CREATOR = new zzagw();
    final List<String> zzaLM;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagv(int i, List<String> list) {
        this.zzaiI = i;
        this.zzaLM = list;
    }

    public zzagv(List<String> list) {
        this(1, list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagw.zza(this, parcel, i);
    }
}
