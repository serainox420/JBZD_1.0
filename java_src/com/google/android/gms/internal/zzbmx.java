package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class zzbmx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmx> CREATOR = new zzbmy();
    @zzbvf("postBody")
    private String zzIg;
    @zzbmb
    public final int zzaiI;
    @zzbmb
    private String zzajB;
    @zzbmb
    private String zzaka;
    @zzbmb
    private String zzbDT;
    @zzbvf("requestUri")
    private String zzbYM;
    @zzbvf("idToken")
    private String zzbYN;
    @zzbvf("oauthTokenSecret")
    private String zzbYO;
    @zzbvf("returnSecureToken")
    private boolean zzbYP;
    @zzbmb
    private String zzbYx;

    public zzbmx() {
        this.zzaiI = 2;
        this.zzbYP = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmx(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, boolean z) {
        this.zzaiI = i;
        this.zzbYM = str;
        this.zzbYN = str2;
        this.zzajB = str3;
        this.zzbDT = str4;
        this.zzbYx = str5;
        this.zzaka = str6;
        this.zzIg = str7;
        this.zzbYO = str8;
        this.zzbYP = z;
    }

    public zzbmx(String str, String str2, String str3, String str4, String str5) {
        this.zzaiI = 2;
        this.zzbYM = "http://localhost";
        this.zzajB = str;
        this.zzbDT = str2;
        this.zzbYO = str5;
        this.zzbYP = true;
        if (!TextUtils.isEmpty(this.zzajB) || !TextUtils.isEmpty(this.zzbDT)) {
            this.zzbYx = com.google.android.gms.common.internal.zzac.zzdr(str3);
            this.zzaka = str4;
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.zzajB)) {
                sb.append("id_token").append("=").append(this.zzajB).append("&");
            }
            if (!TextUtils.isEmpty(this.zzbDT)) {
                sb.append("access_token").append("=").append(this.zzbDT).append("&");
            }
            if (!TextUtils.isEmpty(this.zzaka)) {
                sb.append("identifier").append("=").append(this.zzaka).append("&");
            }
            if (!TextUtils.isEmpty(this.zzbYO)) {
                sb.append("oauth_token_secret").append("=").append(this.zzbYO).append("&");
            }
            sb.append("providerId").append("=").append(this.zzbYx);
            this.zzIg = sb.toString();
            return;
        }
        throw new IllegalArgumentException("Both idToken, and accessToken cannot be null");
    }

    public String getAccessToken() {
        return this.zzbDT;
    }

    public String getEmail() {
        return this.zzaka;
    }

    public String getIdToken() {
        return this.zzajB;
    }

    public String getProviderId() {
        return this.zzbYx;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmy.zza(this, parcel, i);
    }

    public String zzWm() {
        return this.zzbYM;
    }

    public String zzWn() {
        return this.zzbYN;
    }

    public String zzWo() {
        return this.zzbYO;
    }

    public boolean zzWp() {
        return this.zzbYP;
    }

    public String zzgo() {
        return this.zzIg;
    }
}
