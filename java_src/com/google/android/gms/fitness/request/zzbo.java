package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzbo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbo> CREATOR = new zzbp();
    private final String zzaVr;
    private final zzapf zzaVt;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbo(int i, String str, IBinder iBinder) {
        this.zzaiI = i;
        this.zzaVr = str;
        this.zzaVt = zzapf.zza.zzcJ(iBinder);
    }

    public zzbo(String str, zzapf zzapfVar) {
        this.zzaiI = 5;
        this.zzaVr = str;
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
        return String.format("UnclaimBleDeviceRequest{%s}", this.zzaVr);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbp.zza(this, parcel, i);
    }
}
