package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzir implements Iterable<zziq> {
    private final List<zziq> zzIz = new LinkedList();

    private zziq zzg(zzqw zzqwVar) {
        Iterator<zziq> it = com.google.android.gms.ads.internal.zzw.zzdj().iterator();
        while (it.hasNext()) {
            zziq next = it.next();
            if (next.zzIs == zzqwVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<zziq> iterator() {
        return this.zzIz.iterator();
    }

    public void zza(zziq zziqVar) {
        this.zzIz.add(zziqVar);
    }

    public void zzb(zziq zziqVar) {
        this.zzIz.remove(zziqVar);
    }

    public boolean zze(zzqw zzqwVar) {
        zziq zzg = zzg(zzqwVar);
        if (zzg != null) {
            zzg.zzIw.abort();
            return true;
        }
        return false;
    }

    public boolean zzf(zzqw zzqwVar) {
        return zzg(zzqwVar) != null;
    }

    public int zzgr() {
        return this.zzIz.size();
    }
}
