package com.google.android.gms.analytics;

import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.zzac;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class zzg<T extends zzg> {
    private final zzh zzace;
    protected final zze zzacf;
    private final List<Object> zzacg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzg(zzh zzhVar, com.google.android.gms.common.util.zze zzeVar) {
        zzac.zzw(zzhVar);
        this.zzace = zzhVar;
        this.zzacg = new ArrayList();
        zze zzeVar2 = new zze(this, zzeVar);
        zzeVar2.zzmM();
        this.zzacf = zzeVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(zze zzeVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzd(zze zzeVar) {
        Iterator<Object> it = this.zzacg.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzh zzmK() {
        return this.zzace;
    }

    public zze zzmN() {
        return this.zzacf;
    }

    public List<zzi> zzmO() {
        return this.zzacf.zzmE();
    }

    public zze zzmo() {
        zze zzmC = this.zzacf.zzmC();
        zzd(zzmC);
        return zzmC;
    }
}
