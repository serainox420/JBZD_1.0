package com.flurry.sdk;

import android.location.Location;
import java.util.Map;
/* loaded from: classes2.dex */
public class il extends kr {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2840a = il.class.getSimpleName();

    public final String a(String str, Map<String, String> map) {
        String replace;
        Location g;
        Location g2;
        String a2 = a(str);
        while (a2 != null) {
            if (a("timestamp_epoch_millis", a2)) {
                String valueOf = String.valueOf(System.currentTimeMillis());
                km.a(3, f2840a, "Replacing param timestamp_epoch_millis with: " + valueOf);
                replace = str.replace(a2, ly.c(valueOf));
            } else if (a("session_duration_millis", a2)) {
                jk.a();
                String l = Long.toString(jk.e());
                km.a(3, f2840a, "Replacing param session_duration_millis with: " + l);
                replace = str.replace(a2, ly.c(l));
            } else if (a("fg_timespent_millis", a2)) {
                jk.a();
                String l2 = Long.toString(jk.e());
                km.a(3, f2840a, "Replacing param fg_timespent_millis with: " + l2);
                replace = str.replace(a2, ly.c(l2));
            } else if (a("install_referrer", a2)) {
                String b = new hs().b();
                if (b == null) {
                    b = "";
                }
                km.a(3, f2840a, "Replacing param install_referrer with: " + b);
                replace = str.replace(a2, ly.c(b));
            } else if (a("geo_latitude", a2)) {
                String str2 = "";
                if (jp.a().g() != null) {
                    str2 = str2 + ly.a(g2.getLatitude(), jp.d());
                }
                km.a(3, f2840a, "Replacing param geo_latitude with: " + str2);
                replace = str.replace(a2, ly.c(str2));
            } else if (a("geo_longitude", a2)) {
                String str3 = "";
                if (jp.a().g() != null) {
                    str3 = str3 + ly.a(g.getLongitude(), jp.d());
                }
                km.a(3, f2840a, "Replacing param geo_longitude with: " + str3);
                replace = str.replace(a2, ly.c(str3));
            } else if (a("publisher_user_id", a2)) {
                String str4 = (String) lp.a().a("UserId");
                km.a(3, f2840a, "Replacing param publisher_user_id with: " + str4);
                replace = str.replace(a2, ly.c(str4));
            } else if (a("event_name", a2)) {
                if (map.containsKey("event_name")) {
                    km.a(3, f2840a, "Replacing param event_name with: " + map.get("event_name"));
                    replace = str.replace(a2, ly.c(map.get("event_name")));
                } else {
                    km.a(3, f2840a, "Replacing param event_name with empty string");
                    replace = str.replace(a2, "");
                }
            } else if (a("event_time_millis", a2)) {
                if (map.containsKey("event_time_millis")) {
                    km.a(3, f2840a, "Replacing param event_time_millis with: " + map.get("event_time_millis"));
                    replace = str.replace(a2, ly.c(map.get("event_time_millis")));
                } else {
                    km.a(3, f2840a, "Replacing param event_time_millis with empty string");
                    replace = str.replace(a2, "");
                }
            } else {
                km.a(3, f2840a, "Unknown param: " + a2);
                replace = str.replace(a2, "");
            }
            a2 = a(replace);
            str = replace;
        }
        return str;
    }
}
