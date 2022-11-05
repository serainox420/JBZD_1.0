package com.smartadserver.android.library.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: SASViewabilityManager.java */
/* loaded from: classes3.dex */
public class c {
    private static Timer b;

    /* renamed from: a  reason: collision with root package name */
    private static final String f5614a = c.class.getSimpleName();
    private static HashSet<a> c = new HashSet<>();
    private static Handler d = new Handler(Looper.getMainLooper());

    /* compiled from: SASViewabilityManager.java */
    /* loaded from: classes3.dex */
    public interface a {
        void updateVisibilityPercentage();
    }

    private static void c() {
        if (b == null) {
            if (c.size() > 0) {
                b = new Timer("SASViewabilityManager timer");
                d = new Handler(Looper.getMainLooper());
                b.schedule(new TimerTask() { // from class: com.smartadserver.android.library.ui.c.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        synchronized (c.c) {
                            Iterator it = c.c.iterator();
                            while (it.hasNext()) {
                                final a aVar = (a) it.next();
                                c.d.post(new Runnable() { // from class: com.smartadserver.android.library.ui.c.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        aVar.updateVisibilityPercentage();
                                    }
                                });
                            }
                        }
                    }
                }, 250L, 250L);
            }
        } else if (c.size() == 0) {
            b.cancel();
            b = null;
        }
    }

    public static void a(a aVar) {
        synchronized (c) {
            c.add(aVar);
            c();
        }
    }

    public static void b(a aVar) {
        synchronized (c) {
            c.remove(aVar);
            c();
        }
    }

    public static void a(ArrayList<com.smartadserver.android.library.model.d> arrayList, double d2, boolean z) {
        synchronized (arrayList) {
            Iterator<com.smartadserver.android.library.model.d> it = arrayList.iterator();
            com.smartadserver.android.library.a.c a2 = com.smartadserver.android.library.a.c.a((Context) null);
            while (it.hasNext()) {
                com.smartadserver.android.library.model.d next = it.next();
                if (d2 >= next.c) {
                    next.d += 250;
                } else {
                    next.d = 0;
                }
                if (next.d >= next.b || z) {
                    a2.a(next.f5455a, true);
                    it.remove();
                }
            }
        }
    }
}
