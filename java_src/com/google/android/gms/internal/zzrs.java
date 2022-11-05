package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrs extends com.google.android.gms.analytics.zzf<zzrs> {
    public String zzade;
    public boolean zzadf;

    public String getDescription() {
        return this.zzade;
    }

    public void setDescription(String str) {
        this.zzade = str;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("description", this.zzade);
        hashMap.put("fatal", Boolean.valueOf(this.zzadf));
        return zzj(hashMap);
    }

    public void zzR(boolean z) {
        this.zzadf = z;
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrs zzrsVar) {
        if (!TextUtils.isEmpty(this.zzade)) {
            zzrsVar.setDescription(this.zzade);
        }
        if (this.zzadf) {
            zzrsVar.zzR(this.zzadf);
        }
    }

    public boolean zznt() {
        return this.zzadf;
    }
}
