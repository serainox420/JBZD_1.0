package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.internal.zzeo;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzgp;
import com.google.android.gms.internal.zzle;
import com.google.android.gms.internal.zznw;
import java.util.LinkedList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
class zzix {
    private final List<zza> zzth = new LinkedList();

    /* loaded from: classes2.dex */
    interface zza {
        void zzb(zziy zziyVar) throws RemoteException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(final zziy zziyVar) {
        Handler handler = zzpo.zzXC;
        for (final zza zzaVar : this.zzth) {
            handler.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzix.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        zzaVar.zzb(zziyVar);
                    } catch (RemoteException e) {
                        zzpk.zzc("Could not propagate interstitial ad event.", e);
                    }
                }
            });
        }
        this.zzth.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzc(com.google.android.gms.ads.internal.zzm zzmVar) {
        zzmVar.zza(new zzep.zza() { // from class: com.google.android.gms.internal.zzix.1
            @Override // com.google.android.gms.internal.zzep
            public void onAdClosed() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.1.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zztk != null) {
                            zziyVar.zztk.onAdClosed();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zzep
            public void onAdFailedToLoad(final int i) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.1.2
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zztk != null) {
                            zziyVar.zztk.onAdFailedToLoad(i);
                        }
                    }
                });
                zzpk.v("Pooled interstitial failed to load.");
            }

            @Override // com.google.android.gms.internal.zzep
            public void onAdLeftApplication() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.1.3
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zztk != null) {
                            zziyVar.zztk.onAdLeftApplication();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zzep
            public void onAdLoaded() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.1.4
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zztk != null) {
                            zziyVar.zztk.onAdLoaded();
                        }
                    }
                });
                zzpk.v("Pooled interstitial loaded.");
            }

            @Override // com.google.android.gms.internal.zzep
            public void onAdOpened() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.1.5
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zztk != null) {
                            zziyVar.zztk.onAdOpened();
                        }
                    }
                });
            }
        });
        zzmVar.zza(new zzev.zza() { // from class: com.google.android.gms.internal.zzix.2
            @Override // com.google.android.gms.internal.zzev
            public void onAppEvent(final String str, final String str2) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.2.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIV != null) {
                            zziyVar.zzIV.onAppEvent(str, str2);
                        }
                    }
                });
            }
        });
        zzmVar.zza(new zzle.zza() { // from class: com.google.android.gms.internal.zzix.3
            @Override // com.google.android.gms.internal.zzle
            public void zza(final zzld zzldVar) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.3.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIW != null) {
                            zziyVar.zzIW.zza(zzldVar);
                        }
                    }
                });
            }
        });
        zzmVar.zza(new zzgp.zza() { // from class: com.google.android.gms.internal.zzix.4
            @Override // com.google.android.gms.internal.zzgp
            public void zza(final zzgo zzgoVar) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.4.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIX != null) {
                            zziyVar.zzIX.zza(zzgoVar);
                        }
                    }
                });
            }
        });
        zzmVar.zza(new zzeo.zza() { // from class: com.google.android.gms.internal.zzix.5
            @Override // com.google.android.gms.internal.zzeo
            public void onAdClicked() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.5.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIY != null) {
                            zziyVar.zzIY.onAdClicked();
                        }
                    }
                });
            }
        });
        zzmVar.zza(new zznw.zza() { // from class: com.google.android.gms.internal.zzix.6
            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoAdClosed() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.4
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoAdClosed();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoAdFailedToLoad(final int i) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.7
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoAdFailedToLoad(i);
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoAdLeftApplication() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.6
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoAdLeftApplication();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoAdLoaded() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.1
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoAdLoaded();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoAdOpened() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.2
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoAdOpened();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void onRewardedVideoStarted() throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.3
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.onRewardedVideoStarted();
                        }
                    }
                });
            }

            @Override // com.google.android.gms.internal.zznw
            public void zza(final zznt zzntVar) throws RemoteException {
                zzix.this.zzth.add(new zza(this) { // from class: com.google.android.gms.internal.zzix.6.5
                    @Override // com.google.android.gms.internal.zzix.zza
                    public void zzb(zziy zziyVar) throws RemoteException {
                        if (zziyVar.zzIZ != null) {
                            zziyVar.zzIZ.zza(zzntVar);
                        }
                    }
                });
            }
        });
    }
}
