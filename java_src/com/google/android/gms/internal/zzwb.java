package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzwb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzwb> CREATOR = new zzwc();
    private final int zzamg;
    private final int zzamh;

    public zzwb(int i, int i2) {
        this.zzamg = i;
        this.zzamh = i2;
    }

    public static String zzbu(int i) {
        return Integer.toString(i);
    }

    public static String zzbv(int i) {
        return Integer.toString(i);
    }

    public int getConnectionState() {
        return this.zzamg;
    }

    public String toString() {
        String valueOf = String.valueOf(zzbu(this.zzamg));
        String valueOf2 = String.valueOf(zzbv(this.zzamh));
        return new StringBuilder(String.valueOf(valueOf).length() + 41 + String.valueOf(valueOf2).length()).append("ConnectionState = ").append(valueOf).append(" NetworkMeteredState = ").append(valueOf2).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwc.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzrM() {
        return this.zzamh;
    }
}
