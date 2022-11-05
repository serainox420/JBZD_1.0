package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbb> CREATOR = new zzbc();
    private final PendingIntent mPendingIntent;
    private final zzapf zzaVt;
    private final int zzaWH;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbb(int i, PendingIntent pendingIntent, IBinder iBinder, int i2) {
        this.zzaiI = i;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = iBinder == null ? null : zzapf.zza.zzcJ(iBinder);
        this.zzaWH = i2;
    }

    public zzbb(PendingIntent pendingIntent, zzapf zzapfVar, int i) {
        this.zzaiI = 6;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapfVar;
        this.zzaWH = i;
    }

    private boolean zzb(zzbb zzbbVar) {
        return this.zzaWH == zzbbVar.zzaWH && com.google.android.gms.common.internal.zzaa.equal(this.mPendingIntent, zzbbVar.mPendingIntent);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof zzbb) && zzb((zzbb) obj));
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
        return com.google.android.gms.common.internal.zzaa.hashCode(this.mPendingIntent, Integer.valueOf(this.zzaWH));
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("pendingIntent", this.mPendingIntent).zzg("sessionRegistrationOption", Integer.valueOf(this.zzaWH)).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbc.zza(this, parcel, i);
    }

    public int zzDl() {
        return this.zzaWH;
    }
}
