package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Scopes;
/* loaded from: classes.dex */
public class zzbmt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmt> CREATOR = new zzbmu();
    @zzbmb
    public final int zzaiI;
    @zzbvf(Scopes.EMAIL)
    private String zzaka;
    @zzbvf("newEmail")
    private String zzbYJ;
    @zzbvf("requestType")
    private String zzbYK;

    public zzbmt() {
        this.zzaiI = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmt(int i, String str, String str2, String str3) {
        this.zzaiI = i;
        this.zzaka = str;
        this.zzbYJ = str2;
        this.zzbYK = str3;
    }

    public String getEmail() {
        return this.zzaka;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmu.zza(this, parcel, i);
    }

    public String zzWi() {
        return this.zzbYJ;
    }

    public String zzWj() {
        return this.zzbYK;
    }
}
