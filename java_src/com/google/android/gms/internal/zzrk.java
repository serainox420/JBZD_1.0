package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrk extends com.google.android.gms.analytics.zzf<zzrk> {
    private String mAppId;
    private String zzacL;
    private String zzacM;
    private String zzacN;

    public void setAppId(String str) {
        this.mAppId = str;
    }

    public void setAppInstallerId(String str) {
        this.zzacN = str;
    }

    public void setAppName(String str) {
        this.zzacL = str;
    }

    public void setAppVersion(String str) {
        this.zzacM = str;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("appName", this.zzacL);
        hashMap.put("appVersion", this.zzacM);
        hashMap.put("appId", this.mAppId);
        hashMap.put("appInstallerId", this.zzacN);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrk zzrkVar) {
        if (!TextUtils.isEmpty(this.zzacL)) {
            zzrkVar.setAppName(this.zzacL);
        }
        if (!TextUtils.isEmpty(this.zzacM)) {
            zzrkVar.setAppVersion(this.zzacM);
        }
        if (!TextUtils.isEmpty(this.mAppId)) {
            zzrkVar.setAppId(this.mAppId);
        }
        if (!TextUtils.isEmpty(this.zzacN)) {
            zzrkVar.setAppInstallerId(this.zzacN);
        }
    }

    public String zzke() {
        return this.mAppId;
    }

    public String zzmY() {
        return this.zzacL;
    }

    public String zzmZ() {
        return this.zzacM;
    }

    public String zzna() {
        return this.zzacN;
    }
}
