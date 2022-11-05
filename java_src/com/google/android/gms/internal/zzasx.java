package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
public class zzasx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzasx> CREATOR = new zzasz();
    final int zzaiI;
    private final String zzaiu;
    private final String zzblE;
    private final List<zzasv> zzbng;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasx(int i, String str, String str2, List<zzasv> list) {
        this.zzaiI = i;
        this.zzaiu = str;
        this.zzblE = str2;
        this.zzbng = list;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzasx)) {
            return false;
        }
        zzasx zzasxVar = (zzasx) obj;
        return this.zzaiu.equals(zzasxVar.zzaiu) && this.zzblE.equals(zzasxVar.zzblE) && this.zzbng.equals(zzasxVar.zzbng);
    }

    public String getPlaceId() {
        return this.zzblE;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaiu, this.zzblE, this.zzbng);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("accountName", this.zzaiu).zzg("placeId", this.zzblE).zzg("placeAliases", this.zzbng).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasz.zza(this, parcel, i);
    }

    public List<zzasv> zzJf() {
        return this.zzbng;
    }

    public String zzJi() {
        return this.zzaiu;
    }
}
