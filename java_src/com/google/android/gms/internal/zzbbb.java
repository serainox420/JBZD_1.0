package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbib;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzbbb {
    private final Context mContext;
    private final String zzbEU;
    private final String zzbJf;
    private final String zzbJg;
    private final zzbcc zzbJh;
    private final zzbib zzbJi;
    private final ExecutorService zzbJj;
    private final ScheduledExecutorService zzbJk;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final zzbbd zzbJm;
    private zzbcb zzbJn;
    private final com.google.android.gms.common.util.zze zzuP;
    private volatile int mState = 1;
    private List<zzbbi> zzbJo = new ArrayList();
    private ScheduledFuture<?> zzbHy = null;
    private boolean zzbJp = false;

    /* loaded from: classes2.dex */
    private class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zzbbb.this.mState = 3;
            String str = zzbbb.this.zzbEU;
            zzbbu.zzbh(new StringBuilder(String.valueOf(str).length() + 26).append("Container ").append(str).append(" loading failed.").toString());
            if (zzbbb.this.zzbJo != null) {
                for (zzbbi zzbbiVar : zzbbb.this.zzbJo) {
                    if (zzbbiVar.zzRX()) {
                        try {
                            zzbbb.this.zzbJl.zza("app", zzbbiVar.zzRU(), zzbbiVar.zzRV(), zzbbiVar.currentTimeMillis());
                            String valueOf = String.valueOf(zzbbiVar.zzRU());
                            zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Logged event ").append(valueOf).append(" to Firebase (marked as passthrough).").toString());
                        } catch (RemoteException e) {
                            zzbbe.zza("Error logging event with measurement proxy:", e, zzbbb.this.mContext);
                        }
                    } else {
                        String valueOf2 = String.valueOf(zzbbiVar.zzRU());
                        zzbbu.v(new StringBuilder(String.valueOf(valueOf2).length() + 45).append("Discarded event ").append(valueOf2).append(" (marked as non-passthrough).").toString());
                    }
                }
                zzbbb.this.zzbJo = null;
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzb implements zzbib.zza, Runnable {
        private zzb() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzac.zzaw(zzbbb.this.mState == 1);
            ArrayList arrayList = new ArrayList();
            zzbbb.this.zzbJp = false;
            if (zzbbz.zzSg().zzhH(zzbbb.this.zzbEU)) {
                arrayList.add(0);
            } else {
                zzbbb.this.zzbJp = zzbbb.this.zzbJm.zzRT();
                if (!zzbbb.this.zzbJp) {
                    arrayList.add(0);
                    arrayList.add(1);
                } else {
                    arrayList.add(1);
                    arrayList.add(0);
                }
                arrayList.add(2);
            }
            zzbbb.this.zzbJi.zza(zzbbb.this.zzbEU, zzbbb.this.zzbJg, zzbbb.this.zzbJf, arrayList, this, zzbbb.this.zzbJm);
        }

        @Override // com.google.android.gms.internal.zzbib.zza
        public void zza(zzbif zzbifVar) {
            if (zzbifVar.getStatus() == Status.zzazx) {
                zzbbb.this.zzbJj.execute(new zze(zzbifVar));
            } else {
                zzbbb.this.zzbJj.execute(new zza());
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzc implements Runnable {
        private final zzbbi zzbJr;

        public zzc(zzbbi zzbbiVar) {
            this.zzbJr = zzbbiVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzbbb.this.mState == 2) {
                String valueOf = String.valueOf(this.zzbJr.zzRU());
                zzbbu.v(valueOf.length() != 0 ? "Evaluating tags for event ".concat(valueOf) : new String("Evaluating tags for event "));
                zzbbb.this.zzbJn.zzb(this.zzbJr);
            } else if (zzbbb.this.mState == 1) {
                zzbbb.this.zzbJo.add(this.zzbJr);
                String valueOf2 = String.valueOf(this.zzbJr.zzRU());
                zzbbu.v(new StringBuilder(String.valueOf(valueOf2).length() + 30).append("Added event ").append(valueOf2).append(" to pending queue.").toString());
            } else if (zzbbb.this.mState != 3) {
            } else {
                String valueOf3 = String.valueOf(this.zzbJr.zzRU());
                zzbbu.v(new StringBuilder(String.valueOf(valueOf3).length() + 61).append("Failed to evaluate tags for event ").append(valueOf3).append(" (container failed to load)").toString());
                if (!this.zzbJr.zzRX()) {
                    String valueOf4 = String.valueOf(this.zzbJr.zzRU());
                    zzbbu.v(valueOf4.length() != 0 ? "Discarded non-passthrough event ".concat(valueOf4) : new String("Discarded non-passthrough event "));
                    return;
                }
                try {
                    zzbbb.this.zzbJl.zza("app", this.zzbJr.zzRU(), this.zzbJr.zzRV(), this.zzbJr.currentTimeMillis());
                    String valueOf5 = String.valueOf(this.zzbJr.zzRU());
                    zzbbu.v(new StringBuilder(String.valueOf(valueOf5).length() + 38).append("Logged passthrough event ").append(valueOf5).append(" to Firebase.").toString());
                } catch (RemoteException e) {
                    zzbbe.zza("Error logging event with measurement proxy:", e, zzbbb.this.mContext);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzd implements zzbib.zza, Runnable {
        private zzd() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.gms.common.internal.zzac.zzaw(zzbbb.this.mState == 2);
            if (zzbbz.zzSg().zzhH(zzbbb.this.zzbEU)) {
                return;
            }
            String str = zzbbb.this.zzbEU;
            zzbbu.v(new StringBuilder(String.valueOf(str).length() + 24).append("Refreshing container ").append(str).append("...").toString());
            ArrayList arrayList = new ArrayList();
            arrayList.add(0);
            zzbbb.this.zzbJi.zza(zzbbb.this.zzbEU, zzbbb.this.zzbJg, zzbbb.this.zzbJf, arrayList, this, zzbbb.this.zzbJm);
        }

        @Override // com.google.android.gms.internal.zzbib.zza
        public void zza(zzbif zzbifVar) {
            if (zzbifVar.getStatus() != Status.zzazx) {
                zzbbb.this.zzaB(zzbbb.this.zzbJm.zzQr());
                return;
            }
            String str = zzbbb.this.zzbEU;
            zzbbu.v(new StringBuilder(String.valueOf(str).length() + 47).append("Refreshed container ").append(str).append(". Reinitializing runtime...").toString());
            zzbbb.this.zzbJj.execute(new zze(zzbifVar));
        }
    }

    /* loaded from: classes2.dex */
    private class zze implements Runnable {
        private final zzbif zzbJs;

        zze(zzbif zzbifVar) {
            this.zzbJs = zzbifVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            zzbio zzSQ = this.zzbJs.zzSL().zzSQ();
            zzbir zzSM = this.zzbJs.zzSM();
            boolean z = zzbbb.this.zzbJn == null;
            zzbbb.this.zzbJn = zzbbb.this.zzbJh.zza(zzSQ, zzSM);
            zzbbb.this.mState = 2;
            String str = zzbbb.this.zzbEU;
            zzbbu.v(new StringBuilder(String.valueOf(str).length() + 48).append("Container ").append(str).append(" loaded during runtime initialization.").toString());
            if (zzbbb.this.zzbJo != null) {
                for (zzbbi zzbbiVar : zzbbb.this.zzbJo) {
                    String valueOf = String.valueOf(zzbbiVar.zzRU());
                    zzbbu.v(valueOf.length() != 0 ? "Evaluating tags for pending event ".concat(valueOf) : new String("Evaluating tags for pending event "));
                    zzbbb.this.zzbJn.zzb(zzbbiVar);
                }
                zzbbb.this.zzbJo = null;
            }
            zzbbb.this.zzbJn.dispatch();
            String valueOf2 = String.valueOf(zzbbb.this.zzbEU);
            zzbbu.v(valueOf2.length() != 0 ? "Runtime initialized successfully for container ".concat(valueOf2) : new String("Runtime initialized successfully for container "));
            long zzSR = this.zzbJs.zzSL().zzSR() + zzbbb.this.zzbJm.zzQq();
            if (!z || !zzbbb.this.zzbJp || this.zzbJs.getSource() != 1 || zzSR >= zzbbb.this.zzuP.currentTimeMillis()) {
                zzbbb.this.zzaB(Math.max(900000L, zzSR - zzbbb.this.zzuP.currentTimeMillis()));
            } else {
                zzbbb.this.zzaB(zzbbb.this.zzbJm.zzRS());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbb(Context context, String str, String str2, String str3, zzbcc zzbccVar, zzbib zzbibVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.common.util.zze zzeVar, zzbbd zzbbdVar) {
        this.mContext = context;
        this.zzbEU = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzbJh = (zzbcc) com.google.android.gms.common.internal.zzac.zzw(zzbccVar);
        this.zzbJi = (zzbib) com.google.android.gms.common.internal.zzac.zzw(zzbibVar);
        this.zzbJj = (ExecutorService) com.google.android.gms.common.internal.zzac.zzw(executorService);
        this.zzbJk = (ScheduledExecutorService) com.google.android.gms.common.internal.zzac.zzw(scheduledExecutorService);
        this.zzbJl = (com.google.android.gms.tagmanager.zzbb) com.google.android.gms.common.internal.zzac.zzw(zzbbVar);
        this.zzuP = (com.google.android.gms.common.util.zze) com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        this.zzbJm = (zzbbd) com.google.android.gms.common.internal.zzac.zzw(zzbbdVar);
        this.zzbJf = str3;
        this.zzbJg = str2;
        this.zzbJo.add(new zzbbi("gtm.load", new Bundle(), "gtm", new Date(), false, this.zzbJl));
        String str4 = this.zzbEU;
        zzbbu.v(new StringBuilder(String.valueOf(str4).length() + 35).append("Container ").append(str4).append("is scheduled for loading.").toString());
        this.zzbJj.execute(new zzb());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaB(long j) {
        if (this.zzbHy != null) {
            this.zzbHy.cancel(false);
        }
        String str = this.zzbEU;
        zzbbu.v(new StringBuilder(String.valueOf(str).length() + 45).append("Refresh container ").append(str).append(" in ").append(j).append("ms.").toString());
        this.zzbHy = this.zzbJk.schedule(new Runnable() { // from class: com.google.android.gms.internal.zzbbb.2
            @Override // java.lang.Runnable
            public void run() {
                zzbbb.this.zzbJj.execute(new zzd());
            }
        }, j, TimeUnit.MILLISECONDS);
    }

    public void dispatch() {
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbbb.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzbbb.this.mState == 2) {
                    zzbbb.this.zzbJn.dispatch();
                }
            }
        });
    }

    public void zza(zzbbi zzbbiVar) {
        this.zzbJj.execute(new zzc(zzbbiVar));
    }
}
