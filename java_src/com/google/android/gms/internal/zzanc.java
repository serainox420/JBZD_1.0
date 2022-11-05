package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import java.util.List;
/* loaded from: classes2.dex */
public class zzanc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzanc> CREATOR = new zzand();
    final DataHolder zzaRi;
    final boolean zzaRj;
    final List<String> zzaRk;
    final zzamq zzaRl;
    final int zzaiI;
    final List<zzana> zzth;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanc(int i, List<zzana> list, DataHolder dataHolder, boolean z, List<String> list2, zzamq zzamqVar) {
        this.zzaiI = i;
        this.zzth = list;
        this.zzaRi = dataHolder;
        this.zzaRj = z;
        this.zzaRk = list2;
        this.zzaRl = zzamqVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzand.zza(this, parcel, i);
    }
}
