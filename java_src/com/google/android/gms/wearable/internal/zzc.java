package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.internal.zzbv;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    public final String zzbTA;
    public final zzbv zzbTx;
    public final IntentFilter[] zzbTy;
    public final String zzbTz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(IBinder iBinder, IntentFilter[] intentFilterArr, String str, String str2) {
        if (iBinder != null) {
            this.zzbTx = zzbv.zza.zzfC(iBinder);
        } else {
            this.zzbTx = null;
        }
        this.zzbTy = intentFilterArr;
        this.zzbTz = str;
        this.zzbTA = str2;
    }

    public zzc(zzcy zzcyVar) {
        this.zzbTx = zzcyVar;
        this.zzbTy = zzcyVar.zzUz();
        this.zzbTz = zzcyVar.zzUA();
        this.zzbTA = null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzAh() {
        if (this.zzbTx == null) {
            return null;
        }
        return this.zzbTx.asBinder();
    }
}
