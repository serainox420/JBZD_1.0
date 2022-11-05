package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbh> CREATOR = new zzbi();
    private final PendingIntent mPendingIntent;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbh(int i, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaiI = i;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzbh(PendingIntent pendingIntent, zzapf zzapfVar) {
        this.zzaiI = 5;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapfVar;
    }

    private boolean zzb(zzbh zzbhVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.mPendingIntent, zzbhVar.mPendingIntent);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzbh) && zzb((zzbh) obj));
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public PendingIntent getIntent() {
        return this.mPendingIntent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mPendingIntent);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("pendingIntent", this.mPendingIntent).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbi.zza(this, parcel, i);
    }
}
