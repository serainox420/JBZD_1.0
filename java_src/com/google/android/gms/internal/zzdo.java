package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzdd;
@zzme
/* loaded from: classes.dex */
public class zzdo {
    private Context mContext;
    private zzdr zzyH;
    private zzdv zzyI;
    private final Runnable zzyG = new Runnable() { // from class: com.google.android.gms.internal.zzdo.1
        @Override // java.lang.Runnable
        public void run() {
            zzdo.this.disconnect();
        }
    };
    private final Object zzrJ = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public void connect() {
        synchronized (this.zzrJ) {
            if (this.mContext == null || this.zzyH != null) {
                return;
            }
            this.zzyH = zza(new zzf.zzb() { // from class: com.google.android.gms.internal.zzdo.3
                @Override // com.google.android.gms.common.internal.zzf.zzb
                public void onConnected(Bundle bundle) {
                    synchronized (zzdo.this.zzrJ) {
                        try {
                            zzdo.this.zzyI = zzdo.this.zzyH.zzeB();
                        } catch (DeadObjectException e) {
                            zzpk.zzb("Unable to obtain a cache service instance.", e);
                            zzdo.this.disconnect();
                        }
                        zzdo.this.zzrJ.notifyAll();
                    }
                }

                @Override // com.google.android.gms.common.internal.zzf.zzb
                public void onConnectionSuspended(int i) {
                    synchronized (zzdo.this.zzrJ) {
                        zzdo.this.zzyI = null;
                        zzdo.this.zzrJ.notifyAll();
                    }
                }
            }, new zzf.zzc() { // from class: com.google.android.gms.internal.zzdo.4
                @Override // com.google.android.gms.common.internal.zzf.zzc
                public void onConnectionFailed(ConnectionResult connectionResult) {
                    synchronized (zzdo.this.zzrJ) {
                        zzdo.this.zzyI = null;
                        if (zzdo.this.zzyH != null) {
                            zzdo.this.zzyH = null;
                            com.google.android.gms.ads.internal.zzw.zzdc().zzlc();
                        }
                        zzdo.this.zzrJ.notifyAll();
                    }
                }
            });
            this.zzyH.zzxz();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnect() {
        synchronized (this.zzrJ) {
            if (this.zzyH == null) {
                return;
            }
            if (this.zzyH.isConnected() || this.zzyH.isConnecting()) {
                this.zzyH.disconnect();
            }
            this.zzyH = null;
            this.zzyI = null;
            Binder.flushPendingCommands();
            com.google.android.gms.ads.internal.zzw.zzdc().zzlc();
        }
    }

    public void initialize(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.zzrJ) {
            if (this.mContext != null) {
                return;
            }
            this.mContext = context.getApplicationContext();
            if (zzgd.zzFf.get().booleanValue()) {
                connect();
            } else if (zzgd.zzFe.get().booleanValue()) {
                zza(new zzdd.zzb() { // from class: com.google.android.gms.internal.zzdo.2
                    @Override // com.google.android.gms.internal.zzdd.zzb
                    public void zzk(boolean z) {
                        if (z) {
                            zzdo.this.connect();
                        } else {
                            zzdo.this.disconnect();
                        }
                    }
                });
            }
        }
    }

    public zzdp zza(zzds zzdsVar) {
        zzdp zzdpVar;
        synchronized (this.zzrJ) {
            if (this.zzyI == null) {
                zzdpVar = new zzdp();
            } else {
                try {
                    zzdpVar = this.zzyI.zza(zzdsVar);
                } catch (RemoteException e) {
                    zzpk.zzb("Unable to call into cache service.", e);
                    zzdpVar = new zzdp();
                }
            }
        }
        return zzdpVar;
    }

    protected zzdr zza(zzf.zzb zzbVar, zzf.zzc zzcVar) {
        return new zzdr(this.mContext, com.google.android.gms.ads.internal.zzw.zzdc().zzlb(), zzbVar, zzcVar);
    }

    protected void zza(zzdd.zzb zzbVar) {
        com.google.android.gms.ads.internal.zzw.zzcP().zza(zzbVar);
    }

    public void zzev() {
        if (zzgd.zzFg.get().booleanValue()) {
            synchronized (this.zzrJ) {
                connect();
                com.google.android.gms.ads.internal.zzw.zzcM();
                zzpo.zzXC.removeCallbacks(this.zzyG);
                com.google.android.gms.ads.internal.zzw.zzcM();
                zzpo.zzXC.postDelayed(this.zzyG, zzgd.zzFh.get().longValue());
            }
        }
    }
}
