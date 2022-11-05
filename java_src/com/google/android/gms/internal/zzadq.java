package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzadq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzadq> CREATOR = new zzadr();
    private final byte[] zzaIQ;

    public zzadq(byte[] bArr) {
        this.zzaIQ = bArr;
    }

    public byte[] getPayload() {
        return this.zzaIQ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzadr.zza(this, parcel, i);
    }
}
