package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.internal.NativeProtocol;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzgl {
    private String zzFQ;
    private zzgj zzFR;
    private zzgl zzFS;
    boolean zzFx;
    private final List<zzgj> zzFO = new LinkedList();
    private final Map<String, String> zzFP = new LinkedHashMap();
    private final Object zzrJ = new Object();

    public zzgl(boolean z, String str, String str2) {
        this.zzFx = z;
        this.zzFP.put(NativeProtocol.WEB_DIALOG_ACTION, str);
        this.zzFP.put("ad_format", str2);
    }

    public void zzX(String str) {
        if (!this.zzFx) {
            return;
        }
        synchronized (this.zzrJ) {
            this.zzFQ = str;
        }
    }

    public boolean zza(zzgj zzgjVar, long j, String... strArr) {
        synchronized (this.zzrJ) {
            for (String str : strArr) {
                this.zzFO.add(new zzgj(j, str, zzgjVar));
            }
        }
        return true;
    }

    public boolean zza(zzgj zzgjVar, String... strArr) {
        if (!this.zzFx || zzgjVar == null) {
            return false;
        }
        return zza(zzgjVar, com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime(), strArr);
    }

    public zzgj zzc(long j) {
        if (!this.zzFx) {
            return null;
        }
        return new zzgj(j, null, null);
    }

    public void zzc(zzgl zzglVar) {
        synchronized (this.zzrJ) {
            this.zzFS = zzglVar;
        }
    }

    public zzgj zzfB() {
        return zzc(com.google.android.gms.ads.internal.zzw.zzcS().elapsedRealtime());
    }

    public void zzfC() {
        synchronized (this.zzrJ) {
            this.zzFR = zzfB();
        }
    }

    public String zzfD() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.zzrJ) {
            for (zzgj zzgjVar : this.zzFO) {
                long time = zzgjVar.getTime();
                String zzfy = zzgjVar.zzfy();
                zzgj zzfz = zzgjVar.zzfz();
                if (zzfz != null && time > 0) {
                    sb2.append(zzfy).append('.').append(time - zzfz.getTime()).append(',');
                }
            }
            this.zzFO.clear();
            if (!TextUtils.isEmpty(this.zzFQ)) {
                sb2.append(this.zzFQ);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> zzfE() {
        Map<String, String> zza;
        synchronized (this.zzrJ) {
            zzgf zzkk = com.google.android.gms.ads.internal.zzw.zzcQ().zzkk();
            zza = (zzkk == null || this.zzFS == null) ? this.zzFP : zzkk.zza(this.zzFP, this.zzFS.zzfE());
        }
        return zza;
    }

    public zzgj zzfF() {
        zzgj zzgjVar;
        synchronized (this.zzrJ) {
            zzgjVar = this.zzFR;
        }
        return zzgjVar;
    }

    public void zzh(String str, String str2) {
        zzgf zzkk;
        if (!this.zzFx || TextUtils.isEmpty(str2) || (zzkk = com.google.android.gms.ads.internal.zzw.zzcQ().zzkk()) == null) {
            return;
        }
        synchronized (this.zzrJ) {
            zzkk.zzV(str).zza(this.zzFP, str, str2);
        }
    }
}
