package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzajy extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajy> CREATOR = new zzajz();
    final MetadataBundle zzaMC;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajy(int i, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaMC = metadataBundle;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajz.zza(this, parcel, i);
    }

    public MetadataBundle zzBm() {
        return this.zzaMC;
    }
}
