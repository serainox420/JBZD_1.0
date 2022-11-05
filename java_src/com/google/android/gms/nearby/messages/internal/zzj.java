package com.google.android.gms.nearby.messages.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    public final int versionCode;
    @Deprecated
    public final ClientAppContext zzbAM;
    public final int zzbAN;

    public zzj(int i) {
        this(1, null, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, ClientAppContext clientAppContext, int i2) {
        this.versionCode = i;
        this.zzbAM = clientAppContext;
        this.zzbAN = i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
