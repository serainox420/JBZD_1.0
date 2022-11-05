package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import java.util.List;
/* loaded from: classes2.dex */
public class zzadu extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzadu> CREATOR = new zzadv();
    private final String zzRg;
    private final int zzaIE;
    private final List<zzadk> zzaIF;
    private final int zzaIG;
    private final int zzaIH;
    private final long zzaIR;
    private final DataHolder zzaIS;
    private final String zzaIT;
    private final String zzaIU;
    private final String zzaIV;
    private final List<String> zzaIW;

    public zzadu(String str, long j, DataHolder dataHolder, String str2, String str3, String str4, List<String> list, int i, List<zzadk> list2, int i2, int i3) {
        this.zzRg = str;
        this.zzaIR = j;
        this.zzaIS = dataHolder;
        this.zzaIT = str2;
        this.zzaIU = str3;
        this.zzaIV = str4;
        this.zzaIW = list;
        this.zzaIE = i;
        this.zzaIF = list2;
        this.zzaIH = i2;
        this.zzaIG = i3;
    }

    public String getAppInstanceId() {
        return this.zzaIU;
    }

    public String getPackageName() {
        return this.zzRg;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzadv.zza(this, parcel, i);
    }

    public int zzzA() {
        return this.zzaIE;
    }

    public int zzzB() {
        return this.zzaIH;
    }

    public int zzzC() {
        return this.zzaIG;
    }

    public long zzzG() {
        return this.zzaIR;
    }

    public DataHolder zzzH() {
        return this.zzaIS;
    }

    public String zzzI() {
        return this.zzaIT;
    }

    public String zzzJ() {
        return this.zzaIV;
    }

    public List<String> zzzK() {
        return this.zzaIW;
    }

    public List<zzadk> zzzL() {
        return this.zzaIF;
    }
}
