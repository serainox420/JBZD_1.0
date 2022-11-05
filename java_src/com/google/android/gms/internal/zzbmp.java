package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class zzbmp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbmp> CREATOR = new zzbmq();
    @zzbvf("photoUrl")
    private String zzaQN;
    @zzbmb
    public final int zzaiI;
    @zzbvf("displayName")
    private String zzakb;
    @zzbvf("federatedId")
    private String zzbYG;
    @zzbvf("rawUserInfo")
    private String zzbYH;
    @zzbvf("providerId")
    private String zzbYx;

    public zzbmp() {
        this.zzaiI = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbmp(int i, String str, String str2, String str3, String str4, String str5) {
        this.zzaiI = i;
        this.zzbYG = str;
        this.zzakb = str2;
        this.zzaQN = str3;
        this.zzbYx = str4;
        this.zzbYH = str5;
    }

    public String getDisplayName() {
        return this.zzakb;
    }

    public Uri getPhotoUri() {
        if (!TextUtils.isEmpty(this.zzaQN)) {
            return Uri.parse(this.zzaQN);
        }
        return null;
    }

    public String getProviderId() {
        return this.zzbYx;
    }

    public String getRawUserInfo() {
        return this.zzbYH;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbmq.zza(this, parcel, i);
    }

    public String zzVL() {
        return this.zzaQN;
    }

    public String zzWg() {
        return this.zzbYG;
    }
}
