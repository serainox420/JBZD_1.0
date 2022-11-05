package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.List;
/* loaded from: classes2.dex */
public class zzo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    final List<String> zzaLw;
    final List<String> zzaLx;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(int i, List<String> list, List<String> list2) {
        this.zzaiI = i;
        this.zzaLw = (List) zzac.zzw(list);
        this.zzaLx = (List) zzac.zzw(list2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }
}
