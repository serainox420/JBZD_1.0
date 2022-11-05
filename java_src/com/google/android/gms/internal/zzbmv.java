package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class zzbmv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmv> CREATOR = new zzbmw();
    @zzbmb
    public final int zzaiI;
    @zzbvf("values")
    private List<String> zzbYL;

    public zzbmv() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmv(int i, List<String> list) {
        this.zzaiI = i;
        if (list == null || list.isEmpty()) {
            this.zzbYL = Collections.emptyList();
        } else {
            this.zzbYL = Collections.unmodifiableList(list);
        }
    }

    public zzbmv(List<String> list) {
        this.zzaiI = 1;
        this.zzbYL = new ArrayList();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzbYL.addAll(list);
    }

    public static zzbmv zzWl() {
        return new zzbmv(null);
    }

    public static zzbmv zza(zzbmv zzbmvVar) {
        return new zzbmv(zzbmvVar != null ? zzbmvVar.zzWk() : null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmw.zza(this, parcel, i);
    }

    public List<String> zzWk() {
        return this.zzbYL;
    }
}
