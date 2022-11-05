package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class UserMetadata extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<UserMetadata> CREATOR = new zzq();
    final boolean zzaLA;
    final String zzaLB;
    final String zzaLy;
    final String zzaLz;
    final int zzaiI;
    final String zzakb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserMetadata(int i, String str, String str2, String str3, boolean z, String str4) {
        this.zzaiI = i;
        this.zzaLy = str;
        this.zzakb = str2;
        this.zzaLz = str3;
        this.zzaLA = z;
        this.zzaLB = str4;
    }

    public UserMetadata(String str, String str2, String str3, boolean z, String str4) {
        this(1, str, str2, str3, z, str4);
    }

    public String toString() {
        return String.format("Permission ID: '%s', Display Name: '%s', Picture URL: '%s', Authenticated User: %b, Email: '%s'", this.zzaLy, this.zzakb, this.zzaLz, Boolean.valueOf(this.zzaLA), this.zzaLB);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
