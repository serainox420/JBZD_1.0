package com.google.android.gms.awareness.fence;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaep;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class AwarenessFence extends com.google.android.gms.common.internal.safeparcel.zza {
    public static AwarenessFence and(Collection<AwarenessFence> collection) {
        zzac.zzax(collection != null && !collection.isEmpty());
        return zzaep.zzg(zzd(collection));
    }

    public static AwarenessFence and(AwarenessFence... awarenessFenceArr) {
        zzac.zzax(awarenessFenceArr != null && awarenessFenceArr.length > 0);
        return zzaep.zzg(zza(awarenessFenceArr));
    }

    public static AwarenessFence not(AwarenessFence awarenessFence) {
        zzac.zzw(awarenessFence);
        return zzaep.zza((zzaep) awarenessFence);
    }

    public static AwarenessFence or(Collection<AwarenessFence> collection) {
        zzac.zzax(collection != null && !collection.isEmpty());
        return zzaep.zzh(zzd(collection));
    }

    public static AwarenessFence or(AwarenessFence... awarenessFenceArr) {
        zzac.zzax(awarenessFenceArr != null && awarenessFenceArr.length > 0);
        return zzaep.zzh(zza(awarenessFenceArr));
    }

    private static ArrayList<zzaep> zza(AwarenessFence[] awarenessFenceArr) {
        ArrayList<zzaep> arrayList = new ArrayList<>(awarenessFenceArr.length);
        for (AwarenessFence awarenessFence : awarenessFenceArr) {
            arrayList.add((zzaep) awarenessFence);
        }
        return arrayList;
    }

    private static ArrayList<zzaep> zzd(Collection<AwarenessFence> collection) {
        ArrayList<zzaep> arrayList = new ArrayList<>(collection.size());
        Iterator<AwarenessFence> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((zzaep) it.next());
        }
        return arrayList;
    }
}
