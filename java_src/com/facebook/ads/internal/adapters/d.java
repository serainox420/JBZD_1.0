package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.util.ai;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Set<f> f2083a = new HashSet();
    private static final Map<AdPlacementType, String> b = new ConcurrentHashMap();

    static {
        Class cls;
        for (f fVar : f.a()) {
            switch (fVar.l) {
                case BANNER:
                    cls = BannerAdapter.class;
                    break;
                case INTERSTITIAL:
                    cls = InterstitialAdapter.class;
                    break;
                case NATIVE:
                    cls = v.class;
                    break;
                case INSTREAM:
                    cls = r.class;
                    break;
                case REWARDED_VIDEO:
                    cls = x.class;
                    break;
                default:
                    cls = null;
                    break;
            }
            if (cls != null) {
                Class<?> cls2 = fVar.i;
                if (cls2 == null) {
                    try {
                        cls2 = Class.forName(fVar.j);
                    } catch (ClassNotFoundException e) {
                    }
                }
                if (cls2 != null && cls.isAssignableFrom(cls2)) {
                    f2083a.add(fVar);
                }
            }
        }
    }

    public static AdAdapter a(e eVar, AdPlacementType adPlacementType) {
        try {
            f b2 = b(eVar, adPlacementType);
            if (b2 != null && f2083a.contains(b2)) {
                Class<?> cls = b2.i;
                if (cls == null) {
                    cls = Class.forName(b2.j);
                }
                return (AdAdapter) cls.newInstance();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static AdAdapter a(String str, AdPlacementType adPlacementType) {
        return a(e.a(str), adPlacementType);
    }

    public static String a(AdPlacementType adPlacementType) {
        if (b.containsKey(adPlacementType)) {
            return b.get(adPlacementType);
        }
        HashSet hashSet = new HashSet();
        for (f fVar : f2083a) {
            if (fVar.l == adPlacementType) {
                hashSet.add(fVar.k.toString());
            }
        }
        String a2 = ai.a(hashSet, ",");
        b.put(adPlacementType, a2);
        return a2;
    }

    private static f b(e eVar, AdPlacementType adPlacementType) {
        for (f fVar : f2083a) {
            if (fVar.k == eVar && fVar.l == adPlacementType) {
                return fVar;
            }
        }
        return null;
    }
}
