package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.Utility;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzsz {
    private final Map<String, String> zzFP;
    private final List<zzsl> zzagg;
    private final long zzagh;
    private final long zzagi;
    private final int zzagj;
    private final boolean zzagk;
    private final String zzagl;

    public zzsz(zzrz zzrzVar, Map<String, String> map, long j, boolean z) {
        this(zzrzVar, map, j, z, 0L, 0, null);
    }

    public zzsz(zzrz zzrzVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzrzVar, map, j, z, j2, i, null);
    }

    public zzsz(zzrz zzrzVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzsl> list) {
        String zza;
        String zza2;
        com.google.android.gms.common.internal.zzac.zzw(zzrzVar);
        com.google.android.gms.common.internal.zzac.zzw(map);
        this.zzagi = j;
        this.zzagk = z;
        this.zzagh = j2;
        this.zzagj = i;
        this.zzagg = list != null ? list : Collections.emptyList();
        this.zzagl = zzs(list);
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (zzl(entry.getKey()) && (zza2 = zza(zzrzVar, entry.getKey())) != null) {
                hashMap.put(zza2, zzb(zzrzVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!zzl(entry2.getKey()) && (zza = zza(zzrzVar, entry2.getKey())) != null) {
                hashMap.put(zza, zzb(zzrzVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.zzagl)) {
            zztm.zzc(hashMap, "_v", this.zzagl);
            if (this.zzagl.equals("ma4.0.0") || this.zzagl.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.zzFP = Collections.unmodifiableMap(hashMap);
    }

    public static zzsz zza(zzrz zzrzVar, zzsz zzszVar, Map<String, String> map) {
        return new zzsz(zzrzVar, map, zzszVar.zzpQ(), zzszVar.zzpS(), zzszVar.zzpP(), zzszVar.zzpO(), zzszVar.zzpR());
    }

    private static String zza(zzrz zzrzVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        if (obj2.startsWith("&")) {
            obj2 = obj2.substring(1);
        }
        int length = obj2.length();
        if (length > 256) {
            obj2 = obj2.substring(0, 256);
            zzrzVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), obj2);
        }
        if (!TextUtils.isEmpty(obj2)) {
            return obj2;
        }
        return null;
    }

    private static String zzb(zzrz zzrzVar, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        if (length > 8192) {
            String substring = obj2.substring(0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            zzrzVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), substring);
            return substring;
        }
        return obj2;
    }

    private static boolean zzl(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private String zzs(String str, String str2) {
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzb(!str.startsWith("&"), "Short param name required");
        String str3 = this.zzFP.get(str);
        return str3 != null ? str3 : str2;
    }

    private static String zzs(List<zzsl> list) {
        String str;
        if (list != null) {
            for (zzsl zzslVar : list) {
                if ("appendVersion".equals(zzslVar.getId())) {
                    str = zzslVar.getValue();
                    break;
                }
            }
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ht=").append(this.zzagi);
        if (this.zzagh != 0) {
            stringBuffer.append(", dbId=").append(this.zzagh);
        }
        if (this.zzagj != 0) {
            stringBuffer.append(", appUID=").append(this.zzagj);
        }
        ArrayList<String> arrayList = new ArrayList(this.zzFP.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            stringBuffer.append(", ");
            stringBuffer.append(str);
            stringBuffer.append("=");
            stringBuffer.append(this.zzFP.get(str));
        }
        return stringBuffer.toString();
    }

    public Map<String, String> zzfE() {
        return this.zzFP;
    }

    public int zzpO() {
        return this.zzagj;
    }

    public long zzpP() {
        return this.zzagh;
    }

    public long zzpQ() {
        return this.zzagi;
    }

    public List<zzsl> zzpR() {
        return this.zzagg;
    }

    public boolean zzpS() {
        return this.zzagk;
    }

    public long zzpT() {
        return zztm.zzcf(zzs("_s", AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    public String zzpU() {
        return zzs("_m", "");
    }
}
