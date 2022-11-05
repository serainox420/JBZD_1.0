package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzatg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzatg> CREATOR = new zzath();
    public String packageName;
    public final int versionCode;
    public String zzbqV;
    public zzauq zzbqW;
    public long zzbqX;
    public boolean zzbqY;
    public String zzbqZ;
    public zzatq zzbra;
    public long zzbrb;
    public zzatq zzbrc;
    public long zzbrd;
    public zzatq zzbre;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatg(int i, String str, String str2, zzauq zzauqVar, long j, boolean z, String str3, zzatq zzatqVar, long j2, zzatq zzatqVar2, long j3, zzatq zzatqVar3) {
        this.versionCode = i;
        this.packageName = str;
        this.zzbqV = str2;
        this.zzbqW = zzauqVar;
        this.zzbqX = j;
        this.zzbqY = z;
        this.zzbqZ = str3;
        this.zzbra = zzatqVar;
        this.zzbrb = j2;
        this.zzbrc = zzatqVar2;
        this.zzbrd = j3;
        this.zzbre = zzatqVar3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatg(zzatg zzatgVar) {
        this.versionCode = 1;
        com.google.android.gms.common.internal.zzac.zzw(zzatgVar);
        this.packageName = zzatgVar.packageName;
        this.zzbqV = zzatgVar.zzbqV;
        this.zzbqW = zzatgVar.zzbqW;
        this.zzbqX = zzatgVar.zzbqX;
        this.zzbqY = zzatgVar.zzbqY;
        this.zzbqZ = zzatgVar.zzbqZ;
        this.zzbra = zzatgVar.zzbra;
        this.zzbrb = zzatgVar.zzbrb;
        this.zzbrc = zzatgVar.zzbrc;
        this.zzbrd = zzatgVar.zzbrd;
        this.zzbre = zzatgVar.zzbre;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatg(String str, String str2, zzauq zzauqVar, long j, boolean z, String str3, zzatq zzatqVar, long j2, zzatq zzatqVar2, long j3, zzatq zzatqVar3) {
        this.versionCode = 1;
        this.packageName = str;
        this.zzbqV = str2;
        this.zzbqW = zzauqVar;
        this.zzbqX = j;
        this.zzbqY = z;
        this.zzbqZ = str3;
        this.zzbra = zzatqVar;
        this.zzbrb = j2;
        this.zzbrc = zzatqVar2;
        this.zzbrd = j3;
        this.zzbre = zzatqVar3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzath.zza(this, parcel, i);
    }
}
