package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrv extends com.google.android.gms.analytics.zzf<zzrv> {
    public String zzadb;
    public String zzadv;
    public String zzadw;

    public String getAction() {
        return this.zzadb;
    }

    public String getTarget() {
        return this.zzadw;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("network", this.zzadv);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, this.zzadb);
        hashMap.put("target", this.zzadw);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrv zzrvVar) {
        if (!TextUtils.isEmpty(this.zzadv)) {
            zzrvVar.zzbJ(this.zzadv);
        }
        if (!TextUtils.isEmpty(this.zzadb)) {
            zzrvVar.zzbC(this.zzadb);
        }
        if (!TextUtils.isEmpty(this.zzadw)) {
            zzrvVar.zzbK(this.zzadw);
        }
    }

    public void zzbC(String str) {
        this.zzadb = str;
    }

    public void zzbJ(String str) {
        this.zzadv = str;
    }

    public void zzbK(String str) {
        this.zzadw = str;
    }

    public String zznE() {
        return this.zzadv;
    }
}
