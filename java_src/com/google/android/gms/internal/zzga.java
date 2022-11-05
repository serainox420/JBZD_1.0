package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public class zzga {
    private final Collection<zzfz> zzAZ = new ArrayList();
    private final Collection<zzfz<String>> zzBa = new ArrayList();
    private final Collection<zzfz<String>> zzBb = new ArrayList();

    public void zza(zzfz zzfzVar) {
        this.zzAZ.add(zzfzVar);
    }

    public void zzb(zzfz<String> zzfzVar) {
        this.zzBa.add(zzfzVar);
    }

    public void zzc(zzfz<String> zzfzVar) {
        this.zzBb.add(zzfzVar);
    }

    public List<String> zzfs() {
        ArrayList arrayList = new ArrayList();
        for (zzfz<String> zzfzVar : this.zzBa) {
            String str = zzfzVar.get();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public List<String> zzft() {
        List<String> zzfs = zzfs();
        for (zzfz<String> zzfzVar : this.zzBb) {
            String str = zzfzVar.get();
            if (str != null) {
                zzfs.add(str);
            }
        }
        return zzfs;
    }
}
