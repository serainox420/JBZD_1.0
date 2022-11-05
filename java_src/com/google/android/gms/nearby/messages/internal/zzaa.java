package com.google.android.gms.nearby.messages.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.nearby.messages.Strategy;
import com.google.android.gms.nearby.messages.internal.zzn;
import com.google.android.gms.nearby.messages.internal.zzp;
/* loaded from: classes.dex */
public final class zzaa extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaa> CREATOR = new zzab();
    final int zzaiI;
    @Deprecated
    public final String zzbAH;
    public final zzn zzbAL;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final zzv zzbBa;
    public final Strategy zzbBb;
    @Deprecated
    public final boolean zzbBc;
    public final zzp zzbBd;
    @Deprecated
    public final String zzbzI;
    @Deprecated
    public final boolean zzbzJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaa(int i, zzv zzvVar, Strategy strategy, IBinder iBinder, String str, String str2, boolean z, IBinder iBinder2, boolean z2, ClientAppContext clientAppContext) {
        this.zzaiI = i;
        this.zzbBa = zzvVar;
        this.zzbBb = strategy;
        this.zzbAL = zzn.zza.zzeK(iBinder);
        this.zzbzI = str;
        this.zzbAH = str2;
        this.zzbBc = z;
        this.zzbBd = iBinder2 == null ? null : zzp.zza.zzeM(iBinder2);
        this.zzbzJ = z2;
        this.zzbAM = ClientAppContext.zza(clientAppContext, str2, str, z2);
    }

    public zzaa(zzv zzvVar, Strategy strategy, IBinder iBinder, IBinder iBinder2) {
        this(2, zzvVar, strategy, iBinder, null, null, false, iBinder2, false, null);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzab.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOQ() {
        if (this.zzbBd == null) {
            return null;
        }
        return this.zzbBd.asBinder();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IBinder zzOz() {
        return this.zzbAL.asBinder();
    }
}
