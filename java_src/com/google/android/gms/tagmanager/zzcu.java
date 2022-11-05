package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.tagmanager.zzp;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzcu implements zzp.zze {
    private boolean mClosed;
    private final Context mContext;
    private final String zzbEU;
    private String zzbFs;
    private zzbn<zzaj.zzj> zzbHt;
    private zzt zzbHu;
    private final ScheduledExecutorService zzbHw;
    private final zza zzbHx;
    private ScheduledFuture<?> zzbHy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        zzct zza(zzt zztVar);
    }

    /* loaded from: classes2.dex */
    interface zzb {
        ScheduledExecutorService zzRl();
    }

    public zzcu(Context context, String str, zzt zztVar) {
        this(context, str, zztVar, null, null);
    }

    zzcu(Context context, String str, zzt zztVar, zzb zzbVar, zza zzaVar) {
        this.zzbHu = zztVar;
        this.mContext = context;
        this.zzbEU = str;
        this.zzbHw = (zzbVar == null ? new zzb(this) { // from class: com.google.android.gms.tagmanager.zzcu.1
            @Override // com.google.android.gms.tagmanager.zzcu.zzb
            public ScheduledExecutorService zzRl() {
                return Executors.newSingleThreadScheduledExecutor();
            }
        } : zzbVar).zzRl();
        if (zzaVar == null) {
            this.zzbHx = new zza() { // from class: com.google.android.gms.tagmanager.zzcu.2
                @Override // com.google.android.gms.tagmanager.zzcu.zza
                public zzct zza(zzt zztVar2) {
                    return new zzct(zzcu.this.mContext, zzcu.this.zzbEU, zztVar2);
                }
            };
        } else {
            this.zzbHx = zzaVar;
        }
    }

    private synchronized void zzRk() {
        if (this.mClosed) {
            throw new IllegalStateException("called method after closed");
        }
    }

    private zzct zzhp(String str) {
        zzct zza2 = this.zzbHx.zza(this.zzbHu);
        zza2.zza(this.zzbHt);
        zza2.zzgZ(this.zzbFs);
        zza2.zzho(str);
        return zza2;
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        zzRk();
        if (this.zzbHy != null) {
            this.zzbHy.cancel(false);
        }
        this.zzbHw.shutdown();
        this.mClosed = true;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zza(zzbn<zzaj.zzj> zzbnVar) {
        zzRk();
        this.zzbHt = zzbnVar;
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zzf(long j, String str) {
        String str2 = this.zzbEU;
        zzbo.v(new StringBuilder(String.valueOf(str2).length() + 55).append("loadAfterDelay: containerId=").append(str2).append(" delay=").append(j).toString());
        zzRk();
        if (this.zzbHt == null) {
            throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
        }
        if (this.zzbHy != null) {
            this.zzbHy.cancel(false);
        }
        this.zzbHy = this.zzbHw.schedule(zzhp(str), j, TimeUnit.MILLISECONDS);
    }

    @Override // com.google.android.gms.tagmanager.zzp.zze
    public synchronized void zzgZ(String str) {
        zzRk();
        this.zzbFs = str;
    }
}
