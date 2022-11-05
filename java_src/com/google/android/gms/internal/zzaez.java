package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class zzaez extends com.google.android.gms.common.internal.safeparcel.zza implements FenceUpdateRequest {
    public static final Parcelable.Creator<zzaez> CREATOR = new zzafa();
    public final ArrayList<zzafh> zzaJz;

    @Deprecated
    public zzaez() {
        this(new ArrayList());
    }

    public zzaez(ArrayList<zzafh> arrayList) {
        this.zzaJz = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzafa.zza(this, parcel, i);
    }

    public void zza(zzcj<com.google.android.gms.awareness.fence.zza, zzaem> zzcjVar) {
        Iterator<zzafh> it = this.zzaJz.iterator();
        while (it.hasNext()) {
            it.next().zzb(zzcjVar);
        }
    }
}
