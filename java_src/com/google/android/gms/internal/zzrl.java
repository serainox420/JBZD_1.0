package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.firebase.a.a;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrl extends com.google.android.gms.analytics.zzf<zzrl> {
    private String mName;
    private String zzFV;
    private String zzGV;
    private String zzacO;
    private String zzacP;
    private String zzacQ;
    private String zzacR;
    private String zzacS;
    private String zzacT;
    private String zzacU;

    public String getContent() {
        return this.zzFV;
    }

    public String getId() {
        return this.zzGV;
    }

    public String getName() {
        return this.mName;
    }

    public String getSource() {
        return this.zzacO;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("name", this.mName);
        hashMap.put("source", this.zzacO);
        hashMap.put(a.b.MEDIUM, this.zzacP);
        hashMap.put("keyword", this.zzacQ);
        hashMap.put("content", this.zzFV);
        hashMap.put("id", this.zzGV);
        hashMap.put("adNetworkId", this.zzacR);
        hashMap.put("gclid", this.zzacS);
        hashMap.put("dclid", this.zzacT);
        hashMap.put(a.b.ACLID, this.zzacU);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrl zzrlVar) {
        if (!TextUtils.isEmpty(this.mName)) {
            zzrlVar.setName(this.mName);
        }
        if (!TextUtils.isEmpty(this.zzacO)) {
            zzrlVar.zzbr(this.zzacO);
        }
        if (!TextUtils.isEmpty(this.zzacP)) {
            zzrlVar.zzbs(this.zzacP);
        }
        if (!TextUtils.isEmpty(this.zzacQ)) {
            zzrlVar.zzbt(this.zzacQ);
        }
        if (!TextUtils.isEmpty(this.zzFV)) {
            zzrlVar.zzbu(this.zzFV);
        }
        if (!TextUtils.isEmpty(this.zzGV)) {
            zzrlVar.zzbv(this.zzGV);
        }
        if (!TextUtils.isEmpty(this.zzacR)) {
            zzrlVar.zzbw(this.zzacR);
        }
        if (!TextUtils.isEmpty(this.zzacS)) {
            zzrlVar.zzbx(this.zzacS);
        }
        if (!TextUtils.isEmpty(this.zzacT)) {
            zzrlVar.zzby(this.zzacT);
        }
        if (!TextUtils.isEmpty(this.zzacU)) {
            zzrlVar.zzbz(this.zzacU);
        }
    }

    public void zzbr(String str) {
        this.zzacO = str;
    }

    public void zzbs(String str) {
        this.zzacP = str;
    }

    public void zzbt(String str) {
        this.zzacQ = str;
    }

    public void zzbu(String str) {
        this.zzFV = str;
    }

    public void zzbv(String str) {
        this.zzGV = str;
    }

    public void zzbw(String str) {
        this.zzacR = str;
    }

    public void zzbx(String str) {
        this.zzacS = str;
    }

    public void zzby(String str) {
        this.zzacT = str;
    }

    public void zzbz(String str) {
        this.zzacU = str;
    }

    public String zznb() {
        return this.zzacP;
    }

    public String zznc() {
        return this.zzacQ;
    }

    public String zznd() {
        return this.zzacR;
    }

    public String zzne() {
        return this.zzacS;
    }

    public String zznf() {
        return this.zzacT;
    }

    public String zzng() {
        return this.zzacU;
    }
}
