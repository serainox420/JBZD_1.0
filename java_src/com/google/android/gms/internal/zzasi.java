package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class zzasi extends com.google.android.gms.common.internal.safeparcel.zza {
    String mTag;
    LocationRequest zzaWw;
    boolean zzbjl = true;
    List<zzarw> zzbjx;
    boolean zzbkN;
    boolean zzbkO;
    static final List<zzarw> zzbkM = Collections.emptyList();
    public static final Parcelable.Creator<zzasi> CREATOR = new zzasj();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzasi(LocationRequest locationRequest, List<zzarw> list, String str, boolean z, boolean z2) {
        this.zzaWw = locationRequest;
        this.zzbjx = list;
        this.mTag = str;
        this.zzbkN = z;
        this.zzbkO = z2;
    }

    public static zzasi zza(String str, LocationRequest locationRequest) {
        return new zzasi(locationRequest, zzbkM, str, false, false);
    }

    @Deprecated
    public static zzasi zzb(LocationRequest locationRequest) {
        return zza(null, locationRequest);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzasi)) {
            return false;
        }
        zzasi zzasiVar = (zzasi) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaWw, zzasiVar.zzaWw) && com.google.android.gms.common.internal.zzaa.equal(this.zzbjx, zzasiVar.zzbjx) && com.google.android.gms.common.internal.zzaa.equal(this.mTag, zzasiVar.mTag) && this.zzbkN == zzasiVar.zzbkN && this.zzbkO == zzasiVar.zzbkO;
    }

    public int hashCode() {
        return this.zzaWw.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.zzaWw.toString());
        if (this.mTag != null) {
            sb.append(" tag=").append(this.mTag);
        }
        sb.append(" hideAppOps=").append(this.zzbkN);
        sb.append(" clients=").append(this.zzbjx);
        sb.append(" forceCoarseLocation=").append(this.zzbkO);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasj.zza(this, parcel, i);
    }
}
