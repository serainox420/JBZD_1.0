package com.mopub.nativeads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Views;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* compiled from: VisibilityTracker.java */
/* loaded from: classes3.dex */
class l {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final ViewTreeObserver.OnPreDrawListener f4641a;
    @VisibleForTesting
    WeakReference<ViewTreeObserver> b;
    private final ArrayList<View> c;
    private long d;
    private final Map<View, a> e;
    private final b f;
    private d g;
    private final c h;
    private final Handler i;
    private boolean j;

    /* compiled from: VisibilityTracker.java */
    /* loaded from: classes3.dex */
    interface d {
        void onVisibilityChanged(List<View> list, List<View> list2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VisibilityTracker.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f4643a;
        int b;
        long c;
        View d;

        a() {
        }
    }

    public l(Context context) {
        this(context, new WeakHashMap(10), new b(), new Handler());
    }

    @VisibleForTesting
    l(Context context, Map<View, a> map, b bVar, Handler handler) {
        this.d = 0L;
        this.e = map;
        this.f = bVar;
        this.i = handler;
        this.h = new c();
        this.c = new ArrayList<>(50);
        this.f4641a = new ViewTreeObserver.OnPreDrawListener() { // from class: com.mopub.nativeads.l.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                l.this.c();
                return true;
            }
        };
        this.b = new WeakReference<>(null);
        a(context, (View) null);
    }

    private void a(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.b.get();
        if (viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            View topmostView = Views.getTopmostView(context, view);
            if (topmostView == null) {
                MoPubLog.d("Unable to set Visibility Tracker due to no available root view.");
                return;
            }
            ViewTreeObserver viewTreeObserver2 = topmostView.getViewTreeObserver();
            if (!viewTreeObserver2.isAlive()) {
                MoPubLog.w("Visibility Tracker was unable to track views because the root view tree observer was not alive");
                return;
            }
            this.b = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.f4641a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d dVar) {
        this.g = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, int i) {
        a(view, view, i);
    }

    void a(View view, View view2, int i) {
        a(view, view2, i, i);
    }

    void a(View view, View view2, int i, int i2) {
        a(view2.getContext(), view2);
        a aVar = this.e.get(view2);
        if (aVar == null) {
            aVar = new a();
            this.e.put(view2, aVar);
            c();
        }
        int min = Math.min(i2, i);
        aVar.d = view;
        aVar.f4643a = i;
        aVar.b = min;
        aVar.c = this.d;
        this.d++;
        if (this.d % 50 == 0) {
            a(this.d - 50);
        }
    }

    private void a(long j) {
        for (Map.Entry<View, a> entry : this.e.entrySet()) {
            if (entry.getValue().c < j) {
                this.c.add(entry.getKey());
            }
        }
        Iterator<View> it = this.c.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        this.c.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view) {
        this.e.remove(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.e.clear();
        this.i.removeMessages(0);
        this.j = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
        ViewTreeObserver viewTreeObserver = this.b.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.f4641a);
        }
        this.b.clear();
        this.g = null;
    }

    void c() {
        if (!this.j) {
            this.j = true;
            this.i.postDelayed(this.h, 100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VisibilityTracker.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {
        private final ArrayList<View> c = new ArrayList<>();
        private final ArrayList<View> b = new ArrayList<>();

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l.this.j = false;
            for (Map.Entry entry : l.this.e.entrySet()) {
                View view = (View) entry.getKey();
                int i = ((a) entry.getValue()).f4643a;
                int i2 = ((a) entry.getValue()).b;
                View view2 = ((a) entry.getValue()).d;
                if (!l.this.f.a(view2, view, i)) {
                    if (!l.this.f.a(view2, view, i2)) {
                        this.c.add(view);
                    }
                } else {
                    this.b.add(view);
                }
            }
            if (l.this.g != null) {
                l.this.g.onVisibilityChanged(this.b, this.c);
            }
            this.b.clear();
            this.c.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VisibilityTracker.java */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f4644a = new Rect();

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(long j, int i) {
            return SystemClock.uptimeMillis() - j >= ((long) i);
        }

        boolean a(View view, View view2, int i) {
            if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || !view2.getGlobalVisibleRect(this.f4644a)) {
                return false;
            }
            long height = this.f4644a.height() * this.f4644a.width();
            long height2 = view2.getHeight() * view2.getWidth();
            return height2 > 0 && height * 100 >= height2 * ((long) i);
        }
    }
}
