package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbmr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmr> CREATOR = new zzbms();
    public final int zzaiI;
    private List<zzbmp> zzbYI;

    public zzbmr() {
        this.zzaiI = 1;
        this.zzbYI = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmr(int i, List<zzbmp> list) {
        this.zzaiI = i;
        if (list == null || list.isEmpty()) {
            this.zzbYI = Collections.emptyList();
        } else {
            this.zzbYI = Collections.unmodifiableList(list);
        }
    }

    public static zzbmr zzWh() {
        return new zzbmr();
    }

    public static zzbmr zza(zzbmr zzbmrVar) {
        List<zzbmp> zzVZ = zzbmrVar.zzVZ();
        zzbmr zzbmrVar2 = new zzbmr();
        if (zzVZ != null) {
            zzbmrVar2.zzVZ().addAll(zzVZ);
        }
        return zzbmrVar2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbms.zza(this, parcel, i);
    }

    public List<zzbmp> zzVZ() {
        return this.zzbYI;
    }
}
