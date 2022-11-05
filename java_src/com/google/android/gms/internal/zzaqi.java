package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzaqi extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaqi> CREATOR = new zzaqj();
    public final String packageName;
    public final int versionCode;
    public final String zzbgj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqi(int i, String str, String str2) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbgj = str2;
    }

    public zzaqi(String str, String str2) {
        this(1, str, str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaqj.zza(this, parcel, i);
    }
}
