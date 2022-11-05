package com.google.android.gms.internal;

import android.text.TextUtils;
import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class zzyp {
    private final String zzamc;
    protected final zzyz zzapV;
    private zzzb zzavT;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzyp(String str, String str2, String str3) {
        zzyr.zzcQ(str);
        this.zzamc = str;
        this.zzapV = new zzyz(str2);
        setSessionLabel(str3);
    }

    public String getNamespace() {
        return this.zzamc;
    }

    public void setSessionLabel(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.zzapV.zzcV(str);
        }
    }

    public final void zza(zzzb zzzbVar) {
        this.zzavT = zzzbVar;
        if (this.zzavT == null) {
            zzuz();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(String str, long j, String str2) throws IOException {
        this.zzapV.zza("Sending text message: %s to: %s", str, str2);
        this.zzavT.zza(this.zzamc, str, j, str2);
    }

    public void zzb(long j, int i) {
    }

    public void zzcP(String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzuA() {
        return this.zzavT.zzsA();
    }

    public void zzuz() {
    }
}
