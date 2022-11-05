package com.google.android.gms.internal;

import com.google.android.gms.internal.zzb;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
/* loaded from: classes2.dex */
public class zzy {
    public static String zza(Map<String, String> map) {
        return zza(map, "ISO-8859-1");
    }

    public static String zza(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] split = str2.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
            return str;
        }
        return str;
    }

    public static zzb.zza zzb(zzj zzjVar) {
        boolean z;
        boolean z2;
        long j;
        long j2;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zzjVar.zzz;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        String str = map.get("Date");
        if (str != null) {
            j3 = zzg(str);
        }
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            String[] split = str2.split(",");
            z = false;
            long j6 = 0;
            long j7 = 0;
            for (String str3 : split) {
                String trim = str3.trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j7 = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    try {
                        j6 = Long.parseLong(trim.substring(23));
                    } catch (Exception e2) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z = true;
                }
            }
            j4 = j7;
            j5 = j6;
            z2 = true;
        } else {
            z = false;
            z2 = false;
        }
        String str4 = map.get("Expires");
        long zzg = str4 != null ? zzg(str4) : 0L;
        String str5 = map.get("Last-Modified");
        long zzg2 = str5 != null ? zzg(str5) : 0L;
        String str6 = map.get("ETag");
        if (z2) {
            j2 = currentTimeMillis + (1000 * j4);
            j = z ? j2 : (1000 * j5) + j2;
        } else if (j3 <= 0 || zzg < j3) {
            j = 0;
            j2 = 0;
        } else {
            j = (zzg - j3) + currentTimeMillis;
            j2 = j;
        }
        zzb.zza zzaVar = new zzb.zza();
        zzaVar.data = zzjVar.data;
        zzaVar.zza = str6;
        zzaVar.zze = j2;
        zzaVar.zzd = j;
        zzaVar.zzb = j3;
        zzaVar.zzc = zzg2;
        zzaVar.zzf = map;
        return zzaVar;
    }

    public static long zzg(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0L;
        }
    }
}
