package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.query.Query;
/* loaded from: classes2.dex */
public class zzakq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakq> CREATOR = new zzakr();
    final Query zzaOy;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakq(int i, Query query) {
        this.zzaiI = i;
        this.zzaOy = query;
    }

    public zzakq(Query query) {
        this(1, query);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakr.zza(this, parcel, i);
    }
}
