package com.google.android.gms.internal;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzmh;
import com.google.android.gms.internal.zzqp;
@zzme
/* loaded from: classes.dex */
public abstract class zzmi implements zzmh.zza, zzpq<Void> {
    private final zzqp<zzmk> zzRq;
    private final zzmh.zza zzRr;
    private final Object zzrJ = new Object();

    @zzme
    /* loaded from: classes.dex */
    public static final class zza extends zzmi {
        private final Context mContext;

        public zza(Context context, zzqp<zzmk> zzqpVar, zzmh.zza zzaVar) {
            super(zzqpVar, zzaVar);
            this.mContext = context;
        }

        @Override // com.google.android.gms.internal.zzmi
        public void zzjn() {
        }

        @Override // com.google.android.gms.internal.zzmi
        public zzmt zzjo() {
            return zznc.zza(this.mContext, new zzfw(zzgd.zzBh.get()), zznb.zzju());
        }
    }

    @zzme
    /* loaded from: classes.dex */
    public static class zzb extends zzmi implements zzf.zzb, zzf.zzc {
        private Context mContext;
        private zzqp<zzmk> zzRq;
        private final zzmh.zza zzRr;
        protected zzmj zzRu;
        private boolean zzRv;
        private final Object zzrJ;
        private zzqh zztt;

        public zzb(Context context, zzqh zzqhVar, zzqp<zzmk> zzqpVar, zzmh.zza zzaVar) {
            super(zzqpVar, zzaVar);
            Looper mainLooper;
            this.zzrJ = new Object();
            this.mContext = context;
            this.zztt = zzqhVar;
            this.zzRq = zzqpVar;
            this.zzRr = zzaVar;
            if (zzgd.zzBT.get().booleanValue()) {
                this.zzRv = true;
                mainLooper = com.google.android.gms.ads.internal.zzw.zzdc().zzlb();
            } else {
                mainLooper = context.getMainLooper();
            }
            this.zzRu = new zzmj(context, mainLooper, this, this, this.zztt.zzYX);
            connect();
        }

        protected void connect() {
            this.zzRu.zzxz();
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnected(Bundle bundle) {
            zziP();
        }

        @Override // com.google.android.gms.common.internal.zzf.zzc
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzpk.zzbf("Cannot connect to remote service, fallback to local instance.");
            zzjp().zziP();
            Bundle bundle = new Bundle();
            bundle.putString(NativeProtocol.WEB_DIALOG_ACTION, "gms_connection_failed_fallback_to_local");
            com.google.android.gms.ads.internal.zzw.zzcM().zzb(this.mContext, this.zztt.zzba, "gmob-apps", bundle, true);
        }

        @Override // com.google.android.gms.common.internal.zzf.zzb
        public void onConnectionSuspended(int i) {
            zzpk.zzbf("Disconnected from remote ad request service.");
        }

        @Override // com.google.android.gms.internal.zzmi
        public void zzjn() {
            synchronized (this.zzrJ) {
                if (this.zzRu.isConnected() || this.zzRu.isConnecting()) {
                    this.zzRu.disconnect();
                }
                Binder.flushPendingCommands();
                if (this.zzRv) {
                    com.google.android.gms.ads.internal.zzw.zzdc().zzlc();
                    this.zzRv = false;
                }
            }
        }

        @Override // com.google.android.gms.internal.zzmi
        public zzmt zzjo() {
            zzmt zzmtVar;
            synchronized (this.zzrJ) {
                try {
                    zzmtVar = this.zzRu.zzjq();
                } catch (DeadObjectException | IllegalStateException e) {
                    zzmtVar = null;
                }
            }
            return zzmtVar;
        }

        zzpq zzjp() {
            return new zza(this.mContext, this.zzRq, this.zzRr);
        }
    }

    public zzmi(zzqp<zzmk> zzqpVar, zzmh.zza zzaVar) {
        this.zzRq = zzqpVar;
        this.zzRr = zzaVar;
    }

    @Override // com.google.android.gms.internal.zzpq
    public void cancel() {
        zzjn();
    }

    @Override // com.google.android.gms.internal.zzmh.zza
    public void zza(zzmn zzmnVar) {
        synchronized (this.zzrJ) {
            this.zzRr.zza(zzmnVar);
            zzjn();
        }
    }

    boolean zza(zzmt zzmtVar, zzmk zzmkVar) {
        try {
            zzmtVar.zza(zzmkVar, new zzmm(this));
            return true;
        } catch (Throwable th) {
            zzpk.zzc("Could not fetch ad response from ad request service due to an Exception.", th);
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(th, "AdRequestClientTask.getAdResponseFromService");
            this.zzRr.zza(new zzmn(0));
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzpq
    /* renamed from: zziN */
    public Void zziP() {
        final zzmt zzjo = zzjo();
        if (zzjo == null) {
            this.zzRr.zza(new zzmn(0));
            zzjn();
        } else {
            this.zzRq.zza(new zzqp.zzc<zzmk>() { // from class: com.google.android.gms.internal.zzmi.1
                @Override // com.google.android.gms.internal.zzqp.zzc
                /* renamed from: zzc */
                public void zzd(zzmk zzmkVar) {
                    if (!zzmi.this.zza(zzjo, zzmkVar)) {
                        zzmi.this.zzjn();
                    }
                }
            }, new zzqp.zza() { // from class: com.google.android.gms.internal.zzmi.2
                @Override // com.google.android.gms.internal.zzqp.zza
                public void run() {
                    zzmi.this.zzjn();
                }
            });
        }
        return null;
    }

    public abstract void zzjn();

    public abstract zzmt zzjo();
}
