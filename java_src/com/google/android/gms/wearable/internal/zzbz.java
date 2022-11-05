package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.MessageEvent;
/* loaded from: classes2.dex */
public class zzbz extends com.google.android.gms.common.internal.safeparcel.zza implements MessageEvent {
    public static final Parcelable.Creator<zzbz> CREATOR = new zzca();
    private final String mPath;
    private final int zzaKE;
    private final String zzacO;
    private final byte[] zzbeL;

    public zzbz(int i, String str, byte[] bArr, String str2) {
        this.zzaKE = i;
        this.mPath = str;
        this.zzbeL = bArr;
        this.zzacO = str2;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public byte[] getData() {
        return this.zzbeL;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public String getPath() {
        return this.mPath;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public int getRequestId() {
        return this.zzaKE;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public String getSourceNodeId() {
        return this.zzacO;
    }

    public String toString() {
        int i = this.zzaKE;
        String str = this.mPath;
        String valueOf = String.valueOf(this.zzbeL == null ? "null" : Integer.valueOf(this.zzbeL.length));
        return new StringBuilder(String.valueOf(str).length() + 43 + String.valueOf(valueOf).length()).append("MessageEventParcelable[").append(i).append(",").append(str).append(", size=").append(valueOf).append("]").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzca.zza(this, parcel, i);
    }
}
