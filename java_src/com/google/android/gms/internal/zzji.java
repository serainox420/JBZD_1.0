package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzjf;
import com.google.android.gms.internal.zzqp;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzji {
    private final Context mContext;
    private final String zzJK;
    private zzpt<zzjf> zzJL;
    private zzpt<zzjf> zzJM;
    private zzd zzJN;
    private int zzJO;
    private final Object zzrJ;
    private final zzqh zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.zzji$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ zzaw zzJP;
        final /* synthetic */ zzd zzJQ;

        /* renamed from: com.google.android.gms.internal.zzji$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes2.dex */
        class C03511 implements zzjf.zza {
            final /* synthetic */ zzjf zzJS;

            C03511(zzjf zzjfVar) {
                this.zzJS = zzjfVar;
            }

            @Override // com.google.android.gms.internal.zzjf.zza
            public void zzgN() {
                zzpo.zzXC.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.zzji.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (zzji.this.zzrJ) {
                            if (AnonymousClass1.this.zzJQ.getStatus() == -1 || AnonymousClass1.this.zzJQ.getStatus() == 1) {
                                return;
                            }
                            AnonymousClass1.this.zzJQ.reject();
                            com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzji.1.1.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    C03511.this.zzJS.destroy();
                                }
                            });
                            zzpk.v("Could not receive loaded message in a timely manner. Rejecting.");
                        }
                    }
                }, zza.zzKa);
            }
        }

        AnonymousClass1(zzaw zzawVar, zzd zzdVar) {
            this.zzJP = zzawVar;
            this.zzJQ = zzdVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            final zzjf zza = zzji.this.zza(zzji.this.mContext, zzji.this.zztt, this.zzJP);
            zza.zza(new C03511(zza));
            zza.zza("/jsLoaded", new zzid() { // from class: com.google.android.gms.internal.zzji.1.2
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    synchronized (zzji.this.zzrJ) {
                        if (AnonymousClass1.this.zzJQ.getStatus() == -1 || AnonymousClass1.this.zzJQ.getStatus() == 1) {
                            return;
                        }
                        zzji.this.zzJO = 0;
                        zzji.this.zzJL.zzd(zza);
                        AnonymousClass1.this.zzJQ.zzg(zza);
                        zzji.this.zzJN = AnonymousClass1.this.zzJQ;
                        zzpk.v("Successfully loaded JS Engine.");
                    }
                }
            });
            final zzqa zzqaVar = new zzqa();
            zzid zzidVar = new zzid() { // from class: com.google.android.gms.internal.zzji.1.3
                @Override // com.google.android.gms.internal.zzid
                public void zza(zzqw zzqwVar, Map<String, String> map) {
                    synchronized (zzji.this.zzrJ) {
                        zzpk.zzbg("JS Engine is requesting an update");
                        if (zzji.this.zzJO == 0) {
                            zzpk.zzbg("Starting reload.");
                            zzji.this.zzJO = 2;
                            zzji.this.zzb(AnonymousClass1.this.zzJP);
                        }
                        zza.zzb("/requestReload", (zzid) zzqaVar.get());
                    }
                }
            };
            zzqaVar.set(zzidVar);
            zza.zza("/requestReload", zzidVar);
            if (zzji.this.zzJK.endsWith(".js")) {
                zza.zzam(zzji.this.zzJK);
            } else if (zzji.this.zzJK.startsWith("<html>")) {
                zza.zzao(zzji.this.zzJK);
            } else {
                zza.zzan(zzji.this.zzJK);
            }
            zzpo.zzXC.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.zzji.1.4
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzji.this.zzrJ) {
                        if (AnonymousClass1.this.zzJQ.getStatus() == -1 || AnonymousClass1.this.zzJQ.getStatus() == 1) {
                            return;
                        }
                        AnonymousClass1.this.zzJQ.reject();
                        com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzji.1.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                zza.destroy();
                            }
                        });
                        zzpk.v("Could not receive loaded message in a timely manner. Rejecting.");
                    }
                }
            }, zza.zzJZ);
        }
    }

    /* loaded from: classes2.dex */
    static class zza {
        static int zzJZ = 60000;
        static int zzKa = 10000;
    }

    /* loaded from: classes2.dex */
    public static class zzb<T> implements zzpt<T> {
        @Override // com.google.android.gms.internal.zzpt
        public void zzd(T t) {
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc extends zzqq<zzjj> {
        private final zzd zzKb;
        private boolean zzKc;
        private final Object zzrJ = new Object();

        public zzc(zzd zzdVar) {
            this.zzKb = zzdVar;
        }

        public void release() {
            synchronized (this.zzrJ) {
                if (this.zzKc) {
                    return;
                }
                this.zzKc = true;
                zza(new zzqp.zzc<zzjj>(this) { // from class: com.google.android.gms.internal.zzji.zzc.1
                    @Override // com.google.android.gms.internal.zzqp.zzc
                    /* renamed from: zzb */
                    public void zzd(zzjj zzjjVar) {
                        zzpk.v("Ending javascript session.");
                        ((zzjk) zzjjVar).zzgT();
                    }
                }, new zzqp.zzb());
                zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.internal.zzji.zzc.2
                    @Override // com.google.android.gms.internal.zzqp.zzc
                    /* renamed from: zzb */
                    public void zzd(zzjj zzjjVar) {
                        zzpk.v("Releasing engine reference.");
                        zzc.this.zzKb.zzgQ();
                    }
                }, new zzqp.zza() { // from class: com.google.android.gms.internal.zzji.zzc.3
                    @Override // com.google.android.gms.internal.zzqp.zza
                    public void run() {
                        zzc.this.zzKb.zzgQ();
                    }
                });
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zzd extends zzqq<zzjf> {
        private zzpt<zzjf> zzJM;
        private final Object zzrJ = new Object();
        private boolean zzKe = false;
        private int zzKf = 0;

        public zzd(zzpt<zzjf> zzptVar) {
            this.zzJM = zzptVar;
        }

        public zzc zzgP() {
            final zzc zzcVar = new zzc(this);
            synchronized (this.zzrJ) {
                zza(new zzqp.zzc<zzjf>(this) { // from class: com.google.android.gms.internal.zzji.zzd.1
                    @Override // com.google.android.gms.internal.zzqp.zzc
                    /* renamed from: zza */
                    public void zzd(zzjf zzjfVar) {
                        zzpk.v("Getting a new session for JS Engine.");
                        zzcVar.zzg(zzjfVar.zzgM());
                    }
                }, new zzqp.zza(this) { // from class: com.google.android.gms.internal.zzji.zzd.2
                    @Override // com.google.android.gms.internal.zzqp.zza
                    public void run() {
                        zzpk.v("Rejecting reference for JS Engine.");
                        zzcVar.reject();
                    }
                });
                com.google.android.gms.common.internal.zzac.zzaw(this.zzKf >= 0);
                this.zzKf++;
            }
            return zzcVar;
        }

        protected void zzgQ() {
            boolean z = true;
            synchronized (this.zzrJ) {
                if (this.zzKf < 1) {
                    z = false;
                }
                com.google.android.gms.common.internal.zzac.zzaw(z);
                zzpk.v("Releasing 1 reference for JS Engine");
                this.zzKf--;
                zzgS();
            }
        }

        public void zzgR() {
            boolean z = true;
            synchronized (this.zzrJ) {
                if (this.zzKf < 0) {
                    z = false;
                }
                com.google.android.gms.common.internal.zzac.zzaw(z);
                zzpk.v("Releasing root reference. JS Engine will be destroyed once other references are released.");
                this.zzKe = true;
                zzgS();
            }
        }

        protected void zzgS() {
            synchronized (this.zzrJ) {
                com.google.android.gms.common.internal.zzac.zzaw(this.zzKf >= 0);
                if (!this.zzKe || this.zzKf != 0) {
                    zzpk.v("There are still references to the engine. Not destroying.");
                } else {
                    zzpk.v("No reference is left (including root). Cleaning up engine.");
                    zza(new zzqp.zzc<zzjf>() { // from class: com.google.android.gms.internal.zzji.zzd.3
                        @Override // com.google.android.gms.internal.zzqp.zzc
                        /* renamed from: zza */
                        public void zzd(final zzjf zzjfVar) {
                            com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzji.zzd.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    zzd.this.zzJM.zzd(zzjfVar);
                                    zzjfVar.destroy();
                                }
                            });
                        }
                    }, new zzqp.zzb());
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class zze extends zzqq<zzjj> {
        private zzc zzKk;

        public zze(zzc zzcVar) {
            this.zzKk = zzcVar;
        }

        public void finalize() {
            this.zzKk.release();
            this.zzKk = null;
        }

        @Override // com.google.android.gms.internal.zzqq
        public int getStatus() {
            return this.zzKk.getStatus();
        }

        @Override // com.google.android.gms.internal.zzqq
        public void reject() {
            this.zzKk.reject();
        }

        @Override // com.google.android.gms.internal.zzqq, com.google.android.gms.internal.zzqp
        public void zza(zzqp.zzc<zzjj> zzcVar, zzqp.zza zzaVar) {
            this.zzKk.zza(zzcVar, zzaVar);
        }

        @Override // com.google.android.gms.internal.zzqq, com.google.android.gms.internal.zzqp
        /* renamed from: zzj */
        public void zzg(zzjj zzjjVar) {
            this.zzKk.zzg(zzjjVar);
        }
    }

    public zzji(Context context, zzqh zzqhVar, String str) {
        this.zzrJ = new Object();
        this.zzJO = 1;
        this.zzJK = str;
        this.mContext = context.getApplicationContext();
        this.zztt = zzqhVar;
        this.zzJL = new zzb();
        this.zzJM = new zzb();
    }

    public zzji(Context context, zzqh zzqhVar, String str, zzpt<zzjf> zzptVar, zzpt<zzjf> zzptVar2) {
        this(context, zzqhVar, str);
        this.zzJL = zzptVar;
        this.zzJM = zzptVar2;
    }

    private zzd zza(zzaw zzawVar) {
        zzd zzdVar = new zzd(this.zzJM);
        com.google.android.gms.ads.internal.zzw.zzcM().runOnUiThread(new AnonymousClass1(zzawVar, zzdVar));
        return zzdVar;
    }

    protected zzjf zza(Context context, zzqh zzqhVar, zzaw zzawVar) {
        return new zzjh(context, zzqhVar, zzawVar, null);
    }

    protected zzd zzb(zzaw zzawVar) {
        final zzd zza2 = zza(zzawVar);
        zza2.zza(new zzqp.zzc<zzjf>() { // from class: com.google.android.gms.internal.zzji.2
            @Override // com.google.android.gms.internal.zzqp.zzc
            /* renamed from: zza */
            public void zzd(zzjf zzjfVar) {
                synchronized (zzji.this.zzrJ) {
                    zzji.this.zzJO = 0;
                    if (zzji.this.zzJN != null && zza2 != zzji.this.zzJN) {
                        zzpk.v("New JS engine is loaded, marking previous one as destroyable.");
                        zzji.this.zzJN.zzgR();
                    }
                    zzji.this.zzJN = zza2;
                }
            }
        }, new zzqp.zza() { // from class: com.google.android.gms.internal.zzji.3
            @Override // com.google.android.gms.internal.zzqp.zza
            public void run() {
                synchronized (zzji.this.zzrJ) {
                    zzji.this.zzJO = 1;
                    zzpk.v("Failed loading new engine. Marking new engine destroyable.");
                    zza2.zzgR();
                }
            }
        });
        return zza2;
    }

    public zzc zzc(zzaw zzawVar) {
        zzc zzgP;
        synchronized (this.zzrJ) {
            if (this.zzJN == null || this.zzJN.getStatus() == -1) {
                this.zzJO = 2;
                this.zzJN = zzb(zzawVar);
                zzgP = this.zzJN.zzgP();
            } else if (this.zzJO == 0) {
                zzgP = this.zzJN.zzgP();
            } else if (this.zzJO == 1) {
                this.zzJO = 2;
                zzb(zzawVar);
                zzgP = this.zzJN.zzgP();
            } else {
                zzgP = this.zzJO == 2 ? this.zzJN.zzgP() : this.zzJN.zzgP();
            }
        }
        return zzgP;
    }

    public zzc zzgO() {
        return zzc((zzaw) null);
    }
}
