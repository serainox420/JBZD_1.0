package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzauq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzauq> CREATOR = new zzaur();
    public final String name;
    public final int versionCode;
    public final String zzaGV;
    public final String zzbqV;
    public final long zzbwc;
    public final Long zzbwd;
    public final Float zzbwe;
    public final Double zzbwf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauq(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        Double d2 = null;
        this.versionCode = i;
        this.name = str;
        this.zzbwc = j;
        this.zzbwd = l;
        this.zzbwe = null;
        if (i == 1) {
            this.zzbwf = f != null ? Double.valueOf(f.doubleValue()) : d2;
        } else {
            this.zzbwf = d;
        }
        this.zzaGV = str2;
        this.zzbqV = str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauq(zzaus zzausVar) {
        this(zzausVar.mName, zzausVar.zzbwg, zzausVar.mValue, zzausVar.mOrigin);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauq(String str, long j, Object obj, String str2) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        this.versionCode = 2;
        this.name = str;
        this.zzbwc = j;
        this.zzbqV = str2;
        if (obj == null) {
            this.zzbwd = null;
            this.zzbwe = null;
            this.zzbwf = null;
            this.zzaGV = null;
        } else if (obj instanceof Long) {
            this.zzbwd = (Long) obj;
            this.zzbwe = null;
            this.zzbwf = null;
            this.zzaGV = null;
        } else if (obj instanceof String) {
            this.zzbwd = null;
            this.zzbwe = null;
            this.zzbwf = null;
            this.zzaGV = (String) obj;
        } else if (!(obj instanceof Double)) {
            throw new IllegalArgumentException("User attribute given of un-supported type");
        } else {
            this.zzbwd = null;
            this.zzbwe = null;
            this.zzbwf = (Double) obj;
            this.zzaGV = null;
        }
    }

    public Object getValue() {
        if (this.zzbwd != null) {
            return this.zzbwd;
        }
        if (this.zzbwf != null) {
            return this.zzbwf;
        }
        if (this.zzaGV == null) {
            return null;
        }
        return this.zzaGV;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaur.zza(this, parcel, i);
    }
}
