package com.google.android.gms.nearby.messages.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.internal.zzm;
import com.google.android.gms.nearby.messages.internal.zzn;
/* loaded from: classes.dex */
public final class zzah extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzah> CREATOR = new zzai();
    public final PendingIntent zzaJH;
    final int zzaiI;
    @Deprecated
    public final String zzbAH;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final zzm zzbBg;
    public final int zzbBi;
    @Deprecated
    public final String zzbzI;
    @Deprecated
    public final boolean zzbzJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzah(int i, IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, int i2, String str, String str2, boolean z, ClientAppContext clientAppContext) {
        this.zzaiI = i;
        this.zzbBg = zzm.zza.zzeJ(iBinder);
        this.zzbAL = zzn.zza.zzeK(iBinder2);
        this.zzaJH = pendingIntent;
        this.zzbBi = i2;
        this.zzbzI = str;
        this.zzbAH = str2;
        this.zzbzJ = z;
        this.zzbAM = ClientAppContext.zza(clientAppContext, str2, str, z);
    }

    public zzah(IBinder iBinder, IBinder iBinder2, PendingIntent pendingIntent, int i) {
        this(1, iBinder, iBinder2, pendingIntent, i, null, null, false, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzai.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOS() {
        if (this.zzbBg == null) {
            return null;
        }
        return this.zzbBg.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        return this.zzbAL.asBinder();
    }
}
