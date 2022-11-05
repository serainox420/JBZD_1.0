package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class zzrw extends com.google.android.gms.analytics.zzf<zzrw> {
    public String mCategory;
    public String zzadc;
    public String zzadx;
    public long zzady;

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzadc;
    }

    public long getTimeInMillis() {
        return this.zzady;
    }

    public void setTimeInMillis(long j) {
        this.zzady = j;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("variableName", this.zzadx);
        hashMap.put("timeInMillis", Long.valueOf(this.zzady));
        hashMap.put("category", this.mCategory);
        hashMap.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzadc);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzrw zzrwVar) {
        if (!TextUtils.isEmpty(this.zzadx)) {
            zzrwVar.zzbL(this.zzadx);
        }
        if (this.zzady != 0) {
            zzrwVar.setTimeInMillis(this.zzady);
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzrwVar.zzbB(this.mCategory);
        }
        if (!TextUtils.isEmpty(this.zzadc)) {
            zzrwVar.zzbD(this.zzadc);
        }
    }

    public void zzbB(String str) {
        this.mCategory = str;
    }

    public void zzbD(String str) {
        this.zzadc = str;
    }

    public void zzbL(String str) {
        this.zzadx = str;
    }

    public String zznF() {
        return this.zzadx;
    }
}
