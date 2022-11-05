package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.zzlp;
import com.google.android.gms.internal.zzlq;
import com.google.android.gms.internal.zzpb;
import io.fabric.sdk.android.services.b.b;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
@zzme
/* loaded from: classes.dex */
public class zzlu extends zzlp {
    private final zzqw zzIs;
    private zzjr zzKY;
    zzjp zzQe;
    protected zzjv zzQf;
    private boolean zzQg;
    private final zzgl zzsn;
    private zzka zzsz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlu(Context context, zzpb.zza zzaVar, zzka zzkaVar, zzlq.zza zzaVar2, zzgl zzglVar, zzqw zzqwVar) {
        super(context, zzaVar, zzaVar2);
        this.zzsz = zzkaVar;
        this.zzKY = zzaVar.zzWc;
        this.zzsn = zzglVar;
        this.zzIs = zzqwVar;
    }

    private static int zzT(int i) {
        switch (i) {
            case -1:
                return 4;
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
            default:
                return 6;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
        }
    }

    private static String zza(zzjv zzjvVar) {
        String str = zzjvVar.zzLi.zzKq;
        int zzT = zzT(zzjvVar.zzLh);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(zzT).append(".").append(zzjvVar.zzLn).toString();
    }

    private static String zzg(List<zzjv> list) {
        if (list == null) {
            return "".toString();
        }
        String str = "";
        for (zzjv zzjvVar : list) {
            if (zzjvVar != null && zzjvVar.zzLi != null && !TextUtils.isEmpty(zzjvVar.zzLi.zzKq)) {
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(zza(zzjvVar));
                str = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append(valueOf2).append(b.ROLL_OVER_FILE_NAME_SEPARATOR).toString();
            }
        }
        return str.substring(0, Math.max(0, str.length() - 1));
    }

    private void zziS() throws zzlp.zza {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzlu.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzlu.this.zzPU) {
                    zzlu.this.zzQg = com.google.android.gms.ads.internal.zzp.zza(zzlu.this.zzIs, zzlu.this.zzQf, countDownLatch);
                }
            }
        });
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
            synchronized (this.zzPU) {
                if (!this.zzQg) {
                    throw new zzlp.zza("View could not be prepared", 0);
                }
                if (this.zzIs.isDestroyed()) {
                    throw new zzlp.zza("Assets not loaded, web view is destroyed", 0);
                }
            }
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(e);
            throw new zzlp.zza(new StringBuilder(String.valueOf(valueOf).length() + 38).append("Interrupted while waiting for latch : ").append(valueOf).toString(), 0);
        }
    }

    @Override // com.google.android.gms.internal.zzlp, com.google.android.gms.internal.zzpj
    public void onStop() {
        synchronized (this.zzPU) {
            super.onStop();
            if (this.zzQe != null) {
                this.zzQe.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlp
    protected zzpb zzR(int i) {
        zzmk zzmkVar = this.zzPR.zzTi;
        return new zzpb(zzmkVar.zzRy, this.zzIs, this.zzPS.zzKF, i, this.zzPS.zzKG, this.zzPS.zzSp, this.zzPS.orientation, this.zzPS.zzKL, zzmkVar.zzRB, this.zzPS.zzSn, this.zzQf != null ? this.zzQf.zzLi : null, this.zzQf != null ? this.zzQf.zzLj : null, this.zzQf != null ? this.zzQf.zzLk : AdMobAdapter.class.getName(), this.zzKY, this.zzQf != null ? this.zzQf.zzLl : null, this.zzPS.zzSo, this.zzPR.zzvr, this.zzPS.zzSm, this.zzPR.zzWg, this.zzPS.zzSr, this.zzPS.zzSs, this.zzPR.zzWa, null, this.zzPS.zzSC, this.zzPS.zzSD, this.zzPS.zzSE, this.zzKY != null ? this.zzKY.zzKQ : false, this.zzPS.zzSG, this.zzQe != null ? zzg(this.zzQe.zzgU()) : null, this.zzPS.zzKI, this.zzPS.zzSJ);
    }

    @Override // com.google.android.gms.internal.zzlp
    protected void zzh(long j) throws zzlp.zza {
        Bundle bundle;
        synchronized (this.zzPU) {
            this.zzQe = zzi(j);
        }
        ArrayList arrayList = new ArrayList(this.zzKY.zzKD);
        Bundle bundle2 = this.zzPR.zzTi.zzRy.zzzd;
        if ((bundle2 == null || (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) == null) ? false : bundle.getBoolean("_skipMediation")) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (!((zzjq) listIterator.next()).zzKp.contains("com.google.ads.mediation.admob.AdMobAdapter")) {
                    listIterator.remove();
                }
            }
        }
        this.zzQf = this.zzQe.zzd(arrayList);
        switch (this.zzQf.zzLh) {
            case 0:
                if (this.zzQf.zzLi == null || this.zzQf.zzLi.zzKy == null) {
                    return;
                }
                zziS();
                return;
            case 1:
                throw new zzlp.zza("No fill from any mediation ad networks.", 3);
            default:
                throw new zzlp.zza(new StringBuilder(40).append("Unexpected mediation result: ").append(this.zzQf.zzLh).toString(), 0);
        }
    }

    zzjp zzi(long j) {
        return this.zzKY.zzKO != -1 ? new zzjx(this.mContext, this.zzPR.zzTi, this.zzsz, this.zzKY, this.zzPS.zzzB, this.zzPS.zzzD, j, zzgd.zzDM.get().longValue(), 2) : new zzjy(this.mContext, this.zzPR.zzTi, this.zzsz, this.zzKY, this.zzPS.zzzB, this.zzPS.zzzD, j, zzgd.zzDM.get().longValue(), this.zzsn);
    }
}
