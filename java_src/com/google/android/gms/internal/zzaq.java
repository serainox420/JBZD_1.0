package com.google.android.gms.internal;

import android.os.Build;
import android.os.ConditionVariable;
import com.google.android.gms.internal.zzaf;
import com.google.android.gms.internal.zzzk;
import java.io.IOException;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadLocalRandom;
/* loaded from: classes2.dex */
public class zzaq {
    private static final ConditionVariable zzpA = new ConditionVariable();
    protected static volatile zzzk zzpB = null;
    private static volatile Random zzpD = null;
    protected volatile Boolean zzpC;
    private zzbd zzpz;

    public zzaq(zzbd zzbdVar) {
        this.zzpz = zzbdVar;
        zza(zzbdVar.zzaI());
    }

    private static Random zzR() {
        if (zzpD == null) {
            synchronized (zzaq.class) {
                if (zzpD == null) {
                    zzpD = new Random();
                }
            }
        }
        return zzpD;
    }

    private void zza(Executor executor) {
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.zzaq.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzaq.this.zzpC != null) {
                    return;
                }
                synchronized (zzaq.zzpA) {
                    if (zzaq.this.zzpC == null) {
                        boolean booleanValue = zzgd.zzDN.get().booleanValue();
                        if (booleanValue) {
                            try {
                                zzaq.zzpB = new zzzk(zzaq.this.zzpz.getContext(), "ADSHIELD", null);
                            } catch (Throwable th) {
                                booleanValue = false;
                            }
                        }
                        zzaq.this.zzpC = Boolean.valueOf(booleanValue);
                        zzaq.zzpA.open();
                    }
                }
            }
        });
    }

    public int zzQ() {
        try {
            return Build.VERSION.SDK_INT >= 21 ? ThreadLocalRandom.current().nextInt() : zzR().nextInt();
        } catch (RuntimeException e) {
            return zzR().nextInt();
        }
    }

    public void zza(int i, int i2, long j) throws IOException {
        try {
            zzpA.block();
            if (!this.zzpC.booleanValue() || zzpB == null || !this.zzpz.zzaO()) {
                return;
            }
            zzaf.zza zzaVar = new zzaf.zza();
            zzaVar.zzaS = this.zzpz.getContext().getPackageName();
            zzaVar.zzaT = Long.valueOf(j);
            zzzk.zza zzm = zzpB.zzm(zzbxt.zzf(zzaVar));
            zzm.zzcr(i2);
            zzm.zzcq(i);
            zzm.zze(this.zzpz.zzaM());
        } catch (Exception e) {
        }
    }
}
