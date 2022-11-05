package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    private final String zzbkb;
    private final String zzbkc;
    private final int zzbkd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(String str, String str2, int i) {
        this.zzbkb = str;
        this.zzbkc = str2;
        this.zzbkd = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }

    public String zzIg() {
        return this.zzbkb;
    }

    public String zzIh() {
        return this.zzbkc;
    }

    public int zzIi() {
        return this.zzbkd;
    }
}
