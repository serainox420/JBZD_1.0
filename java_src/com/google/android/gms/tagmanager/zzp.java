package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaaf;
import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzbjd;
import com.google.android.gms.internal.zzbje;
import com.google.android.gms.internal.zzbjf;
import com.google.android.gms.tagmanager.zzbn;
import com.google.android.gms.tagmanager.zzcj;
import com.google.android.gms.tagmanager.zzo;
/* loaded from: classes2.dex */
public class zzp extends zzaaf<ContainerHolder> {
    private final Context mContext;
    private final String zzbEU;
    private long zzbEZ;
    private final TagManager zzbFg;
    private final zzd zzbFj;
    private final zzcl zzbFk;
    private final int zzbFl;
    private final zzq zzbFm;
    private zzf zzbFn;
    private zzbje zzbFo;
    private volatile zzo zzbFp;
    private volatile boolean zzbFq;
    private zzaj.zzj zzbFr;
    private String zzbFs;
    private zze zzbFt;
    private zza zzbFu;
    private final Looper zzrs;
    private final com.google.android.gms.common.util.zze zzuP;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.tagmanager.zzp$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza {
        boolean zzb(Container container);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements zzbn<zzbjd.zza> {
        private zzb() {
        }

        /* synthetic */ zzb(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzbn
        /* renamed from: zza */
        public void onSuccess(zzbjd.zza zzaVar) {
            zzaj.zzj zzjVar;
            if (zzaVar.zzbNf != null) {
                zzjVar = zzaVar.zzbNf;
            } else {
                zzaj.zzf zzfVar = zzaVar.zzlr;
                zzjVar = new zzaj.zzj();
                zzjVar.zzlr = zzfVar;
                zzjVar.zzlq = null;
                zzjVar.zzls = zzfVar.version;
            }
            zzp.this.zza(zzjVar, zzaVar.zzbNe, true);
        }

        @Override // com.google.android.gms.tagmanager.zzbn
        public void zza(zzbn.zza zzaVar) {
            if (!zzp.this.zzbFq) {
                zzp.this.zzay(0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc implements zzbn<zzaj.zzj> {
        private zzc() {
        }

        /* synthetic */ zzc(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzbn
        public void zza(zzbn.zza zzaVar) {
            if (zzaVar == zzbn.zza.SERVER_UNAVAILABLE_ERROR) {
                zzp.this.zzbFm.zzQs();
            }
            synchronized (zzp.this) {
                if (!zzp.this.isReady()) {
                    if (zzp.this.zzbFp != null) {
                        zzp.this.zzb((zzp) zzp.this.zzbFp);
                    } else {
                        zzp.this.zzb((zzp) zzp.this.zzc(Status.zzazA));
                    }
                }
            }
            zzp.this.zzay(zzp.this.zzbFm.zzQr());
        }

        @Override // com.google.android.gms.tagmanager.zzbn
        /* renamed from: zzb */
        public void onSuccess(zzaj.zzj zzjVar) {
            zzp.this.zzbFm.zzQt();
            synchronized (zzp.this) {
                if (zzjVar.zzlr == null) {
                    if (zzp.this.zzbFr.zzlr == null) {
                        zzbo.e("Current resource is null; network resource is also null");
                        zzp.this.zzay(zzp.this.zzbFm.zzQr());
                        return;
                    }
                    zzjVar.zzlr = zzp.this.zzbFr.zzlr;
                }
                zzp.this.zza(zzjVar, zzp.this.zzuP.currentTimeMillis(), false);
                zzbo.v(new StringBuilder(58).append("setting refresh time to current time: ").append(zzp.this.zzbEZ).toString());
                if (!zzp.this.zzQn()) {
                    zzp.this.zza(zzjVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzd implements zzo.zza {
        private zzd() {
        }

        /* synthetic */ zzd(zzp zzpVar, AnonymousClass1 anonymousClass1) {
            this();
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public String zzQh() {
            return zzp.this.zzQh();
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public void zzQj() {
            if (zzp.this.zzbFk.zzpV()) {
                zzp.this.zzay(0L);
            }
        }

        @Override // com.google.android.gms.tagmanager.zzo.zza
        public void zzgW(String str) {
            zzp.this.zzgW(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zze extends Releasable {
        void zza(zzbn<zzaj.zzj> zzbnVar);

        void zzf(long j, String str);

        void zzgZ(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzf extends Releasable {
        void zzQp();

        void zza(zzbn<zzbjd.zza> zzbnVar);

        void zzb(zzbjd.zza zzaVar);

        zzbjf.zzc zznz(int i);
    }

    zzp(Context context, TagManager tagManager, Looper looper, String str, int i, zzf zzfVar, zze zzeVar, zzbje zzbjeVar, com.google.android.gms.common.util.zze zzeVar2, zzcl zzclVar, zzq zzqVar) {
        super(looper == null ? Looper.getMainLooper() : looper);
        this.mContext = context;
        this.zzbFg = tagManager;
        this.zzrs = looper == null ? Looper.getMainLooper() : looper;
        this.zzbEU = str;
        this.zzbFl = i;
        this.zzbFn = zzfVar;
        this.zzbFt = zzeVar;
        this.zzbFo = zzbjeVar;
        this.zzbFj = new zzd(this, null);
        this.zzbFr = new zzaj.zzj();
        this.zzuP = zzeVar2;
        this.zzbFk = zzclVar;
        this.zzbFm = zzqVar;
        if (zzQn()) {
            zzgW(zzcj.zzRe().zzRg());
        }
    }

    public zzp(Context context, TagManager tagManager, Looper looper, String str, int i, zzt zztVar) {
        this(context, tagManager, looper, str, i, new zzcv(context, str), new zzcu(context, str, zztVar), new zzbje(context), com.google.android.gms.common.util.zzi.zzzc(), new zzbm(1, 5, 900000L, 5000L, "refreshing", com.google.android.gms.common.util.zzi.zzzc()), new zzq(context, str));
        this.zzbFo.zzig(zztVar.zzQv());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzQn() {
        zzcj zzRe = zzcj.zzRe();
        return (zzRe.zzRf() == zzcj.zza.CONTAINER || zzRe.zzRf() == zzcj.zza.CONTAINER_DEBUG) && this.zzbEU.equals(zzRe.getContainerId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zza(zzaj.zzj zzjVar) {
        if (this.zzbFn != null) {
            zzbjd.zza zzaVar = new zzbjd.zza();
            zzaVar.zzbNe = this.zzbEZ;
            zzaVar.zzlr = new zzaj.zzf();
            zzaVar.zzbNf = zzjVar;
            this.zzbFn.zzb(zzaVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zza(zzaj.zzj zzjVar, long j, boolean z) {
        if (z) {
            boolean z2 = this.zzbFq;
        }
        if (!isReady() || this.zzbFp != null) {
            this.zzbFr = zzjVar;
            this.zzbEZ = j;
            long zzQq = this.zzbFm.zzQq();
            zzay(Math.max(0L, Math.min(zzQq, (this.zzbEZ + zzQq) - this.zzuP.currentTimeMillis())));
            Container container = new Container(this.mContext, this.zzbFg.getDataLayer(), this.zzbEU, j, zzjVar);
            if (this.zzbFp == null) {
                this.zzbFp = new zzo(this.zzbFg, this.zzrs, container, this.zzbFj);
            } else {
                this.zzbFp.zza(container);
            }
            if (!isReady() && this.zzbFu.zzb(container)) {
                zzb((zzp) this.zzbFp);
            }
        }
    }

    private void zzaR(final boolean z) {
        this.zzbFn.zza(new zzb(this, null));
        this.zzbFt.zza(new zzc(this, null));
        zzbjf.zzc zznz = this.zzbFn.zznz(this.zzbFl);
        if (zznz != null) {
            this.zzbFp = new zzo(this.zzbFg, this.zzrs, new Container(this.mContext, this.zzbFg.getDataLayer(), this.zzbEU, 0L, zznz), this.zzbFj);
        }
        this.zzbFu = new zza() { // from class: com.google.android.gms.tagmanager.zzp.3
            private Long zzbFw;

            private long zzQo() {
                if (this.zzbFw == null) {
                    this.zzbFw = Long.valueOf(zzp.this.zzbFm.zzQq());
                }
                return this.zzbFw.longValue();
            }

            @Override // com.google.android.gms.tagmanager.zzp.zza
            public boolean zzb(Container container) {
                return z ? container.getLastRefreshTime() + zzQo() >= zzp.this.zzuP.currentTimeMillis() : !container.isDefault();
            }
        };
        if (zzQn()) {
            this.zzbFt.zzf(0L, "");
        } else {
            this.zzbFn.zzQp();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void zzay(long j) {
        if (this.zzbFt == null) {
            zzbo.zzbh("Refresh requested, but no network load scheduler.");
        } else {
            this.zzbFt.zzf(j, this.zzbFr.zzls);
        }
    }

    synchronized String zzQh() {
        return this.zzbFs;
    }

    public void zzQk() {
        zzbjf.zzc zznz = this.zzbFn.zznz(this.zzbFl);
        if (zznz != null) {
            zzb((zzp) new zzo(this.zzbFg, this.zzrs, new Container(this.mContext, this.zzbFg.getDataLayer(), this.zzbEU, 0L, zznz), new zzo.zza() { // from class: com.google.android.gms.tagmanager.zzp.2
                @Override // com.google.android.gms.tagmanager.zzo.zza
                public String zzQh() {
                    return zzp.this.zzQh();
                }

                @Override // com.google.android.gms.tagmanager.zzo.zza
                public void zzQj() {
                    zzbo.zzbh("Refresh ignored: container loaded as default only.");
                }

                @Override // com.google.android.gms.tagmanager.zzo.zza
                public void zzgW(String str) {
                    zzp.this.zzgW(str);
                }
            }));
        } else {
            zzbo.e("Default was requested, but no default container was found");
            zzb((zzp) zzc(new Status(10, "Default was requested, but no default container was found", null)));
        }
        this.zzbFt = null;
        this.zzbFn = null;
    }

    public void zzQl() {
        zzaR(false);
    }

    public void zzQm() {
        zzaR(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaaf
    /* renamed from: zzbN */
    public ContainerHolder zzc(Status status) {
        if (this.zzbFp != null) {
            return this.zzbFp;
        }
        if (status == Status.zzazA) {
            zzbo.e("timer expired: setting result to failure");
        }
        return new zzo(status);
    }

    synchronized void zzgW(String str) {
        this.zzbFs = str;
        if (this.zzbFt != null) {
            this.zzbFt.zzgZ(str);
        }
    }
}
