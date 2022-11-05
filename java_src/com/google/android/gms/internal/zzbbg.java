package com.google.android.gms.internal;

import android.content.Context;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbbg implements zzbbm {
    private static zzbbg zzbJw;
    private zzbca zzbJx;
    private zzbbn zzbJy;
    private static final Object zzbEI = new Object();
    private static final Set<String> zzbJz = new HashSet(Arrays.asList("GET", "HEAD", "POST", "PUT"));

    private zzbbg(Context context) {
        this(zzbbo.zzcf(context), new zzbce());
    }

    zzbbg(zzbbn zzbbnVar, zzbca zzbcaVar) {
        this.zzbJy = zzbbnVar;
        this.zzbJx = zzbcaVar;
    }

    public static zzbbm zzce(Context context) {
        zzbbg zzbbgVar;
        synchronized (zzbEI) {
            if (zzbJw == null) {
                zzbJw = new zzbbg(context);
            }
            zzbbgVar = zzbJw;
        }
        return zzbbgVar;
    }

    @Override // com.google.android.gms.internal.zzbbm
    public void dispatch() {
        zzbcg.zzSr().dispatch();
    }

    @Override // com.google.android.gms.internal.zzbbm
    public boolean zza(String str, String str2, String str3, Map<String, String> map, String str4) {
        if (str2 != null && !zzbJz.contains(str2)) {
            zzbbu.zzbh(String.format("Unsupport http method %s. Drop the hit.", str2));
            return false;
        } else if (zzbbz.zzSg().isPreview() || this.zzbJx.zzpV()) {
            this.zzbJy.zzb(str, str2, str3, map, str4);
            return true;
        } else {
            zzbbu.zzbh("Too many hits sent too quickly (rate throttled).");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzbbm
    public boolean zzak(String str, String str2) {
        return zza(str, null, str2, null, null);
    }

    @Override // com.google.android.gms.internal.zzbbm
    public boolean zzhf(String str) {
        return zza(str, null, null, null, null);
    }
}
