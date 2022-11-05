package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VideoOptions;
@zzme
/* loaded from: classes.dex */
public class zzft extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzft> CREATOR = new zzfu();
    public final boolean zzAU;

    public zzft(VideoOptions videoOptions) {
        this(videoOptions.getStartMuted());
    }

    public zzft(boolean z) {
        this.zzAU = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzfu.zza(this, parcel, i);
    }
}
