package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzasq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzasq> CREATOR = new zzasr();
    final int zzaiI;
    private final String zzblE;
    private final List<String> zzbng;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasq(int i, String str, List<String> list) {
        this.zzaiI = i;
        this.zzblE = str;
        this.zzbng = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzasq)) {
            return false;
        }
        zzasq zzasqVar = (zzasq) obj;
        return this.zzblE.equals(zzasqVar.zzblE) && this.zzbng.equals(zzasqVar.zzbng);
    }

    public String getPlaceId() {
        return this.zzblE;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzblE, this.zzbng);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("placeId", this.zzblE).zzg("placeAliases", this.zzbng).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasr.zza(this, parcel, i);
    }

    public List<String> zzJf() {
        return this.zzbng;
    }
}
