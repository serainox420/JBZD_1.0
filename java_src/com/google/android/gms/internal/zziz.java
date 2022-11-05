package com.google.android.gms.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Base64;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzjb;
import com.google.android.gms.internal.zzni;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@zzme
/* loaded from: classes.dex */
public class zziz {
    private zziw zzJc;
    private final Map<zzja, zzjb> zzyE = new HashMap();
    private final LinkedList<zzja> zzJb = new LinkedList<>();

    private static void zza(String str, zzja zzjaVar) {
        if (zzpk.zzak(2)) {
            zzpk.v(String.format(str, zzjaVar));
        }
    }

    private String[] zzai(String str) {
        try {
            String[] split = str.split("\u0000");
            for (int i = 0; i < split.length; i++) {
                split[i] = new String(Base64.decode(split[i], 0), "UTF-8");
            }
            return split;
        } catch (UnsupportedEncodingException e) {
            return new String[0];
        }
    }

    private boolean zzaj(String str) {
        try {
            return Pattern.matches(zzgd.zzDj.get(), str);
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "InterstitialAdPool.isExcludedAdUnit");
            return false;
        }
    }

    static String zzak(String str) {
        try {
            Matcher matcher = Pattern.compile("([^/]+/[0-9]+).*").matcher(str);
            return matcher.matches() ? matcher.group(1) : str;
        } catch (RuntimeException e) {
            return str;
        }
    }

    private static void zzc(Bundle bundle, String str) {
        String[] split = str.split("/", 2);
        if (split.length == 0) {
            return;
        }
        String str2 = split[0];
        if (split.length == 1) {
            bundle.remove(str2);
            return;
        }
        Bundle bundle2 = bundle.getBundle(str2);
        if (bundle2 == null) {
            return;
        }
        zzc(bundle2, split[1]);
    }

    private static void zzc(zzec zzecVar, String str) {
        Bundle bundle = zzecVar.zzzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            bundle.putBoolean(str, true);
        }
        zzecVar.extras.putBoolean(str, true);
    }

    private String zzgw() {
        try {
            StringBuilder sb = new StringBuilder();
            Iterator<zzja> it = this.zzJb.iterator();
            while (it.hasNext()) {
                sb.append(Base64.encodeToString(it.next().toString().getBytes("UTF-8"), 0));
                if (it.hasNext()) {
                    sb.append("\u0000");
                }
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Set<String> zzj(zzec zzecVar) {
        HashSet hashSet = new HashSet();
        hashSet.addAll(zzecVar.extras.keySet());
        Bundle bundle = zzecVar.zzzd.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle != null) {
            hashSet.addAll(bundle.keySet());
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzec zzk(zzec zzecVar) {
        zzec zzn = zzn(zzecVar);
        zzc(zzn, "_skipMediation");
        return zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzl(zzec zzecVar) {
        return zzj(zzecVar).contains("_skipMediation");
    }

    static zzec zzm(zzec zzecVar) {
        String[] split;
        zzec zzn = zzn(zzecVar);
        for (String str : zzgd.zzDf.get().split(",")) {
            zzc(zzn.zzzd, str);
            if (str.startsWith("com.google.ads.mediation.admob.AdMobAdapter/")) {
                zzc(zzn.extras, str.replaceFirst("com.google.ads.mediation.admob.AdMobAdapter/", ""));
            }
        }
        return zzn;
    }

    static zzec zzn(zzec zzecVar) {
        Parcel obtain = Parcel.obtain();
        zzecVar.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        zzec createFromParcel = zzec.CREATOR.createFromParcel(obtain);
        obtain.recycle();
        if (zzgd.zzCX.get().booleanValue()) {
            zzec.zzi(createFromParcel);
        }
        return createFromParcel;
    }

    void flush() {
        while (this.zzJb.size() > 0) {
            zzja remove = this.zzJb.remove();
            zzjb zzjbVar = this.zzyE.get(remove);
            zza("Flushing interstitial queue for %s.", remove);
            while (zzjbVar.size() > 0) {
                zzjbVar.zzo(null).zzJh.zzcm();
            }
            this.zzyE.remove(remove);
        }
    }

    void restore() {
        if (this.zzJc == null) {
            return;
        }
        SharedPreferences sharedPreferences = this.zzJc.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0);
        flush();
        try {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                if (!entry.getKey().equals("PoolKeys")) {
                    zzje zzal = zzje.zzal((String) entry.getValue());
                    zzja zzjaVar = new zzja(zzal.zzum, zzal.zzts, zzal.zzJf);
                    if (!this.zzyE.containsKey(zzjaVar)) {
                        this.zzyE.put(zzjaVar, new zzjb(zzal.zzum, zzal.zzts, zzal.zzJf));
                        hashMap.put(zzjaVar.toString(), zzjaVar);
                        zza("Restored interstitial queue for %s.", zzjaVar);
                    }
                }
            }
            for (String str : zzai(sharedPreferences.getString("PoolKeys", ""))) {
                zzja zzjaVar2 = (zzja) hashMap.get(str);
                if (this.zzyE.containsKey(zzjaVar2)) {
                    this.zzJb.add(zzjaVar2);
                }
            }
        } catch (IOException | RuntimeException e) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "InterstitialAdPool.restore");
            zzpk.zzc("Malformed preferences value for InterstitialAdPool.", e);
            this.zzyE.clear();
            this.zzJb.clear();
        }
    }

    void save() {
        if (this.zzJc == null) {
            return;
        }
        SharedPreferences.Editor edit = this.zzJc.getApplicationContext().getSharedPreferences("com.google.android.gms.ads.internal.interstitial.InterstitialAdPool", 0).edit();
        edit.clear();
        for (Map.Entry<zzja, zzjb> entry : this.zzyE.entrySet()) {
            zzja key = entry.getKey();
            zzjb value = entry.getValue();
            if (value.zzgB()) {
                edit.putString(key.toString(), new zzje(value).zzgL());
                zza("Saved interstitial queue for %s.", key);
            }
        }
        edit.putString("PoolKeys", zzgw());
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjb.zza zza(zzec zzecVar, String str) {
        zzjb zzjbVar;
        if (zzaj(str)) {
            return null;
        }
        int i = new zzni.zza(this.zzJc.getApplicationContext()).zzjC().zzUQ;
        zzec zzm = zzm(zzecVar);
        String zzak = zzak(str);
        zzja zzjaVar = new zzja(zzm, zzak, i);
        zzjb zzjbVar2 = this.zzyE.get(zzjaVar);
        if (zzjbVar2 == null) {
            zza("Interstitial pool created at %s.", zzjaVar);
            zzjb zzjbVar3 = new zzjb(zzm, zzak, i);
            this.zzyE.put(zzjaVar, zzjbVar3);
            zzjbVar = zzjbVar3;
        } else {
            zzjbVar = zzjbVar2;
        }
        this.zzJb.remove(zzjaVar);
        this.zzJb.add(zzjaVar);
        zzjbVar.zzgA();
        while (this.zzJb.size() > zzgd.zzDg.get().intValue()) {
            zzja remove = this.zzJb.remove();
            zzjb zzjbVar4 = this.zzyE.get(remove);
            zza("Evicting interstitial queue for %s.", remove);
            while (zzjbVar4.size() > 0) {
                zzjb.zza zzo = zzjbVar4.zzo(null);
                if (zzo.zzJl) {
                    zzjc.zzgC().zzgE();
                }
                zzo.zzJh.zzcm();
            }
            this.zzyE.remove(remove);
        }
        while (zzjbVar.size() > 0) {
            zzjb.zza zzo2 = zzjbVar.zzo(zzm);
            if (!zzo2.zzJl || com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis() - zzo2.zzJk <= 1000 * zzgd.zzDi.get().intValue()) {
                String str2 = zzo2.zzJi != null ? " (inline) " : MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
                zza(new StringBuilder(String.valueOf(str2).length() + 34).append("Pooled interstitial").append(str2).append("returned at %s.").toString(), zzjaVar);
                return zzo2;
            }
            zza("Expired interstitial at %s.", zzjaVar);
            zzjc.zzgC().zzgD();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zziw zziwVar) {
        if (this.zzJc == null) {
            this.zzJc = zziwVar.zzgu();
            restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzec zzecVar, String str) {
        if (this.zzJc == null) {
            return;
        }
        int i = new zzni.zza(this.zzJc.getApplicationContext()).zzjC().zzUQ;
        zzec zzm = zzm(zzecVar);
        String zzak = zzak(str);
        zzja zzjaVar = new zzja(zzm, zzak, i);
        zzjb zzjbVar = this.zzyE.get(zzjaVar);
        if (zzjbVar == null) {
            zza("Interstitial pool created at %s.", zzjaVar);
            zzjbVar = new zzjb(zzm, zzak, i);
            this.zzyE.put(zzjaVar, zzjbVar);
        }
        zzjbVar.zza(this.zzJc, zzecVar);
        zzjbVar.zzgA();
        zza("Inline entry added to the queue at %s.", zzjaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzgv() {
        int size;
        int zzgy;
        if (this.zzJc == null) {
            return;
        }
        for (Map.Entry<zzja, zzjb> entry : this.zzyE.entrySet()) {
            zzja key = entry.getKey();
            zzjb value = entry.getValue();
            if (zzpk.zzak(2) && (zzgy = value.zzgy()) < (size = value.size())) {
                zzpk.v(String.format("Loading %s/%s pooled interstitials for %s.", Integer.valueOf(size - zzgy), Integer.valueOf(size), key));
            }
            int zzgz = value.zzgz() + 0;
            while (value.size() < zzgd.zzDh.get().intValue()) {
                zza("Pooling and loading one new interstitial for %s.", key);
                if (value.zzb(this.zzJc)) {
                    zzgz++;
                }
            }
            zzjc.zzgC().zzE(zzgz);
        }
        save();
    }
}
