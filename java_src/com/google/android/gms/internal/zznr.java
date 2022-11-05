package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zznu;
@zzme
/* loaded from: classes.dex */
public class zznr extends zznu.zza {
    private final Context mContext;
    private final zzns zzVj;
    private final Object zzrJ;
    private final zzqh zztt;

    public zznr(Context context, com.google.android.gms.ads.internal.zze zzeVar, zzka zzkaVar, zzqh zzqhVar) {
        this(context, zzqhVar, new zzns(context, zzeVar, zzeg.zzeE(), zzkaVar, zzqhVar));
    }

    zznr(Context context, zzqh zzqhVar, zzns zznsVar) {
        this.zzrJ = new Object();
        this.mContext = context;
        this.zztt = zzqhVar;
        this.zzVj = zznsVar;
    }

    @Override // com.google.android.gms.internal.zznu
    public void destroy() {
        zzh(null);
    }

    @Override // com.google.android.gms.internal.zznu
    public boolean isLoaded() {
        boolean isLoaded;
        synchronized (this.zzrJ) {
            isLoaded = this.zzVj.isLoaded();
        }
        return isLoaded;
    }

    @Override // com.google.android.gms.internal.zznu
    public void pause() {
        zzf(null);
    }

    @Override // com.google.android.gms.internal.zznu
    public void resume() {
        zzg(null);
    }

    @Override // com.google.android.gms.internal.zznu
    public void setUserId(String str) {
        zzpk.zzbh("RewardedVideoAd.setUserId() is deprecated. Please do not call this method.");
    }

    @Override // com.google.android.gms.internal.zznu
    public void show() {
        synchronized (this.zzrJ) {
            this.zzVj.zzjF();
        }
    }

    @Override // com.google.android.gms.internal.zznu
    public void zza(zznw zznwVar) {
        synchronized (this.zzrJ) {
            this.zzVj.zza(zznwVar);
        }
    }

    @Override // com.google.android.gms.internal.zznu
    public void zza(zzoa zzoaVar) {
        synchronized (this.zzrJ) {
            this.zzVj.zza(zzoaVar);
        }
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzf(IObjectWrapper iObjectWrapper) {
        synchronized (this.zzrJ) {
            this.zzVj.pause();
        }
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzg(IObjectWrapper iObjectWrapper) {
        Context context;
        synchronized (this.zzrJ) {
            if (iObjectWrapper == null) {
                context = null;
            } else {
                try {
                    context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
                } catch (Exception e) {
                    zzpk.zzc("Unable to extract updated context.", e);
                }
            }
            if (context != null) {
                this.zzVj.onContextChanged(context);
            }
            this.zzVj.resume();
        }
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzh(IObjectWrapper iObjectWrapper) {
        synchronized (this.zzrJ) {
            this.zzVj.destroy();
        }
    }
}
