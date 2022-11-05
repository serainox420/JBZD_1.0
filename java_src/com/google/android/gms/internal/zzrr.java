package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrr extends com.google.android.gms.analytics.zzf<zzrr> {
    private String mCategory;
    private String zzadb;
    private String zzadc;
    private long zzadd;

    public String getAction() {
        return this.zzadb;
    }

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzadc;
    }

    public long getValue() {
        return this.zzadd;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("category", this.mCategory);
        hashMap.put(NativeProtocol.WEB_DIALOG_ACTION, this.zzadb);
        hashMap.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzadc);
        hashMap.put("value", Long.valueOf(this.zzadd));
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrr zzrrVar) {
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzrrVar.zzbB(this.mCategory);
        }
        if (!TextUtils.isEmpty(this.zzadb)) {
            zzrrVar.zzbC(this.zzadb);
        }
        if (!TextUtils.isEmpty(this.zzadc)) {
            zzrrVar.zzbD(this.zzadc);
        }
        if (this.zzadd != 0) {
            zzrrVar.zzr(this.zzadd);
        }
    }

    public void zzbB(String str) {
        this.mCategory = str;
    }

    public void zzbC(String str) {
        this.zzadb = str;
    }

    public void zzbD(String str) {
        this.zzadc = str;
    }

    public void zzr(long j) {
        this.zzadd = j;
    }
}
