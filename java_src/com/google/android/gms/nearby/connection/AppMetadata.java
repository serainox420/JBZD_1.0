package com.google.android.gms.nearby.connection;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
public final class AppMetadata extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<AppMetadata> CREATOR = new zzd();
    private final List<AppIdentifier> zzbxY;

    public AppMetadata(List<AppIdentifier> list) {
        this.zzbxY = (List) zzac.zzb(list, "Must specify application identifiers");
        zzac.zza(list.size(), (Object) "Application identifiers cannot be empty");
    }

    public List<AppIdentifier> getAppIdentifiers() {
        return this.zzbxY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
