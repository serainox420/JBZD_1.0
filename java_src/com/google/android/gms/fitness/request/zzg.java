package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzg> CREATOR = new zzh();
    private final DataSet zzaUn;
    private final boolean zzaVA;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(int i, DataSet dataSet, IBinder iBinder, boolean z) {
        this.zzaiI = i;
        this.zzaUn = dataSet;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
        this.zzaVA = z;
    }

    public zzg(DataSet dataSet, zzapf zzapfVar, boolean z) {
        this.zzaiI = 4;
        this.zzaUn = dataSet;
        this.zzaVt = zzapfVar;
        this.zzaVA = z;
    }

    private boolean zzc(zzg zzgVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaUn, zzgVar.zzaUn);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzg) && zzc((zzg) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public DataSet getDataSet() {
        return this.zzaUn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaUn);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("dataSet", this.zzaUn).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public boolean zzCR() {
        return this.zzaVA;
    }
}
