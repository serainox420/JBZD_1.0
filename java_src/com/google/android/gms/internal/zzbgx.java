package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbgx extends zzbcs {
    private String zza(String str, int i, Set<Character> set) {
        switch (i) {
            case 1:
                try {
                    return URLEncoder.encode(str, "UTF-8").replaceAll("\\+", "%20");
                } catch (UnsupportedEncodingException e) {
                    return str;
                }
            case 2:
                String replace = str.replace("\\", "\\\\");
                Iterator<Character> it = set.iterator();
                while (true) {
                    String str2 = replace;
                    if (!it.hasNext()) {
                        return str2;
                    }
                    String ch = it.next().toString();
                    String valueOf = String.valueOf(ch);
                    replace = str2.replace(ch, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
            default:
                return str;
        }
    }

    private void zza(StringBuilder sb, String str, int i, Set<Character> set) {
        sb.append(zza(str, i, set));
    }

    private void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i = 2;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        zzbix zzbixVar = zzbitVarArr.length > 1 ? zzbitVarArr[1] : zzbix.zzbMS;
        String str = "";
        if (zzbitVarArr.length > 2) {
            str = zzbitVarArr[2] == zzbix.zzbMS ? "" : zzbcr.zzd(zzbitVarArr[2]);
        }
        String str2 = "=";
        if (zzbitVarArr.length > 3) {
            str2 = zzbitVarArr[3] == zzbix.zzbMS ? "=" : zzbcr.zzd(zzbitVarArr[3]);
        }
        HashSet hashSet = null;
        if (zzbixVar != zzbix.zzbMS) {
            com.google.android.gms.common.internal.zzac.zzax(zzbixVar instanceof zzbjb);
            if ("url".equals(zzbixVar.zzTi())) {
                i = 1;
            } else if (!"backslash".equals(zzbixVar.zzTi())) {
                return new zzbjb("");
            } else {
                HashSet hashSet2 = new HashSet();
                zza(hashSet2, str);
                zza(hashSet2, str2);
                hashSet2.remove('\\');
                hashSet = hashSet2;
            }
        } else {
            i = 0;
        }
        StringBuilder sb = new StringBuilder();
        if (zzbitVar instanceof zzbiy) {
            for (zzbit<?> zzbitVar2 : ((zzbiy) zzbitVar).zzTi()) {
                if (!z) {
                    sb.append(str);
                }
                zza(sb, zzbcr.zzd(zzbitVar2), i, hashSet);
                z = false;
            }
        } else if (zzbitVar instanceof zzbiz) {
            Map<String, zzbit<?>> zzTi = ((zzbiz) zzbitVar).zzTi();
            boolean z2 = true;
            for (String str3 : zzTi.keySet()) {
                if (!z2) {
                    sb.append(str);
                }
                String zzd = zzbcr.zzd(zzTi.get(str3));
                zza(sb, str3, i, hashSet);
                sb.append(str2);
                zza(sb, zzd, i, hashSet);
                z2 = false;
            }
        } else {
            zza(sb, zzbcr.zzd(zzbitVar), i, hashSet);
        }
        return new zzbjb(sb.toString());
    }
}
