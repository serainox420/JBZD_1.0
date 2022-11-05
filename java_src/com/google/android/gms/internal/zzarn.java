package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class zzarn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzarn> CREATOR = new zzaro();
    private final int port;
    private final String zzbiX;
    private final String zzbiY;
    private final String zzbiZ;
    private final String zzbiq;
    private final String zzbja;
    private final String zzbjb;
    private final String zzbjc;
    private final zzark zzbjd;

    public zzarn(String str, int i, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.zzbiX = com.google.android.gms.common.internal.zzac.zzdr(str);
        this.port = i;
        this.zzbiY = str2;
        this.zzbiZ = str3;
        this.zzbja = str4;
        this.zzbjb = str5;
        this.zzbiq = str6;
        this.zzbjc = str7;
        if (!TextUtils.isEmpty(str2)) {
            this.zzbjd = new zzark(str2, 0);
        } else if (!TextUtils.isEmpty(str3)) {
            this.zzbjd = new zzark(str3, 1);
        } else if (!TextUtils.isEmpty(str4)) {
            this.zzbjd = new zzark(str4, 2);
        } else if (!TextUtils.isEmpty(str5)) {
            this.zzbjd = new zzark(str5, 3);
        } else {
            this.zzbjd = null;
        }
    }

    public String getPath() {
        return this.zzbiY;
    }

    public int getPort() {
        return this.port;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaro.zza(this, parcel, i);
    }

    public String zzHO() {
        return this.zzbiX;
    }

    public String zzHP() {
        return this.zzbiZ;
    }

    public String zzHQ() {
        return this.zzbja;
    }

    public String zzHR() {
        return this.zzbja;
    }

    public String zzHS() {
        return this.zzbjc;
    }

    public String zzHu() {
        return this.zzbiq;
    }
}
