package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzcy;
@zzme
/* loaded from: classes.dex */
public class zzov implements zzcy.zzb {
    private final Context mContext;
    boolean zzVV = false;
    private final Object zzrJ = new Object();
    private final String zzts;

    public zzov(Context context, String str) {
        this.mContext = context;
        this.zzts = str;
    }

    public void zzC(boolean z) {
        if (!com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
            return;
        }
        synchronized (this.zzrJ) {
            if (this.zzVV == z) {
                return;
            }
            this.zzVV = z;
            if (this.zzVV) {
                com.google.android.gms.ads.internal.zzw.zzdl().zzd(this.mContext, this.zzts);
            } else {
                com.google.android.gms.ads.internal.zzw.zzdl().zze(this.mContext, this.zzts);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzcy.zzb
    public void zza(zzcy.zza zzaVar) {
        zzC(zzaVar.zzxl);
    }
}
