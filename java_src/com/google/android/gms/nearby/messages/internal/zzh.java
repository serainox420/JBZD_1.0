package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.internal.zzn;
@Deprecated
/* loaded from: classes.dex */
public class zzh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    final int zzaiI;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    @Deprecated
    public final String zzbzI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(int i, IBinder iBinder, String str, ClientAppContext clientAppContext) {
        this.zzaiI = i;
        this.zzbAL = zzn.zza.zzeK(iBinder);
        this.zzbzI = str;
        this.zzbAM = ClientAppContext.zza(clientAppContext, null, str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(IBinder iBinder) {
        this(1, iBinder, null, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        return this.zzbAL.asBinder();
    }
}
