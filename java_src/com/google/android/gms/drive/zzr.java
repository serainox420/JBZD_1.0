package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public abstract class zzr extends com.google.android.gms.common.internal.safeparcel.zza {
    private volatile transient boolean zzaLC = false;

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzac.zzaw(!zzAM());
        this.zzaLC = true;
        zzK(parcel, i);
    }

    public final boolean zzAM() {
        return this.zzaLC;
    }

    protected abstract void zzK(Parcel parcel, int i);
}
