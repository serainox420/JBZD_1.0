package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
import java.util.HashMap;
import java.util.UUID;
/* loaded from: classes2.dex */
public final class zzru extends com.google.android.gms.analytics.zzf<zzru> {
    private String zzado;
    private int zzadp;
    private int zzadq;
    private String zzadr;
    private String zzads;
    private boolean zzadt;
    private boolean zzadu;

    public zzru() {
        this(false);
    }

    public zzru(boolean z) {
        this(z, zznA());
    }

    public zzru(boolean z, int i) {
        com.google.android.gms.common.internal.zzac.zzcX(i);
        this.zzadp = i;
        this.zzadu = z;
    }

    static int zznA() {
        UUID randomUUID = UUID.randomUUID();
        int leastSignificantBits = (int) (randomUUID.getLeastSignificantBits() & 2147483647L);
        if (leastSignificantBits != 0) {
            return leastSignificantBits;
        }
        int mostSignificantBits = (int) (randomUUID.getMostSignificantBits() & 2147483647L);
        if (mostSignificantBits != 0) {
            return mostSignificantBits;
        }
        Log.e("GAv4", "UUID.randomUUID() returned 0.");
        return Integer.MAX_VALUE;
    }

    public void setScreenName(String str) {
        this.zzado = str;
    }

    public String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put("screenName", this.zzado);
        hashMap.put("interstitial", Boolean.valueOf(this.zzadt));
        hashMap.put(AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_AUTOMATIC, Boolean.valueOf(this.zzadu));
        hashMap.put("screenId", Integer.valueOf(this.zzadp));
        hashMap.put("referrerScreenId", Integer.valueOf(this.zzadq));
        hashMap.put("referrerScreenName", this.zzadr);
        hashMap.put("referrerUri", this.zzads);
        return zzj(hashMap);
    }

    public void zzU(boolean z) {
        this.zzadu = z;
    }

    public void zzV(boolean z) {
        this.zzadt = z;
    }

    @Override // com.google.android.gms.analytics.zzf
    /* renamed from: zza */
    public void zzb(zzru zzruVar) {
        if (!TextUtils.isEmpty(this.zzado)) {
            zzruVar.setScreenName(this.zzado);
        }
        if (this.zzadp != 0) {
            zzruVar.zzaF(this.zzadp);
        }
        if (this.zzadq != 0) {
            zzruVar.zzaG(this.zzadq);
        }
        if (!TextUtils.isEmpty(this.zzadr)) {
            zzruVar.zzbH(this.zzadr);
        }
        if (!TextUtils.isEmpty(this.zzads)) {
            zzruVar.zzbI(this.zzads);
        }
        if (this.zzadt) {
            zzruVar.zzV(this.zzadt);
        }
        if (this.zzadu) {
            zzruVar.zzU(this.zzadu);
        }
    }

    public void zzaF(int i) {
        this.zzadp = i;
    }

    public void zzaG(int i) {
        this.zzadq = i;
    }

    public void zzbH(String str) {
        this.zzadr = str;
    }

    public void zzbI(String str) {
        if (TextUtils.isEmpty(str)) {
            this.zzads = null;
        } else {
            this.zzads = str;
        }
    }

    public String zznB() {
        return this.zzado;
    }

    public int zznC() {
        return this.zzadp;
    }

    public String zznD() {
        return this.zzads;
    }
}
