package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.internal.zzn;
/* loaded from: classes.dex */
public final class zzaf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaf> CREATOR = new zzag();
    final int zzaiI;
    @Deprecated
    public final String zzbAH;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final zzv zzbBa;
    @Deprecated
    public final String zzbzI;
    @Deprecated
    public final boolean zzbzJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaf(int i, zzv zzvVar, IBinder iBinder, String str, String str2, boolean z, ClientAppContext clientAppContext) {
        this.zzaiI = i;
        this.zzbBa = zzvVar;
        this.zzbAL = zzn.zza.zzeK(iBinder);
        this.zzbzI = str;
        this.zzbAH = str2;
        this.zzbzJ = z;
        this.zzbAM = ClientAppContext.zza(clientAppContext, str2, str, z);
    }

    public zzaf(zzv zzvVar, IBinder iBinder, ClientAppContext clientAppContext) {
        this(1, zzvVar, iBinder, null, null, false, clientAppContext);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzag.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        return this.zzbAL.asBinder();
    }
}
