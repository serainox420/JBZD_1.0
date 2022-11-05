package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrp extends com.google.android.gms.analytics.zzf<zzrp> {
    public int zzMy;
    public int zzMz;
    private String zzacX;
    public int zzacY;
    public int zzacZ;
    public int zzada;

    public String getLanguage() {
        return this.zzacX;
    }

    public void setLanguage(String str) {
        this.zzacX = str;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("language", this.zzacX);
        hashMap.put("screenColors", Integer.valueOf(this.zzacY));
        hashMap.put("screenWidth", Integer.valueOf(this.zzMy));
        hashMap.put("screenHeight", Integer.valueOf(this.zzMz));
        hashMap.put("viewportWidth", Integer.valueOf(this.zzacZ));
        hashMap.put("viewportHeight", Integer.valueOf(this.zzada));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrp zzrpVar) {
        if (this.zzacY != 0) {
            zzrpVar.zzaA(this.zzacY);
        }
        if (this.zzMy != 0) {
            zzrpVar.zzaB(this.zzMy);
        }
        if (this.zzMz != 0) {
            zzrpVar.zzaC(this.zzMz);
        }
        if (this.zzacZ != 0) {
            zzrpVar.zzaD(this.zzacZ);
        }
        if (this.zzada != 0) {
            zzrpVar.zzaE(this.zzada);
        }
        if (!TextUtils.isEmpty(this.zzacX)) {
            zzrpVar.setLanguage(this.zzacX);
        }
    }

    public void zzaA(int i) {
        this.zzacY = i;
    }

    public void zzaB(int i) {
        this.zzMy = i;
    }

    public void zzaC(int i) {
        this.zzMz = i;
    }

    public void zzaD(int i) {
        this.zzacZ = i;
    }

    public void zzaE(int i) {
        this.zzada = i;
    }

    public int zznk() {
        return this.zzacY;
    }

    public int zznl() {
        return this.zzMy;
    }

    public int zznm() {
        return this.zzMz;
    }

    public int zznn() {
        return this.zzacZ;
    }

    public int zzno() {
        return this.zzada;
    }
}
