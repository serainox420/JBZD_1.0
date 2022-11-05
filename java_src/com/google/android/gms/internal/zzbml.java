package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class zzbml extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbml> CREATOR = new zzbmm();
    @zzbmb
    public final int zzaiI;
    private List<zzbmj> zzbYC;

    public zzbml() {
        this.zzaiI = 1;
        this.zzbYC = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbml(int i, List<zzbmj> list) {
        this.zzaiI = i;
        this.zzbYC = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmm.zza(this, parcel, i);
    }

    public List<zzbmj> zzWb() {
        return this.zzbYC;
    }
}
