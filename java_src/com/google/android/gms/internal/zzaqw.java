package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaqw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaqw> CREATOR = new zzaqx();
    private final String title;
    private final String zzbiw;

    public zzaqw(String str, String str2) {
        this.title = str;
        this.zzbiw = str2;
    }

    public String getImageUrl() {
        return this.zzbiw;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaqx.zza(this, parcel, i);
    }
}
