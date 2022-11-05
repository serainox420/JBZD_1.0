package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.zzs;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzax extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzax> CREATOR = new zzay();
    private final PendingIntent mPendingIntent;
    private final zzapf zzaVt;
    private final com.google.android.gms.fitness.data.zzs zzaWo;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzax(int i, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2) {
        this.zzaiI = i;
        this.zzaWo = iBinder == null ? null : zzs.zza.zzcg(iBinder);
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapf.zza.zzcJ(iBinder2);
    }

    public zzax(com.google.android.gms.fitness.data.zzs zzsVar, PendingIntent pendingIntent, zzapf zzapfVar) {
        this.zzaiI = 4;
        this.zzaWo = zzsVar;
        this.mPendingIntent = pendingIntent;
        this.zzaVt = zzapfVar;
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

    public String toString() {
        return String.format("SensorUnregistrationRequest{%s}", this.zzaWo);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzay.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzDh() {
        if (this.zzaWo == null) {
            return null;
        }
        return this.zzaWo.asBinder();
    }
}
