package com.smartadserver.android.library.c;

import com.intentsoftware.addapptr.AATKit;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
/* compiled from: SASMediationSDKUtil.java */
/* loaded from: classes3.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5369a = {100, 201, 300, 500, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS, 700, 800, 900, 1000};
    private static int[] b;

    static {
        b();
    }

    public static Class<? extends i> a(int i) {
        switch (i) {
            case 100:
                return k.class;
            case 201:
                return f.class;
            case 300:
                return e.class;
            case 500:
                return d.class;
            case AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS /* 600 */:
                return a.class;
            case 700:
                return l.class;
            case 800:
                return b.class;
            case 900:
                return m.class;
            case 1000:
                return c.class;
            default:
                return null;
        }
    }

    public static String b(int i) {
        switch (i) {
            case 100:
                return "MillennialMedia";
            case 201:
                return "InMobi";
            case 300:
                return "Facebook";
            case 400:
                return "Motionlead";
            case 500:
                return "AppsFire";
            case AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS /* 600 */:
                return "AdColony";
            case 700:
                return "MoPub";
            case 800:
                return "AdMob";
            case 900:
                return "UnityAds";
            case 1000:
                return "Applovin";
            default:
                return null;
        }
    }

    private static void b() {
        boolean z;
        int i = 0;
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < f5369a.length; i2++) {
            int i3 = f5369a[i2];
            try {
                if (a(i3).getConstructor(new Class[0]).newInstance(new Object[0]).c()) {
                    hashSet.add(Integer.valueOf(i3));
                    z = true;
                } else {
                    z = false;
                }
            } catch (Throwable th) {
                z = false;
            }
            if (!z) {
                com.smartadserver.android.library.g.c.b("The " + b(i3) + " mediation SDK is not available");
            }
        }
        Iterator it = hashSet.iterator();
        b = new int[hashSet.size()];
        while (it.hasNext()) {
            b[i] = ((Integer) it.next()).intValue();
            i++;
        }
        Arrays.sort(b);
    }

    public static int[] a() {
        return (int[]) b.clone();
    }

    public static boolean c(int i) {
        return Arrays.binarySearch(b, i) >= 0;
    }
}
