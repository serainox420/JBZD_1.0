package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.internal.zzbwv;
/* loaded from: classes2.dex */
public class zzcg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzcg> CREATOR = new zzch();
    private final zzbwv.zzb zzrr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcg(byte[] bArr) {
        zzbwv.zzb zzbVar = null;
        try {
            zzbVar = zzbwv.zzb.zzae(bArr);
        } catch (zzbxs e) {
            Log.e("InterestRecordStub", "Could not deserialize interest bytes.", e);
        }
        this.zzrr = zzbVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzch.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zzbn() {
        return zzbxt.zzf(this.zzrr);
    }
}
