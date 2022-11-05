package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzb> CREATOR = new zzc();
    private final String zzaVr;
    private final BleDevice zzaVs;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(int i, String str, BleDevice bleDevice, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaVr = str;
        this.zzaVs = bleDevice;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzb(String str, BleDevice bleDevice, zzapf zzapfVar) {
        this.zzaiI = 4;
        this.zzaVr = str;
        this.zzaVs = bleDevice;
        this.zzaVt = zzapfVar;
    }

    public IBinder getCallbackBinder() {
        if (this.zzaVt == null) {
            return null;
        }
        return this.zzaVt.asBinder();
    }

    public String getDeviceAddress() {
        return this.zzaVr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    public String toString() {
        return String.format("ClaimBleDeviceRequest{%s %s}", this.zzaVr, this.zzaVs);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public BleDevice zzCM() {
        return this.zzaVs;
    }
}
