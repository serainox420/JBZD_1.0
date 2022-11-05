package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzagh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagh> CREATOR = new zzagi();
    public ArrayList<zzaec> zzaKz;

    public zzagh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagh(ArrayList<zzaec> arrayList) {
        this.zzaKz = arrayList;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagi.zza(this, parcel, i);
    }
}
