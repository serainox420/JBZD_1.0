package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class GoogleNowAuthState extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<GoogleNowAuthState> CREATOR = new zza();
    String zzbDS;
    String zzbDT;
    long zzbDU;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GoogleNowAuthState(String str, String str2, long j) {
        this.zzbDS = str;
        this.zzbDT = str2;
        this.zzbDU = j;
    }

    public String getAccessToken() {
        return this.zzbDT;
    }

    public String getAuthCode() {
        return this.zzbDS;
    }

    public long getNextAllowedTimeMillis() {
        return this.zzbDU;
    }

    public String toString() {
        String str = this.zzbDS;
        String str2 = this.zzbDT;
        return new StringBuilder(String.valueOf(str).length() + 74 + String.valueOf(str2).length()).append("mAuthCode = ").append(str).append("\nmAccessToken = ").append(str2).append("\nmNextAllowedTimeMillis = ").append(this.zzbDU).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
