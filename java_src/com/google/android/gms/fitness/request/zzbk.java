package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.request.zza;
import com.google.android.gms.fitness.request.zzai;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbk> CREATOR = new zzbl();
    private final zzapf zzaVt;
    private final zzai zzaWJ;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbk(int i, IBinder iBinder, IBinder iBinder2) {
        this.zzaiI = i;
        this.zzaWJ = zzai.zza.zzcN(iBinder);
        this.zzaVt = zzapf.zza.zzcJ(iBinder2);
    }

    public zzbk(BleScanCallback bleScanCallback, zzapf zzapfVar) {
        this(zza.C0191zza.zzCL().zzb(bleScanCallback), zzapfVar);
    }

    public zzbk(zzai zzaiVar, zzapf zzapfVar) {
        this.zzaiI = 3;
        this.zzaWJ = zzaiVar;
        this.zzaVt = zzapfVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbl.zza(this, parcel, i);
    }

    public IBinder zzDm() {
        return this.zzaWJ.asBinder();
    }
}
