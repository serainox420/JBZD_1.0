package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzave;
/* loaded from: classes2.dex */
public class zzavr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzavr> CREATOR = new zzavs();
    private final byte[] data;
    final int versionCode;
    private final zzauy zzbxP;
    private final zzave zzbxS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzavr(int i, zzauy zzauyVar, byte[] bArr, IBinder iBinder) {
        this.versionCode = i;
        this.zzbxP = (zzauy) com.google.android.gms.common.internal.zzac.zzw(zzauyVar);
        this.data = (byte[]) com.google.android.gms.common.internal.zzac.zzw(bArr);
        com.google.android.gms.common.internal.zzac.zzw(iBinder);
        this.zzbxS = zzave.zza.zzex(iBinder);
    }

    public IBinder getCallbackBinder() {
        if (this.zzbxS == null) {
            return null;
        }
        return this.zzbxS.asBinder();
    }

    public byte[] getData() {
        return this.data;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzavs.zza(this, parcel, i);
    }

    public zzauy zzNM() {
        return this.zzbxP;
    }
}
