package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzave;
import com.google.android.gms.internal.zzavg;
/* loaded from: classes2.dex */
public class zzavt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavt> CREATOR = new zzavu();
    final int versionCode;
    private final zzave zzbxS;
    private final byte zzbxV;
    private final zzavg zzbxW;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavt(int i, byte b, IBinder iBinder, IBinder iBinder2) {
        this.versionCode = i;
        this.zzbxV = b;
        com.google.android.gms.common.internal.zzac.zzw(iBinder);
        this.zzbxW = zzavg.zza.zzez(iBinder);
        com.google.android.gms.common.internal.zzac.zzw(iBinder2);
        this.zzbxS = zzave.zza.zzex(iBinder2);
    }

    public IBinder getCallbackBinder() {
        if (this.zzbxS == null) {
            return null;
        }
        return this.zzbxS.asBinder();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavu.zza(this, parcel, i);
    }

    public byte zzNP() {
        return this.zzbxV;
    }

    public IBinder zzNS() {
        if (this.zzbxW == null) {
            return null;
        }
        return this.zzbxW.asBinder();
    }
}
