package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzme;
import com.google.firebase.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
@zzme
/* loaded from: classes.dex */
public class zzd {
    public static Object[] zza(String str, zzec zzecVar, String str2, int i, zzeg zzegVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        if (hashSet.contains("formatString")) {
            if (zzegVar != null) {
                arrayList.add(zzegVar.zzzy);
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzecVar.zzyT));
        }
        if (hashSet.contains(AppLinkData.ARGUMENTS_EXTRAS_KEY)) {
            arrayList.add(zzb(zzecVar.extras));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzecVar.zzyU));
        }
        if (hashSet.contains("keywords")) {
            if (zzecVar.zzyV != null) {
                arrayList.add(zzecVar.zzyV.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzecVar.zzyW));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzecVar.zzyX));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzecVar.zzyY));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzecVar.zzyZ);
        }
        if (hashSet.contains(a.b.LOCATION)) {
            if (zzecVar.zzzb != null) {
                arrayList.add(zzecVar.zzzb.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzecVar.zzzc);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zzb(zzecVar.zzzd));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zzb(zzecVar.zzze));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzecVar.zzzf != null) {
                arrayList.add(zzecVar.zzzf.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzecVar.zzzg);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzecVar.zzzh);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzecVar.zzzi));
        }
        return arrayList.toArray();
    }

    private static String zzb(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? zzb((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }
}
