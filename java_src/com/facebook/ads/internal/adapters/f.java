package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public enum f {
    ANBANNER(h.class, e.AN, AdPlacementType.BANNER),
    ANINTERSTITIAL(j.class, e.AN, AdPlacementType.INTERSTITIAL),
    ADMOBNATIVE(c.class, e.ADMOB, AdPlacementType.NATIVE),
    ANNATIVE(l.class, e.AN, AdPlacementType.NATIVE),
    ANINSTREAMVIDEO(i.class, e.AN, AdPlacementType.INSTREAM),
    ANREWARDEDVIDEO(m.class, e.AN, AdPlacementType.REWARDED_VIDEO),
    INMOBINATIVE(q.class, e.INMOBI, AdPlacementType.NATIVE),
    YAHOONATIVE(n.class, e.YAHOO, AdPlacementType.NATIVE);
    
    private static List<f> m;
    public Class<?> i;
    public String j;
    public e k;
    public AdPlacementType l;

    f(Class cls, e eVar, AdPlacementType adPlacementType) {
        this.i = cls;
        this.k = eVar;
        this.l = adPlacementType;
    }

    public static List<f> a() {
        if (m == null) {
            synchronized (f.class) {
                m = new ArrayList();
                m.add(ANBANNER);
                m.add(ANINTERSTITIAL);
                m.add(ANNATIVE);
                m.add(ANINSTREAMVIDEO);
                m.add(ANREWARDEDVIDEO);
                if (com.facebook.ads.internal.h.a.a(e.YAHOO)) {
                    m.add(YAHOONATIVE);
                }
                if (com.facebook.ads.internal.h.a.a(e.INMOBI)) {
                    m.add(INMOBINATIVE);
                }
                if (com.facebook.ads.internal.h.a.a(e.ADMOB)) {
                    m.add(ADMOBNATIVE);
                }
            }
        }
        return m;
    }
}
