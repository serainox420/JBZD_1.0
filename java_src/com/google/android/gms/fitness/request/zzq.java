package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();
    private final PendingIntent mPendingIntent;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(int i, PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaiI = i;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzq(PendingIntent pendingIntent, IBinder iBinder) {
        this.zzaiI = 1;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    private boolean zzb(zzq zzqVar) {
        return com.google.android.gms.common.internal.zzaa.equal(this.mPendingIntent, zzqVar.mPendingIntent);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzq) && zzb((zzq) obj));
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
        return "DataUpdateListenerUnregistrationRequest";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzr.zza(this, parcel, i);
    }
}
