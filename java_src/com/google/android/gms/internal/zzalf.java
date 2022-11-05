package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzalf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzalf> CREATOR = new zzalg();
    private final List<String> zzaOA;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalf(int i, List<String> list) {
        this.zzaiI = i;
        this.zzaOA = list;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzalg.zza(this, parcel, i);
    }

    public List<String> zzBn() {
        return this.zzaOA;
    }
}
