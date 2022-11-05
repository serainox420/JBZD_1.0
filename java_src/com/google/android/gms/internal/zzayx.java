package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public class zzayx extends com.google.android.gms.common.internal.safeparcel.zza implements Comparable<zzayx> {
    public static final Parcelable.Creator<zzayx> CREATOR = new zzayy();
    public final String[] zzbBA;
    public final Map<String, zzayz> zzbBB = new TreeMap();
    public final int zzbBy;
    public final zzayz[] zzbBz;

    public zzayx(int i, zzayz[] zzayzVarArr, String[] strArr) {
        this.zzbBy = i;
        this.zzbBz = zzayzVarArr;
        for (zzayz zzayzVar : zzayzVarArr) {
            this.zzbBB.put(zzayzVar.name, zzayzVar);
        }
        this.zzbBA = strArr;
        if (this.zzbBA != null) {
            Arrays.sort(this.zzbBA);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzayx)) {
            return false;
        }
        zzayx zzayxVar = (zzayx) obj;
        return this.zzbBy == zzayxVar.zzbBy && com.google.android.gms.common.internal.zzaa.equal(this.zzbBB, zzayxVar.zzbBB) && Arrays.equals(this.zzbBA, zzayxVar.zzbBA);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.zzbBy);
        sb.append(", ");
        sb.append("(");
        for (zzayz zzayzVar : this.zzbBB.values()) {
            sb.append(zzayzVar);
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.zzbBA != null) {
            for (String str : this.zzbBA) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzayy.zza(this, parcel, i);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public int compareTo(zzayx zzayxVar) {
        return this.zzbBy - zzayxVar.zzbBy;
    }
}
