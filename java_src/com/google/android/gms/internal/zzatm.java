package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzatm {
    final String mAppId;
    final String mName;
    final String mOrigin;
    final long zzaxb;
    final long zzbry;
    final zzato zzbrz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatm(zzaue zzaueVar, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        com.google.android.gms.common.internal.zzac.zzdr(str3);
        this.mAppId = str2;
        this.mName = str3;
        this.mOrigin = TextUtils.isEmpty(str) ? null : str;
        this.zzaxb = j;
        this.zzbry = j2;
        if (this.zzbry != 0 && this.zzbry > this.zzaxb) {
            zzaueVar.zzKl().zzMa().zzj("Event created with reverse previous/current timestamps. appId", zzatx.zzfE(str2));
        }
        this.zzbrz = zza(zzaueVar, bundle);
    }

    private zzatm(zzaue zzaueVar, String str, String str2, String str3, long j, long j2, zzato zzatoVar) {
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        com.google.android.gms.common.internal.zzac.zzdr(str3);
        com.google.android.gms.common.internal.zzac.zzw(zzatoVar);
        this.mAppId = str2;
        this.mName = str3;
        this.mOrigin = TextUtils.isEmpty(str) ? null : str;
        this.zzaxb = j;
        this.zzbry = j2;
        if (this.zzbry != 0 && this.zzbry > this.zzaxb) {
            zzaueVar.zzKl().zzMa().zzj("Event created with reverse previous/current timestamps. appId", zzatx.zzfE(str2));
        }
        this.zzbrz = zzatoVar;
    }

    static zzato zza(zzaue zzaueVar, Bundle bundle) {
        if (bundle == null || bundle.isEmpty()) {
            return new zzato(new Bundle());
        }
        Bundle bundle2 = new Bundle(bundle);
        Iterator<String> it = bundle2.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next == null) {
                zzaueVar.zzKl().zzLY().log("Param name can't be null");
                it.remove();
            } else {
                Object zzl = zzaueVar.zzKh().zzl(next, bundle2.get(next));
                if (zzl == null) {
                    zzaueVar.zzKl().zzMa().zzj("Param value can't be null", next);
                    it.remove();
                } else {
                    zzaueVar.zzKh().zza(bundle2, next, zzl);
                }
            }
        }
        return new zzato(bundle2);
    }

    public String toString() {
        String str = this.mAppId;
        String str2 = this.mName;
        String valueOf = String.valueOf(this.zzbrz);
        return new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length()).append("Event{appId='").append(str).append("'").append(", name='").append(str2).append("'").append(", params=").append(valueOf).append("}").toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatm zza(zzaue zzaueVar, long j) {
        return new zzatm(zzaueVar, this.mOrigin, this.mAppId, this.mName, this.zzaxb, j, this.zzbrz);
    }
}
