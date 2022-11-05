package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public class zzayd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzayd> CREATOR = new zzaye();
    private static final zzayh[] zzbAo = new zzayh[0];
    private static final String[] zzbAp = new String[0];
    private static final String zzbAq = null;
    public static final zzayd zzbAr = new zzayd("", zzbAo, zzbAp, null);
    @Deprecated
    final String zzE;
    final int zzaiI;
    @Deprecated
    final zzayh zzbAs;
    private final String zzbAt;
    @Deprecated
    final zzayh[] zzbAu;
    @Deprecated
    final String[] zzbAv;
    private final String zzbAw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayd(int i, zzayh zzayhVar, String str, String str2, zzayh[] zzayhVarArr, String[] strArr, String str3) {
        this.zzaiI = ((Integer) com.google.android.gms.common.internal.zzac.zzw(Integer.valueOf(i))).intValue();
        this.zzbAt = str2 == null ? "" : str2;
        this.zzbAu = zzayhVarArr == null ? zzbAo : zzayhVarArr;
        this.zzbAv = strArr == null ? zzbAp : strArr;
        this.zzbAs = this.zzbAu.length == 0 ? zzayh.zzbAA : this.zzbAu[0];
        this.zzE = this.zzbAv.length == 0 ? null : this.zzbAv[0];
        this.zzbAw = str3;
    }

    @Deprecated
    public zzayd(String str, zzayh[] zzayhVarArr, String[] strArr, String str2) {
        this(1, null, null, str, zzayhVarArr, strArr, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzayd)) {
            return false;
        }
        zzayd zzaydVar = (zzayd) obj;
        return com.google.android.gms.common.internal.zzaa.equal(this.zzbAt, zzaydVar.zzbAt) && com.google.android.gms.common.internal.zzaa.equal(this.zzbAw, zzaydVar.zzbAw);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbAt, this.zzbAw);
    }

    public String toString() {
        String str = this.zzbAt;
        String str2 = this.zzbAw;
        return new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(str2).length()).append("NearbyDevice{handle=").append(str).append(", bluetoothAddress=").append(str2).append("}").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaye.zza(this, parcel, i);
    }

    public String zzOL() {
        return this.zzbAt;
    }

    public String zzOM() {
        return this.zzbAw;
    }
}
