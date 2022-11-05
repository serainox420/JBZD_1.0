package android.support.transition;

import android.annotation.TargetApi;
import android.support.transition.y;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* compiled from: TransitionManagerPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
class u {
    private static final String[] b = new String[0];
    private static String c = "TransitionManager";
    private static y d = new b();
    private static ThreadLocal<WeakReference<android.support.v4.f.a<ViewGroup, ArrayList<y>>>> e = new ThreadLocal<>();

    /* renamed from: a  reason: collision with root package name */
    static ArrayList<ViewGroup> f191a = new ArrayList<>();

    static android.support.v4.f.a<ViewGroup, ArrayList<y>> a() {
        WeakReference<android.support.v4.f.a<ViewGroup, ArrayList<y>>> weakReference = e.get();
        if (weakReference == null || weakReference.get() == null) {
            weakReference = new WeakReference<>(new android.support.v4.f.a());
            e.set(weakReference);
        }
        return weakReference.get();
    }

    private static void b(ViewGroup viewGroup, y yVar) {
        if (yVar != null && viewGroup != null) {
            a aVar = new a(yVar, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    private static void c(ViewGroup viewGroup, y yVar) {
        ArrayList<y> arrayList = a().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<y> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a((View) viewGroup);
            }
        }
        if (yVar != null) {
            yVar.a(viewGroup, true);
        }
        l a2 = l.a(viewGroup);
        if (a2 != null) {
            a2.a();
        }
    }

    public static void a(ViewGroup viewGroup, y yVar) {
        if (!f191a.contains(viewGroup) && android.support.v4.view.ai.F(viewGroup)) {
            f191a.add(viewGroup);
            if (yVar == null) {
                yVar = d;
            }
            y clone = yVar.clone();
            c(viewGroup, clone);
            l.a(viewGroup, null);
            b(viewGroup, clone);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TransitionManagerPort.java */
    /* loaded from: classes.dex */
    public static class a implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

        /* renamed from: a  reason: collision with root package name */
        y f192a;
        ViewGroup b;

        a(y yVar, ViewGroup viewGroup) {
            this.f192a = yVar;
            this.b = viewGroup;
        }

        private void a() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            u.f191a.remove(this.b);
            ArrayList<y> arrayList = u.a().get(this.b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<y> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().b(this.b);
                }
            }
            this.f192a.a(true);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ArrayList<y> arrayList;
            ArrayList arrayList2;
            a();
            u.f191a.remove(this.b);
            final android.support.v4.f.a<ViewGroup, ArrayList<y>> a2 = u.a();
            ArrayList<y> arrayList3 = a2.get(this.b);
            if (arrayList3 == null) {
                ArrayList<y> arrayList4 = new ArrayList<>();
                a2.put(this.b, arrayList4);
                arrayList = arrayList4;
                arrayList2 = null;
            } else if (arrayList3.size() <= 0) {
                arrayList = arrayList3;
                arrayList2 = null;
            } else {
                arrayList = arrayList3;
                arrayList2 = new ArrayList(arrayList3);
            }
            arrayList.add(this.f192a);
            this.f192a.a(new y.c() { // from class: android.support.transition.u.a.1
                @Override // android.support.transition.y.c, android.support.transition.y.b
                public void a(y yVar) {
                    ((ArrayList) a2.get(a.this.b)).remove(yVar);
                }
            });
            this.f192a.a(this.b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((y) it.next()).b(this.b);
                }
            }
            this.f192a.a(this.b);
            return true;
        }
    }
}
