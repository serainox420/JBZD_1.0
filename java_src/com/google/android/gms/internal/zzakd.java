package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzakd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakd> CREATOR = new zzake();
    private final List<String> zzaMo;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakd(int i, List<String> list) {
        this.zzaiI = i;
        this.zzaMo = list;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzake.zza(this, parcel, i);
    }

    public List<String> zzAV() {
        return this.zzaMo;
    }
}
