package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class zzarz extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    private final Status zzair;
    public static final zzarz zzbkB = new zzarz(Status.zzazx);
    public static final Parcelable.Creator<zzarz> CREATOR = new zzasa();

    public zzarz(Status status) {
        this.zzair = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasa.zza(this, parcel, i);
    }
}
