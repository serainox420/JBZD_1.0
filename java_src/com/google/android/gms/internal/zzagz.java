package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzagz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagz> CREATOR = new zzaha();
    private final List<String> zzaMo;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagz(int i, List<String> list) {
        this.zzaiI = i;
        this.zzaMo = list;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaha.zza(this, parcel, i);
    }

    public List<String> zzAV() {
        return this.zzaMo;
    }
}
