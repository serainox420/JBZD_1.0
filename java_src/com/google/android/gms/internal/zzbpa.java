package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbok;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbow;
import com.google.android.gms.internal.zzbro;
import com.google.firebase.a;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.f;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class zzbpa {
    protected a zzcau;
    protected zzbro zzcbE;
    protected boolean zzcbF;
    protected String zzcbH;
    protected zzbpe zzcdS;
    protected zzbow zzcdT;
    protected zzbpm zzcdU;
    protected String zzcdV;
    private zzbpi zzcdY;
    protected zzbro.zza zzcdW = zzbro.zza.INFO;
    protected long cacheSize = 10485760;
    private boolean zzcdF = false;
    private boolean zzcdX = false;

    private ScheduledExecutorService zzXt() {
        zzbpm zzYB = zzYB();
        if (!(zzYB instanceof zzbsy)) {
            throw new RuntimeException("Custom run loops are not supported!");
        }
        return ((zzbsy) zzYB).zzXt();
    }

    private void zzYE() {
        if (this.zzcbE == null) {
            this.zzcbE = zzYs().zza(this, this.zzcdW, null);
        }
    }

    private void zzYF() {
        if (this.zzcdU == null) {
            this.zzcdU = this.zzcdY.zzb(this);
        }
    }

    private void zzYG() {
        if (this.zzcdS == null) {
            this.zzcdS = zzYs().zza(this);
        }
    }

    private void zzYH() {
        if (this.zzcbH == null) {
            this.zzcbH = zziX(zzYs().zzc(this));
        }
    }

    private void zzYI() {
        if (this.zzcdT == null) {
            this.zzcdT = zzYs().zza(zzXt());
        }
    }

    private void zzYJ() {
        if (this.zzcdV == null) {
            this.zzcdV = "default";
        }
    }

    private zzbpi zzYs() {
        if (this.zzcdY == null) {
            if (zzbst.zzabG()) {
                zzYt();
            } else if (zzbpf.isActive()) {
                zzbpf zzbpfVar = zzbpf.INSTANCE;
                zzbpfVar.initialize();
                this.zzcdY = zzbpfVar;
            } else {
                this.zzcdY = zzbpg.INSTANCE;
            }
        }
        return this.zzcdY;
    }

    private synchronized void zzYt() {
        this.zzcdY = new zzbnv(this.zzcau);
    }

    private void zzYv() {
        zzYE();
        zzYs();
        zzYH();
        zzYG();
        zzYF();
        zzYJ();
        zzYI();
    }

    private void zzYw() {
        this.zzcdS.restart();
        this.zzcdU.restart();
    }

    private static zzbok zza(final zzbow zzbowVar) {
        return new zzbok() { // from class: com.google.android.gms.internal.zzbpa.1
            @Override // com.google.android.gms.internal.zzbok
            public void zza(boolean z, final zzbok.zza zzaVar) {
                zzbow.this.zza(z, new zzbow.zza(this) { // from class: com.google.android.gms.internal.zzbpa.1.1
                    @Override // com.google.android.gms.internal.zzbow.zza
                    public void onError(String str) {
                        zzaVar.onError(str);
                    }

                    @Override // com.google.android.gms.internal.zzbow.zza
                    public void zziL(String str) {
                        zzaVar.zziL(str);
                    }
                });
            }
        };
    }

    private String zziX(String str) {
        return "Firebase/5/" + f.a() + "/" + str;
    }

    public boolean isFrozen() {
        return this.zzcdF;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stop() {
        this.zzcdX = true;
        this.zzcdS.shutdown();
        this.zzcdU.shutdown();
    }

    public zzbro zzXr() {
        return this.zzcbE;
    }

    public boolean zzXu() {
        return this.zzcbF;
    }

    public zzbpe zzYA() {
        return this.zzcdS;
    }

    public zzbpm zzYB() {
        return this.zzcdU;
    }

    public String zzYC() {
        return this.zzcdV;
    }

    public zzbow zzYD() {
        return this.zzcdT;
    }

    public zzbro.zza zzYe() {
        return this.zzcdW;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void zzYj() {
        if (!this.zzcdF) {
            this.zzcdF = true;
            zzYv();
        }
    }

    public void zzYu() {
        if (this.zzcdX) {
            zzYw();
            this.zzcdX = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzYx() {
        if (isFrozen()) {
            throw new DatabaseException("Modifications to DatabaseConfig objects must occur before they are in use");
        }
    }

    public zzbol zzYy() {
        return new zzbol(zzXr(), zza(zzYD()), zzXt(), zzXu(), f.a(), zzkn());
    }

    public long zzYz() {
        return this.cacheSize;
    }

    public zzbop zza(zzbon zzbonVar, zzbop.zza zzaVar) {
        return zzYs().zza(this, zzYy(), zzbonVar, zzaVar);
    }

    public zzbrn zziV(String str) {
        return new zzbrn(this.zzcbE, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbql zziW(String str) {
        if (this.zzcbF) {
            zzbql zza = this.zzcdY.zza(this, str);
            if (zza != null) {
                return zza;
            }
            throw new IllegalArgumentException("You have enabled persistence, but persistence is not supported on this platform.");
        }
        return new zzbqk();
    }

    public String zzkn() {
        return this.zzcbH;
    }
}
