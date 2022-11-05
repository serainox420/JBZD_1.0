package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: ViewGroupUtils.java */
/* loaded from: classes.dex */
class u {

    /* renamed from: a  reason: collision with root package name */
    private static final a f140a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ViewGroupUtils.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(ViewGroup viewGroup, View view, Rect rect);
    }

    /* compiled from: ViewGroupUtils.java */
    /* loaded from: classes.dex */
    private static class b implements a {
        b() {
        }

        @Override // android.support.design.widget.u.a
        public void a(ViewGroup viewGroup, View view, Rect rect) {
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
            rect.offset(view.getScrollX(), view.getScrollY());
        }
    }

    /* compiled from: ViewGroupUtils.java */
    /* loaded from: classes.dex */
    private static class c implements a {
        c() {
        }

        @Override // android.support.design.widget.u.a
        public void a(ViewGroup viewGroup, View view, Rect rect) {
            v.a(viewGroup, view, rect);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f140a = new c();
        } else {
            f140a = new b();
        }
    }

    static void a(ViewGroup viewGroup, View view, Rect rect) {
        f140a.a(viewGroup, view, rect);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(ViewGroup viewGroup, View view, Rect rect) {
        rect.set(0, 0, view.getWidth(), view.getHeight());
        a(viewGroup, view, rect);
    }
}
