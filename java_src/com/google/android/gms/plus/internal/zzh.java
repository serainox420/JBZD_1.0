package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzh> CREATOR = new zzi();
    private final int zzaiI;
    private final String zzaiu;
    private final String zzavz;
    private final String[] zzbCa;
    private final String[] zzbCb;
    private final String[] zzbCc;
    private final String zzbCd;
    private final String zzbCe;
    private final String zzbCf;
    private final PlusCommonExtras zzbCg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(int i, String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, String str5, PlusCommonExtras plusCommonExtras) {
        this.zzaiI = i;
        this.zzaiu = str;
        this.zzbCa = strArr;
        this.zzbCb = strArr2;
        this.zzbCc = strArr3;
        this.zzbCd = str2;
        this.zzbCe = str3;
        this.zzavz = str4;
        this.zzbCf = str5;
        this.zzbCg = plusCommonExtras;
    }

    public zzh(String str, String[] strArr, String[] strArr2, String[] strArr3, String str2, String str3, String str4, PlusCommonExtras plusCommonExtras) {
        this.zzaiI = 1;
        this.zzaiu = str;
        this.zzbCa = strArr;
        this.zzbCb = strArr2;
        this.zzbCc = strArr3;
        this.zzbCd = str2;
        this.zzbCe = str3;
        this.zzavz = str4;
        this.zzbCf = null;
        this.zzbCg = plusCommonExtras;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzh)) {
            return false;
        }
        zzh zzhVar = (zzh) obj;
        return this.zzaiI == zzhVar.zzaiI && zzaa.equal(this.zzaiu, zzhVar.zzaiu) && Arrays.equals(this.zzbCa, zzhVar.zzbCa) && Arrays.equals(this.zzbCb, zzhVar.zzbCb) && Arrays.equals(this.zzbCc, zzhVar.zzbCc) && zzaa.equal(this.zzbCd, zzhVar.zzbCd) && zzaa.equal(this.zzbCe, zzhVar.zzbCe) && zzaa.equal(this.zzavz, zzhVar.zzavz) && zzaa.equal(this.zzbCf, zzhVar.zzbCf) && zzaa.equal(this.zzbCg, zzhVar.zzbCg);
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public int getVersionCode() {
        return this.zzaiI;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.zzaiI), this.zzaiu, this.zzbCa, this.zzbCb, this.zzbCc, this.zzbCd, this.zzbCe, this.zzavz, this.zzbCf, this.zzbCg);
    }

    public String toString() {
        return zzaa.zzv(this).zzg("versionCode", Integer.valueOf(this.zzaiI)).zzg("accountName", this.zzaiu).zzg("requestedScopes", this.zzbCa).zzg("visibleActivities", this.zzbCb).zzg("requiredFeatures", this.zzbCc).zzg("packageNameForAuth", this.zzbCd).zzg("callingPackageName", this.zzbCe).zzg("applicationName", this.zzavz).zzg("extra", this.zzbCg.toString()).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public String[] zzPb() {
        return this.zzbCa;
    }

    public String[] zzPc() {
        return this.zzbCb;
    }

    public String[] zzPd() {
        return this.zzbCc;
    }

    public String zzPe() {
        return this.zzbCd;
    }

    public String zzPf() {
        return this.zzbCe;
    }

    public String zzPg() {
        return this.zzbCf;
    }

    public PlusCommonExtras zzPh() {
        return this.zzbCg;
    }

    public Bundle zzPi() {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(PlusCommonExtras.class.getClassLoader());
        this.zzbCg.zzN(bundle);
        return bundle;
    }

    public String zzur() {
        return this.zzavz;
    }
}
