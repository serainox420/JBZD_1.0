package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzar;
import com.google.android.gms.internal.zzav;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpn;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
@zzme
/* loaded from: classes.dex */
public class zzj implements zzar, Runnable {
    private zzx zzss;
    private final List<Object[]> zzth = new Vector();
    private final AtomicReference<zzar> zzti = new AtomicReference<>();
    CountDownLatch zztj = new CountDownLatch(1);

    public zzj(zzx zzxVar) {
        this.zzss = zzxVar;
        if (zzel.zzeT().zzlj()) {
            zzpn.zza(this);
        } else {
            run();
        }
    }

    private void zzch() {
        if (this.zzth.isEmpty()) {
            return;
        }
        for (Object[] objArr : this.zzth) {
            if (objArr.length == 1) {
                this.zzti.get().zza((MotionEvent) objArr[0]);
            } else if (objArr.length == 3) {
                this.zzti.get().zza(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue());
            }
        }
        this.zzth.clear();
    }

    private Context zzg(Context context) {
        Context applicationContext;
        return (zzgd.zzBs.get().booleanValue() && (applicationContext = context.getApplicationContext()) != null) ? applicationContext : context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            zza(zzd(this.zzss.zzvn.zzba, zzg(this.zzss.zzqn), !zzgd.zzCU.get().booleanValue() && (this.zzss.zzvn.zzYY || !zzgd.zzBO.get().booleanValue())));
        } finally {
            this.zztj.countDown();
            this.zzss = null;
        }
    }

    @Override // com.google.android.gms.internal.zzar
    public String zza(Context context, String str, View view) {
        zzar zzarVar;
        if (!zzcg() || (zzarVar = this.zzti.get()) == null) {
            return "";
        }
        zzch();
        return zzarVar.zza(zzg(context), str, view);
    }

    public String zza(Context context, byte[] bArr) {
        zzar zzarVar;
        if (!zzcg() || (zzarVar = this.zzti.get()) == null) {
            return "";
        }
        zzch();
        return zzarVar.zzb(zzg(context));
    }

    @Override // com.google.android.gms.internal.zzar
    public void zza(int i, int i2, int i3) {
        zzar zzarVar = this.zzti.get();
        if (zzarVar == null) {
            this.zzth.add(new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)});
            return;
        }
        zzch();
        zzarVar.zza(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.zzar
    public void zza(MotionEvent motionEvent) {
        zzar zzarVar = this.zzti.get();
        if (zzarVar == null) {
            this.zzth.add(new Object[]{motionEvent});
            return;
        }
        zzch();
        zzarVar.zza(motionEvent);
    }

    protected void zza(zzar zzarVar) {
        this.zzti.set(zzarVar);
    }

    @Override // com.google.android.gms.internal.zzar
    public String zzb(Context context) {
        return zza(context, null);
    }

    protected boolean zzcg() {
        try {
            this.zztj.await();
            return true;
        } catch (InterruptedException e) {
            zzpk.zzc("Interrupted during GADSignals creation.", e);
            return false;
        }
    }

    protected zzar zzd(String str, Context context, boolean z) {
        return zzav.zza(str, context, z);
    }
}
