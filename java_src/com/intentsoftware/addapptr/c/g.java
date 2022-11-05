package com.intentsoftware.addapptr.c;

import android.annotation.SuppressLint;
import android.app.Activity;
import com.revmob.RevMob;
import com.revmob.RevMobAdsListener;
import java.util.ArrayList;
import java.util.List;
/* compiled from: RevMobHelper.java */
/* loaded from: classes2.dex */
public class g {
    private static boolean initialized;
    private static List<a> listeners = new ArrayList();
    @SuppressLint({"StaticFieldLeak"})
    private static RevMob revMob;

    /* compiled from: RevMobHelper.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onInitFailed(String str);

        void onInitialized();
    }

    public static void init(Activity activity, String str) {
        if (revMob == null) {
            revMob = RevMob.startWithListener(activity, new RevMobAdsListener() { // from class: com.intentsoftware.addapptr.c.g.1
                @Override // com.revmob.RevMobAdsListener
                public void onRevMobSessionStarted() {
                    boolean unused = g.initialized = true;
                    for (a aVar : g.listeners) {
                        aVar.onInitialized();
                    }
                }

                @Override // com.revmob.RevMobAdsListener
                public void onRevMobSessionNotStarted(String str2) {
                    for (a aVar : g.listeners) {
                        aVar.onInitFailed(str2);
                    }
                }
            }, str);
        }
    }

    public static boolean isInitialized() {
        return revMob != null && initialized;
    }

    public static void addListener(a aVar) {
        listeners.add(aVar);
    }

    public static void removeListener(a aVar) {
        listeners.remove(aVar);
    }

    public static RevMob getRevMob() {
        return revMob;
    }
}
