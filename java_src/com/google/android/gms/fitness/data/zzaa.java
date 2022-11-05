package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaa extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    private final Session zzaSj;
    private final DataSet zzaUn;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(int i, Session session, DataSet dataSet) {
        this.zzaiI = i;
        this.zzaSj = session;
        this.zzaUn = dataSet;
    }

    private boolean zza(zzaa zzaaVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaSj, zzaaVar.zzaSj) && com.google.android.gms.common.internal.zzaa.equal(this.zzaUn, zzaaVar.zzaUn);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzaa) && zza((zzaa) obj));
    }

    public DataSet getDataSet() {
        return this.zzaUn;
    }

    public Session getSession() {
        return this.zzaSj;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaSj, this.zzaUn);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("session", this.zzaSj).zzg("dataSet", this.zzaUn).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }
}
