package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class zzaen extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaen> CREATOR = new zzaeo();
    public final String zzaJm;
    public zzaep zzaJn;
    public final long zzaJo;

    public zzaen(String str, long j, zzaep zzaepVar) {
        this(com.google.android.gms.common.internal.zzac.zzdr(str), (zzaep) com.google.android.gms.common.internal.zzac.zzw(zzaepVar), j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaen(String str, zzaep zzaepVar, long j) {
        this.zzaJm = str;
        this.zzaJn = zzaepVar;
        this.zzaJo = j;
    }

    public static zzaen zza(String str, long j, zzaep zzaepVar) {
        return new zzaen(str, j, zzaepVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaen)) {
            return false;
        }
        zzaen zzaenVar = (zzaen) obj;
        return TextUtils.equals(this.zzaJm, zzaenVar.zzaJm) && this.zzaJo == zzaenVar.zzaJo;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaJm, Long.valueOf(this.zzaJo));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaeo.zza(this, parcel, i);
    }
}
