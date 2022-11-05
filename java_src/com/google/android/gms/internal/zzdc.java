package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzdc {
    private int zzxE;
    private final Object zzrJ = new Object();
    private List<zzdb> zzxF = new LinkedList();

    public boolean zza(zzdb zzdbVar) {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzxF.contains(zzdbVar);
        }
        return z;
    }

    public boolean zzb(zzdb zzdbVar) {
        synchronized (this.zzrJ) {
            Iterator<zzdb> it = this.zzxF.iterator();
            while (it.hasNext()) {
                zzdb next = it.next();
                if (!zzgd.zzCi.get().booleanValue() || com.google.android.gms.ads.internal.zzw.zzcQ().zzkg()) {
                    if (zzgd.zzCk.get().booleanValue() && !com.google.android.gms.ads.internal.zzw.zzcQ().zzkh() && zzdbVar != next && next.zzec().equals(zzdbVar.zzec())) {
                        it.remove();
                        return true;
                    }
                } else if (zzdbVar != next && next.zzea().equals(zzdbVar.zzea())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public void zzc(zzdb zzdbVar) {
        synchronized (this.zzrJ) {
            if (this.zzxF.size() >= 10) {
                zzpk.zzbf(new StringBuilder(41).append("Queue is full, current size = ").append(this.zzxF.size()).toString());
                this.zzxF.remove(0);
            }
            int i = this.zzxE;
            this.zzxE = i + 1;
            zzdbVar.zzn(i);
            this.zzxF.add(zzdbVar);
        }
    }

    public zzdb zzei() {
        int i;
        zzdb zzdbVar;
        int i2;
        zzdb zzdbVar2 = null;
        int i3 = 0;
        synchronized (this.zzrJ) {
            if (this.zzxF.size() == 0) {
                zzpk.zzbf("Queue empty");
                return null;
            } else if (this.zzxF.size() < 2) {
                zzdb zzdbVar3 = this.zzxF.get(0);
                zzdbVar3.zzed();
                return zzdbVar3;
            } else {
                int i4 = Integer.MIN_VALUE;
                int i5 = 0;
                for (zzdb zzdbVar4 : this.zzxF) {
                    int score = zzdbVar4.getScore();
                    if (score > i4) {
                        i2 = score;
                        zzdbVar = zzdbVar4;
                        i = i5;
                    } else {
                        i = i3;
                        zzdbVar = zzdbVar2;
                        i2 = i4;
                    }
                    i5++;
                    i4 = i2;
                    zzdbVar2 = zzdbVar;
                    i3 = i;
                }
                this.zzxF.remove(i3);
                return zzdbVar2;
            }
        }
    }
}
