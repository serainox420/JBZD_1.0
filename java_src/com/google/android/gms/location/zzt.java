package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzt> CREATOR = new zzu();
    private final PendingIntent mPendingIntent;
    private final String mTag;
    private final List<String> zzbkp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(List<String> list, PendingIntent pendingIntent, String str) {
        this.zzbkp = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.mPendingIntent = pendingIntent;
        this.mTag = str;
    }

    public static zzt zzE(List<String> list) {
        zzac.zzb(list, "geofence can't be null.");
        zzac.zzb(!list.isEmpty(), "Geofences must contains at least one id.");
        return new zzt(list, null, "");
    }

    public static zzt zzb(PendingIntent pendingIntent) {
        zzac.zzb(pendingIntent, "PendingIntent can not be null.");
        return new zzt(null, pendingIntent, "");
    }

    public String getTag() {
        return this.mTag;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzu.zza(this, parcel, i);
    }

    public List<String> zzIm() {
        return this.zzbkp;
    }

    public PendingIntent zzvu() {
        return this.mPendingIntent;
    }
}
