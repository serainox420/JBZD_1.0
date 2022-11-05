package com.facebook.ads.internal;

import org.json.JSONArray;
/* loaded from: classes.dex */
public enum d {
    APP_AD(0),
    LINK_AD(1),
    APP_AD_V2(2),
    LINK_AD_V2(3),
    APP_ENGAGEMENT_AD(4),
    AD_CHOICES(5),
    JS_TRIGGER(6),
    JS_TRIGGER_NO_AUTO_IMP_LOGGING(7),
    VIDEO_AD(8),
    INLINE_VIDEO_AD(9),
    BANNER_TO_INTERSTITIAL(10),
    NATIVE_CLOSE_BUTTON(11),
    UNIFIED_LOGGING(16),
    HTTP_LINKS(17);
    
    private static final String q;
    private final int p;
    public static final d[] o = {LINK_AD_V2, APP_ENGAGEMENT_AD, AD_CHOICES, JS_TRIGGER_NO_AUTO_IMP_LOGGING, NATIVE_CLOSE_BUTTON, UNIFIED_LOGGING, HTTP_LINKS};

    static {
        JSONArray jSONArray = new JSONArray();
        for (d dVar : o) {
            jSONArray.put(dVar.a());
        }
        q = jSONArray.toString();
    }

    d(int i) {
        this.p = i;
    }

    public static String b() {
        return q;
    }

    public int a() {
        return this.p;
    }

    @Override // java.lang.Enum
    public String toString() {
        return String.valueOf(this.p);
    }
}
