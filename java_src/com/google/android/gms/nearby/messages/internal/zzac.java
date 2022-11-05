package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.internal.zzn;
import com.google.android.gms.nearby.messages.internal.zzq;
/* loaded from: classes.dex */
public final class zzac extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzac> CREATOR = new zzad();
    final int versionCode;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final zzq zzbBe;
    public boolean zzbBf;
    @Deprecated
    public String zzbzI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzac(int i, IBinder iBinder, IBinder iBinder2, boolean z, String str, ClientAppContext clientAppContext) {
        this.versionCode = i;
        this.zzbAL = zzn.zza.zzeK(iBinder);
        this.zzbBe = zzq.zza.zzeN(iBinder2);
        this.zzbBf = z;
        this.zzbzI = str;
        this.zzbAM = ClientAppContext.zza(clientAppContext, null, str, false);
    }

    public zzac(IBinder iBinder, IBinder iBinder2) {
        this(1, iBinder, iBinder2, false, null, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzad.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOR() {
        return this.zzbBe.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        return this.zzbAL.asBinder();
    }
}
