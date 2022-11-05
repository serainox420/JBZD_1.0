package com.adcolony.sdk;

import android.os.Bundle;
import java.util.HashMap;
/* loaded from: classes.dex */
class af {

    /* renamed from: a  reason: collision with root package name */
    static final int f1037a = 5;
    static final int b = 1;
    static final int c = 3;
    static final int d = 0;
    static final int e = 1;
    private static int f;
    private static HashMap<String, Integer> g = new HashMap<>();
    private static HashMap<String, Integer> h = new HashMap<>();

    af() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i, Bundle bundle) {
        int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        switch (i) {
            case 0:
                if (currentTimeMillis - f < 5) {
                    return true;
                }
                f = currentTimeMillis;
                return false;
            case 1:
                if (bundle == null) {
                    return false;
                }
                String string = bundle.getString("zone_id");
                if (g.get(string) == null) {
                    g.put(string, Integer.valueOf(currentTimeMillis));
                }
                if (h.get(string) == null) {
                    h.put(string, 0);
                }
                if (currentTimeMillis - g.get(string).intValue() > 1) {
                    h.put(string, 1);
                    g.put(string, Integer.valueOf(currentTimeMillis));
                    return false;
                }
                int intValue = h.get(string).intValue() + 1;
                h.put(string, Integer.valueOf(intValue));
                return intValue > 3;
            default:
                return false;
        }
    }
}
