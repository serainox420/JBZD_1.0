package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
@Deprecated
/* loaded from: classes.dex */
public final class AppIdentifier extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AppIdentifier> CREATOR = new zzc();
    private final String zzaUk;

    public AppIdentifier(String str) {
        this.zzaUk = zzac.zzh(str, "Missing application identifier value");
    }

    public String getIdentifier() {
        return this.zzaUk;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
