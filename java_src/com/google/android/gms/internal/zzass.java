package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.List;
/* loaded from: classes2.dex */
public class zzass extends com.google.android.gms.common.internal.safeparcel.zza implements Result {
    public static final Parcelable.Creator<zzass> CREATOR = new zzast();
    final int zzaiI;
    private final Status zzair;
    private final List<zzasq> zzbnh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzass(int i, Status status, List<zzasq> list) {
        this.zzaiI = i;
        this.zzair = status;
        this.zzbnh = list;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzast.zza(this, parcel, i);
    }

    public List<zzasq> zzJg() {
        return this.zzbnh;
    }
}
