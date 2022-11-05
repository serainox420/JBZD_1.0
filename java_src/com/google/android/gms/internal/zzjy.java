package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzjy implements zzjp {
    private final Context mContext;
    private final zzjr zzKY;
    private final boolean zzLa;
    private final zzmk zzLo;
    private final long zzLp;
    private final long zzLq;
    private zzju zzLy;
    private final zzgl zzsn;
    private final zzka zzsz;
    private final boolean zzwf;
    private final Object zzrJ = new Object();
    private boolean zzLs = false;
    private List<zzjv> zzLu = new ArrayList();

    public zzjy(Context context, zzmk zzmkVar, zzka zzkaVar, zzjr zzjrVar, boolean z, boolean z2, long j, long j2, zzgl zzglVar) {
        this.mContext = context;
        this.zzLo = zzmkVar;
        this.zzsz = zzkaVar;
        this.zzKY = zzjrVar;
        this.zzwf = z;
        this.zzLa = z2;
        this.zzLp = j;
        this.zzLq = j2;
        this.zzsn = zzglVar;
    }

    @Override // com.google.android.gms.internal.zzjp
    public void cancel() {
        synchronized (this.zzrJ) {
            this.zzLs = true;
            if (this.zzLy != null) {
                this.zzLy.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzjp
    public zzjv zzd(List<zzjq> list) {
        zzpk.zzbf("Starting mediation.");
        ArrayList arrayList = new ArrayList();
        zzgj zzfB = this.zzsn.zzfB();
        for (zzjq zzjqVar : list) {
            String valueOf = String.valueOf(zzjqVar.zzKo);
            zzpk.zzbg(valueOf.length() != 0 ? "Trying mediation network: ".concat(valueOf) : new String("Trying mediation network: "));
            for (String str : zzjqVar.zzKp) {
                zzgj zzfB2 = this.zzsn.zzfB();
                synchronized (this.zzrJ) {
                    if (this.zzLs) {
                        return new zzjv(-1);
                    }
                    this.zzLy = new zzju(this.mContext, str, this.zzsz, this.zzKY, zzjqVar, this.zzLo.zzRy, this.zzLo.zzvr, this.zzLo.zzvn, this.zzwf, this.zzLa, this.zzLo.zzvF, this.zzLo.zzvK);
                    final zzjv zza = this.zzLy.zza(this.zzLp, this.zzLq);
                    this.zzLu.add(zza);
                    if (zza.zzLh == 0) {
                        zzpk.zzbf("Adapter succeeded.");
                        this.zzsn.zzh("mediation_network_succeed", str);
                        if (!arrayList.isEmpty()) {
                            this.zzsn.zzh("mediation_networks_fail", TextUtils.join(",", arrayList));
                        }
                        this.zzsn.zza(zzfB2, "mls");
                        this.zzsn.zza(zzfB, "ttm");
                        return zza;
                    }
                    arrayList.add(str);
                    this.zzsn.zza(zzfB2, "mlf");
                    if (zza.zzLj != null) {
                        zzpo.zzXC.post(new Runnable(this) { // from class: com.google.android.gms.internal.zzjy.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    zza.zzLj.destroy();
                                } catch (RemoteException e) {
                                    zzpk.zzc("Could not destroy mediation adapter.", e);
                                }
                            }
                        });
                    }
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzsn.zzh("mediation_networks_fail", TextUtils.join(",", arrayList));
        }
        return new zzjv(1);
    }

    @Override // com.google.android.gms.internal.zzjp
    public List<zzjv> zzgU() {
        return this.zzLu;
    }
}
