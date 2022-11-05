package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;
/* loaded from: classes.dex */
public class zzbmn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmn> CREATOR = new zzbmo();
    @zzbmb
    public final int zzaiI;
    @zzbvf("access_token")
    private String zzbDT;
    @zzbvf("refresh_token")
    private String zzbXW;
    @zzbvf(AccessToken.EXPIRES_IN_KEY)
    private Long zzbYD;
    @zzbvf("token_type")
    private String zzbYE;
    @zzbvf("issued_at")
    private Long zzbYF;

    public zzbmn() {
        this.zzaiI = 1;
        this.zzbYF = Long.valueOf(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmn(int i, String str, String str2, Long l, String str3, Long l2) {
        this.zzaiI = i;
        this.zzbXW = str;
        this.zzbDT = str2;
        this.zzbYD = l;
        this.zzbYE = str3;
        this.zzbYF = l2;
    }

    public String getAccessToken() {
        return this.zzbDT;
    }

    public boolean isValid() {
        return com.google.android.gms.common.util.zzi.zzzc().currentTimeMillis() + 300000 < this.zzbYF.longValue() + (this.zzbYD.longValue() * 1000);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmo.zza(this, parcel, i);
    }

    public String zzWc() {
        return this.zzbXW;
    }

    public long zzWd() {
        if (this.zzbYD == null) {
            return 0L;
        }
        return this.zzbYD.longValue();
    }

    public String zzWe() {
        return this.zzbYE;
    }

    public long zzWf() {
        return this.zzbYF.longValue();
    }

    public void zziy(String str) {
        this.zzbXW = com.google.android.gms.common.internal.zzac.zzdr(str);
    }
}
