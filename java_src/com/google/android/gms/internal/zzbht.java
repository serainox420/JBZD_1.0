package com.google.android.gms.internal;

import com.facebook.ads.AudienceNetworkActivity;
import com.millennialmedia.NativeAd;
import com.openx.view.mraid.JSInterface;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbht extends zzbcs {
    private static final Set<String> zzbLH = new HashSet(Arrays.asList("GET", "HEAD", "POST", "PUT"));
    private final zzbbm zzbLG;

    public zzbht(zzbbm zzbbmVar) {
        this.zzbLG = zzbbmVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        HashMap hashMap;
        String str = null;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiz);
        zzbit<?> zzid = zzbitVarArr[0].zzid("url");
        com.google.android.gms.common.internal.zzac.zzax(zzid instanceof zzbjb);
        String str2 = (String) ((zzbjb) zzid).zzTi();
        zzbit<?> zzid2 = zzbitVarArr[0].zzid(JSInterface.JSON_METHOD);
        if (zzid2 == zzbix.zzbMS) {
            zzid2 = new zzbjb("GET");
        }
        com.google.android.gms.common.internal.zzac.zzax(zzid2 instanceof zzbjb);
        String str3 = (String) ((zzbjb) zzid2).zzTi();
        com.google.android.gms.common.internal.zzac.zzax(zzbLH.contains(str3));
        zzbit<?> zzid3 = zzbitVarArr[0].zzid(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA);
        com.google.android.gms.common.internal.zzac.zzax(zzid3 == zzbix.zzbMS || zzid3 == zzbix.zzbMR || (zzid3 instanceof zzbjb));
        String str4 = (zzid3 == zzbix.zzbMS || zzid3 == zzbix.zzbMR) ? null : (String) ((zzbjb) zzid3).zzTi();
        zzbit<?> zzid4 = zzbitVarArr[0].zzid("headers");
        com.google.android.gms.common.internal.zzac.zzax(zzid4 == zzbix.zzbMS || (zzid4 instanceof zzbiz));
        HashMap hashMap2 = new HashMap();
        if (zzid4 == zzbix.zzbMS) {
            hashMap = null;
        } else {
            for (Map.Entry<String, zzbit<?>> entry : ((zzbiz) zzid4).zzTi().entrySet()) {
                String key = entry.getKey();
                zzbit<?> value = entry.getValue();
                if (!(value instanceof zzbjb)) {
                    zzbbu.zzbh(String.format("Ignore the non-string value of header key %s.", key));
                } else {
                    hashMap2.put(key, (String) ((zzbjb) value).zzTi());
                }
            }
            hashMap = hashMap2;
        }
        zzbit<?> zzid5 = zzbitVarArr[0].zzid(NativeAd.COMPONENT_ID_BODY);
        com.google.android.gms.common.internal.zzac.zzax(zzid5 == zzbix.zzbMS || (zzid5 instanceof zzbjb));
        if (zzid5 != zzbix.zzbMS) {
            str = (String) ((zzbjb) zzid5).zzTi();
        }
        if ((str3.equals("GET") || str3.equals("HEAD")) && str != null) {
            zzbbu.zzbh(String.format("Body of %s hit will be ignored: %s.", str3, str));
        }
        this.zzbLG.zza(str2, str3, str4, hashMap, str);
        zzbbu.v(String.format("QueueRequest:\n  url = %s,\n  method = %s,\n  uniqueId = %s,\n  headers = %s,\n  body = %s", str2, str3, str4, hashMap, str));
        return zzbix.zzbMS;
    }
}
