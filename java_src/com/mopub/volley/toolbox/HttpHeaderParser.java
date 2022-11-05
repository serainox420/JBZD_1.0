package com.mopub.volley.toolbox;

import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
/* loaded from: classes3.dex */
public class HttpHeaderParser {
    public static Cache.Entry parseCacheHeaders(NetworkResponse networkResponse) {
        long j;
        boolean z = false;
        long j2 = 0;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = networkResponse.headers;
        String str = map.get("Date");
        long parseDateAsEpoch = str != null ? parseDateAsEpoch(str) : 0L;
        String str2 = map.get("Cache-Control");
        if (str2 != null) {
            String[] split = str2.split(",");
            long j3 = 0;
            for (String str3 : split) {
                String trim = str3.trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j3 = Long.parseLong(trim.substring(8));
                    } catch (Exception e) {
                    }
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    j3 = 0;
                }
            }
            j = j3;
            z = true;
        } else {
            j = 0;
        }
        String str4 = map.get("Expires");
        long parseDateAsEpoch2 = str4 != null ? parseDateAsEpoch(str4) : 0L;
        String str5 = map.get("ETag");
        if (z) {
            j2 = (1000 * j) + currentTimeMillis;
        } else if (parseDateAsEpoch > 0 && parseDateAsEpoch2 >= parseDateAsEpoch) {
            j2 = (parseDateAsEpoch2 - parseDateAsEpoch) + currentTimeMillis;
        }
        Cache.Entry entry = new Cache.Entry();
        entry.data = networkResponse.data;
        entry.etag = str5;
        entry.softTtl = j2;
        entry.ttl = entry.softTtl;
        entry.serverDate = parseDateAsEpoch;
        entry.responseHeaders = map;
        return entry;
    }

    public static long parseDateAsEpoch(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException e) {
            return 0L;
        }
    }

    public static String parseCharset(Map<String, String> map) {
        String str = map.get("Content-Type");
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return "ISO-8859-1";
    }
}
