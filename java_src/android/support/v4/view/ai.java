package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.view.ar;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* compiled from: ViewCompat.java */
/* loaded from: classes.dex */
public class ai {

    /* renamed from: a  reason: collision with root package name */
    static final l f435a;

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    interface l {
        void A(View view);

        boolean B(View view);

        boolean C(View view);

        ColorStateList D(View view);

        PorterDuff.Mode E(View view);

        void F(View view);

        boolean G(View view);

        float H(View view);

        boolean I(View view);

        boolean J(View view);

        Display K(View view);

        int a(int i, int i2);

        int a(int i, int i2, int i3);

        bg a(View view, bg bgVar);

        void a(View view, float f);

        void a(View view, int i, int i2);

        void a(View view, int i, int i2, int i3, int i4);

        void a(View view, int i, Paint paint);

        void a(View view, ColorStateList colorStateList);

        void a(View view, Paint paint);

        void a(View view, PorterDuff.Mode mode);

        void a(View view, Drawable drawable);

        void a(View view, android.support.v4.view.a aVar);

        void a(View view, ac acVar);

        void a(View view, z zVar);

        void a(View view, Runnable runnable);

        void a(View view, Runnable runnable, long j);

        void a(View view, boolean z);

        void a(ViewGroup viewGroup, boolean z);

        boolean a(View view);

        boolean a(View view, int i);

        bg b(View view, bg bgVar);

        void b(View view, float f);

        void b(View view, int i, int i2, int i3, int i4);

        void b(View view, boolean z);

        boolean b(View view);

        boolean b(View view, int i);

        void c(View view);

        void c(View view, float f);

        void c(View view, int i);

        void c(View view, boolean z);

        int d(View view);

        void d(View view, float f);

        void d(View view, int i);

        float e(View view);

        void e(View view, float f);

        void e(View view, int i);

        int f(View view);

        void f(View view, float f);

        void f(View view, int i);

        int g(View view);

        void g(View view, float f);

        ViewParent h(View view);

        void h(View view, float f);

        int i(View view);

        int j(View view);

        int k(View view);

        int l(View view);

        boolean m(View view);

        float n(View view);

        float o(View view);

        float p(View view);

        Matrix q(View view);

        int r(View view);

        int s(View view);

        az t(View view);

        String u(View view);

        int v(View view);

        void w(View view);

        float x(View view);

        boolean z(View view);
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class b implements l {
        private static Method b;

        /* renamed from: a  reason: collision with root package name */
        WeakHashMap<View, az> f436a = null;

        b() {
        }

        @Override // android.support.v4.view.ai.l
        public boolean a(View view, int i) {
            return (view instanceof ae) && a((ae) view, i);
        }

        @Override // android.support.v4.view.ai.l
        public boolean b(View view, int i) {
            return (view instanceof ae) && b((ae) view, i);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, android.support.v4.view.a aVar) {
        }

        @Override // android.support.v4.view.ai.l
        public boolean a(View view) {
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public boolean b(View view) {
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public void c(View view) {
            view.invalidate();
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, Runnable runnable) {
            view.postDelayed(runnable, a());
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, a() + j);
        }

        long a() {
            return 10L;
        }

        @Override // android.support.v4.view.ai.l
        public int d(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ai.l
        public void c(View view, int i) {
        }

        @Override // android.support.v4.view.ai.l
        public float e(View view) {
            return 1.0f;
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, int i, Paint paint) {
        }

        @Override // android.support.v4.view.ai.l
        public int f(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, Paint paint) {
        }

        @Override // android.support.v4.view.ai.l
        public int g(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ai.l
        public ViewParent h(View view) {
            return view.getParent();
        }

        @Override // android.support.v4.view.ai.l
        public int a(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        @Override // android.support.v4.view.ai.l
        public int i(View view) {
            return view.getMeasuredWidth();
        }

        @Override // android.support.v4.view.ai.l
        public int j(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ai.l
        public void d(View view, int i) {
        }

        @Override // android.support.v4.view.ai.l
        public int k(View view) {
            return view.getPaddingLeft();
        }

        @Override // android.support.v4.view.ai.l
        public int l(View view) {
            return view.getPaddingRight();
        }

        @Override // android.support.v4.view.ai.l
        public void b(View view, int i, int i2, int i3, int i4) {
            view.setPadding(i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ai.l
        public boolean m(View view) {
            return true;
        }

        @Override // android.support.v4.view.ai.l
        public float n(View view) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.support.v4.view.ai.l
        public float o(View view) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.support.v4.view.ai.l
        public float p(View view) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.support.v4.view.ai.l
        public Matrix q(View view) {
            return null;
        }

        @Override // android.support.v4.view.ai.l
        public int r(View view) {
            return ak.d(view);
        }

        @Override // android.support.v4.view.ai.l
        public int s(View view) {
            return ak.e(view);
        }

        @Override // android.support.v4.view.ai.l
        public az t(View view) {
            return new az(view);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void b(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void c(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void d(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void e(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void f(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public void g(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public String u(View view) {
            return null;
        }

        @Override // android.support.v4.view.ai.l
        public int v(View view) {
            return 0;
        }

        @Override // android.support.v4.view.ai.l
        public void w(View view) {
        }

        @Override // android.support.v4.view.ai.l
        public void h(View view, float f) {
        }

        @Override // android.support.v4.view.ai.l
        public float x(View view) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        public float y(View view) {
            return BitmapDescriptorFactory.HUE_RED;
        }

        @Override // android.support.v4.view.ai.l
        public void a(ViewGroup viewGroup, boolean z) {
            if (b == null) {
                try {
                    b = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e) {
                    Log.e("ViewCompat", "Unable to find childrenDrawingOrderEnabled", e);
                }
                b.setAccessible(true);
            }
            try {
                b.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e2);
            } catch (IllegalArgumentException e3) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e3);
            } catch (InvocationTargetException e4) {
                Log.e("ViewCompat", "Unable to invoke childrenDrawingOrderEnabled", e4);
            }
        }

        @Override // android.support.v4.view.ai.l
        public boolean z(View view) {
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, boolean z) {
        }

        @Override // android.support.v4.view.ai.l
        public void A(View view) {
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, z zVar) {
        }

        @Override // android.support.v4.view.ai.l
        public bg a(View view, bg bgVar) {
            return bgVar;
        }

        @Override // android.support.v4.view.ai.l
        public bg b(View view, bg bgVar) {
            return bgVar;
        }

        @Override // android.support.v4.view.ai.l
        public void b(View view, boolean z) {
        }

        @Override // android.support.v4.view.ai.l
        public void c(View view, boolean z) {
        }

        @Override // android.support.v4.view.ai.l
        public boolean B(View view) {
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public boolean C(View view) {
            if (view instanceof v) {
                return ((v) view).isNestedScrollingEnabled();
            }
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, Drawable drawable) {
            view.setBackgroundDrawable(drawable);
        }

        @Override // android.support.v4.view.ai.l
        public ColorStateList D(View view) {
            return ak.a(view);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, ColorStateList colorStateList) {
            ak.a(view, colorStateList);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, PorterDuff.Mode mode) {
            ak.a(view, mode);
        }

        @Override // android.support.v4.view.ai.l
        public PorterDuff.Mode E(View view) {
            return ak.b(view);
        }

        private boolean a(ae aeVar, int i) {
            int computeHorizontalScrollOffset = aeVar.computeHorizontalScrollOffset();
            int computeHorizontalScrollRange = aeVar.computeHorizontalScrollRange() - aeVar.computeHorizontalScrollExtent();
            if (computeHorizontalScrollRange == 0) {
                return false;
            }
            return i < 0 ? computeHorizontalScrollOffset > 0 : computeHorizontalScrollOffset < computeHorizontalScrollRange + (-1);
        }

        private boolean b(ae aeVar, int i) {
            int computeVerticalScrollOffset = aeVar.computeVerticalScrollOffset();
            int computeVerticalScrollRange = aeVar.computeVerticalScrollRange() - aeVar.computeVerticalScrollExtent();
            if (computeVerticalScrollRange == 0) {
                return false;
            }
            return i < 0 ? computeVerticalScrollOffset > 0 : computeVerticalScrollOffset < computeVerticalScrollRange + (-1);
        }

        @Override // android.support.v4.view.ai.l
        public void F(View view) {
            if (view instanceof v) {
                ((v) view).stopNestedScroll();
            }
        }

        @Override // android.support.v4.view.ai.l
        public boolean G(View view) {
            return ak.c(view);
        }

        @Override // android.support.v4.view.ai.l
        public int a(int i, int i2) {
            return i | i2;
        }

        @Override // android.support.v4.view.ai.l
        public float H(View view) {
            return y(view) + x(view);
        }

        @Override // android.support.v4.view.ai.l
        public boolean I(View view) {
            return ak.f(view);
        }

        @Override // android.support.v4.view.ai.l
        public boolean J(View view) {
            return false;
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, int i, int i2) {
        }

        @Override // android.support.v4.view.ai.l
        public void e(View view, int i) {
            ak.b(view, i);
        }

        @Override // android.support.v4.view.ai.l
        public void f(View view, int i) {
            ak.a(view, i);
        }

        @Override // android.support.v4.view.ai.l
        public void a(View view, ac acVar) {
        }

        @Override // android.support.v4.view.ai.l
        public Display K(View view) {
            return ak.g(view);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.ai.b
        long a() {
            return al.a();
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float e(View view) {
            return al.a(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, int i, Paint paint) {
            al.a(view, i, paint);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int f(View view) {
            return al.b(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, Paint paint) {
            a(view, f(view), paint);
            view.invalidate();
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int a(int i, int i2, int i3) {
            return al.a(i, i2, i3);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int i(View view) {
            return al.c(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int j(View view) {
            return al.d(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float n(View view) {
            return al.e(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float o(View view) {
            return al.f(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public Matrix q(View view) {
            return al.h(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, float f) {
            al.a(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void b(View view, float f) {
            al.b(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void c(View view, float f) {
            al.c(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void d(View view, float f) {
            al.d(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void e(View view, float f) {
            al.e(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void f(View view, float f) {
            al.f(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void g(View view, float f) {
            al.g(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float p(View view) {
            return al.g(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void A(View view) {
            al.i(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void b(View view, boolean z) {
            al.a(view, z);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void c(View view, boolean z) {
            al.b(view, z);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int a(int i, int i2) {
            return al.a(i, i2);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void e(View view, int i) {
            al.b(view, i);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void f(View view, int i) {
            al.a(view, i);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class e extends c {
        static Field b;
        static boolean c = false;

        e() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean a(View view, int i) {
            return am.a(view, i);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean b(View view, int i) {
            return am.b(view, i);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, android.support.v4.view.a aVar) {
            am.a(view, aVar == null ? null : aVar.a());
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean a(View view) {
            boolean z = true;
            if (c) {
                return false;
            }
            if (b == null) {
                try {
                    b = View.class.getDeclaredField("mAccessibilityDelegate");
                    b.setAccessible(true);
                } catch (Throwable th) {
                    c = true;
                    return false;
                }
            }
            try {
                if (b.get(view) == null) {
                    z = false;
                }
                return z;
            } catch (Throwable th2) {
                c = true;
                return false;
            }
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public az t(View view) {
            if (this.f436a == null) {
                this.f436a = new WeakHashMap<>();
            }
            az azVar = this.f436a.get(view);
            if (azVar == null) {
                az azVar2 = new az(view);
                this.f436a.put(view, azVar2);
                return azVar2;
            }
            return azVar;
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, boolean z) {
            am.a(view, z);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class d extends e {
        d() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean J(View view) {
            return an.a(view);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class f extends d {
        f() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean b(View view) {
            return ao.a(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void c(View view) {
            ao.b(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, int i, int i2, int i3, int i4) {
            ao.a(view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, Runnable runnable) {
            ao.a(view, runnable);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, Runnable runnable, long j) {
            ao.a(view, runnable, j);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int d(View view) {
            return ao.c(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void c(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            ao.a(view, i);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public ViewParent h(View view) {
            return ao.d(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int r(View view) {
            return ao.e(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int s(View view) {
            return ao.f(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void w(View view) {
            ao.g(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean z(View view) {
            return ao.h(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean m(View view) {
            return ao.i(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, Drawable drawable) {
            ao.a(view, drawable);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class g extends f {
        g() {
        }

        @Override // android.support.v4.view.ai.c, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, Paint paint) {
            ap.a(view, paint);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int g(View view) {
            return ap.a(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int k(View view) {
            return ap.b(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int l(View view) {
            return ap.c(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void b(View view, int i, int i2, int i3, int i4) {
            ap.a(view, i, i2, i3, i4);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public int v(View view) {
            return ap.d(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean B(View view) {
            return ap.e(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public Display K(View view) {
            return ap.f(view);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class h extends g {
        h() {
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class i extends h {
        i() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void d(View view, int i) {
            aq.a(view, i);
        }

        @Override // android.support.v4.view.ai.f, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void c(View view, int i) {
            ao.a(view, i);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean G(View view) {
            return aq.a(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean I(View view) {
            return aq.b(view);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class j extends i {
        j() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public String u(View view) {
            return ar.a(view);
        }

        @Override // android.support.v4.view.ai.f, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void w(View view) {
            ar.b(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void h(View view, float f) {
            ar.a(view, f);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float x(View view) {
            return ar.c(view);
        }

        @Override // android.support.v4.view.ai.b
        public float y(View view) {
            return ar.d(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, final z zVar) {
            if (zVar == null) {
                ar.a(view, (ar.a) null);
            } else {
                ar.a(view, new ar.a() { // from class: android.support.v4.view.ai.j.1
                    @Override // android.support.v4.view.ar.a
                    public Object a(View view2, Object obj) {
                        return bg.a(zVar.a(view2, bg.a(obj)));
                    }
                });
            }
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public boolean C(View view) {
            return ar.g(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void F(View view) {
            ar.h(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public ColorStateList D(View view) {
            return ar.e(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, ColorStateList colorStateList) {
            ar.a(view, colorStateList);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, PorterDuff.Mode mode) {
            ar.a(view, mode);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public PorterDuff.Mode E(View view) {
            return ar.f(view);
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public bg a(View view, bg bgVar) {
            return bg.a(ar.a(view, bg.a(bgVar)));
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public bg b(View view, bg bgVar) {
            return bg.a(ar.b(view, bg.a(bgVar)));
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public float H(View view) {
            return ar.i(view);
        }

        @Override // android.support.v4.view.ai.c, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void e(View view, int i) {
            ar.b(view, i);
        }

        @Override // android.support.v4.view.ai.c, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void f(View view, int i) {
            ar.a(view, i);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class k extends j {
        k() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, int i, int i2) {
            as.a(view, i, i2);
        }

        @Override // android.support.v4.view.ai.j, android.support.v4.view.ai.c, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void e(View view, int i) {
            as.b(view, i);
        }

        @Override // android.support.v4.view.ai.j, android.support.v4.view.ai.c, android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void f(View view, int i) {
            as.a(view, i);
        }
    }

    /* compiled from: ViewCompat.java */
    /* loaded from: classes.dex */
    static class a extends k {
        a() {
        }

        @Override // android.support.v4.view.ai.b, android.support.v4.view.ai.l
        public void a(View view, ac acVar) {
            aj.a(view, acVar != null ? acVar.a() : null);
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (android.support.v4.os.c.a()) {
            f435a = new a();
        } else if (i2 >= 23) {
            f435a = new k();
        } else if (i2 >= 21) {
            f435a = new j();
        } else if (i2 >= 19) {
            f435a = new i();
        } else if (i2 >= 18) {
            f435a = new h();
        } else if (i2 >= 17) {
            f435a = new g();
        } else if (i2 >= 16) {
            f435a = new f();
        } else if (i2 >= 15) {
            f435a = new d();
        } else if (i2 >= 14) {
            f435a = new e();
        } else if (i2 >= 11) {
            f435a = new c();
        } else {
            f435a = new b();
        }
    }

    public static boolean a(View view, int i2) {
        return f435a.a(view, i2);
    }

    public static boolean b(View view, int i2) {
        return f435a.b(view, i2);
    }

    public static void a(View view, android.support.v4.view.a aVar) {
        f435a.a(view, aVar);
    }

    public static boolean a(View view) {
        return f435a.a(view);
    }

    public static boolean b(View view) {
        return f435a.b(view);
    }

    public static void c(View view) {
        f435a.c(view);
    }

    public static void a(View view, int i2, int i3, int i4, int i5) {
        f435a.a(view, i2, i3, i4, i5);
    }

    public static void a(View view, Runnable runnable) {
        f435a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long j2) {
        f435a.a(view, runnable, j2);
    }

    public static int d(View view) {
        return f435a.d(view);
    }

    public static void c(View view, int i2) {
        f435a.c(view, i2);
    }

    public static float e(View view) {
        return f435a.e(view);
    }

    public static void a(View view, int i2, Paint paint) {
        f435a.a(view, i2, paint);
    }

    public static int f(View view) {
        return f435a.f(view);
    }

    public static void a(View view, Paint paint) {
        f435a.a(view, paint);
    }

    public static int g(View view) {
        return f435a.g(view);
    }

    public static ViewParent h(View view) {
        return f435a.h(view);
    }

    public static int a(int i2, int i3, int i4) {
        return f435a.a(i2, i3, i4);
    }

    public static int i(View view) {
        return f435a.i(view);
    }

    public static int j(View view) {
        return f435a.j(view);
    }

    public static int a(int i2, int i3) {
        return f435a.a(i2, i3);
    }

    public static void d(View view, int i2) {
        f435a.d(view, i2);
    }

    public static int k(View view) {
        return f435a.k(view);
    }

    public static int l(View view) {
        return f435a.l(view);
    }

    public static void b(View view, int i2, int i3, int i4, int i5) {
        f435a.b(view, i2, i3, i4, i5);
    }

    public static float m(View view) {
        return f435a.n(view);
    }

    public static float n(View view) {
        return f435a.o(view);
    }

    public static Matrix o(View view) {
        return f435a.q(view);
    }

    public static int p(View view) {
        return f435a.r(view);
    }

    public static int q(View view) {
        return f435a.s(view);
    }

    public static az r(View view) {
        return f435a.t(view);
    }

    public static void a(View view, float f2) {
        f435a.a(view, f2);
    }

    public static void b(View view, float f2) {
        f435a.b(view, f2);
    }

    public static void c(View view, float f2) {
        f435a.c(view, f2);
    }

    public static void d(View view, float f2) {
        f435a.d(view, f2);
    }

    public static void e(View view, float f2) {
        f435a.e(view, f2);
    }

    public static void f(View view, float f2) {
        f435a.f(view, f2);
    }

    public static void g(View view, float f2) {
        f435a.g(view, f2);
    }

    public static float s(View view) {
        return f435a.p(view);
    }

    public static void h(View view, float f2) {
        f435a.h(view, f2);
    }

    public static float t(View view) {
        return f435a.x(view);
    }

    public static String u(View view) {
        return f435a.u(view);
    }

    public static int v(View view) {
        return f435a.v(view);
    }

    public static void w(View view) {
        f435a.w(view);
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        f435a.a(viewGroup, z);
    }

    public static boolean x(View view) {
        return f435a.z(view);
    }

    public static void a(View view, boolean z) {
        f435a.a(view, z);
    }

    public static void y(View view) {
        f435a.A(view);
    }

    public static void a(View view, z zVar) {
        f435a.a(view, zVar);
    }

    public static bg a(View view, bg bgVar) {
        return f435a.a(view, bgVar);
    }

    public static bg b(View view, bg bgVar) {
        return f435a.b(view, bgVar);
    }

    public static void b(View view, boolean z) {
        f435a.b(view, z);
    }

    public static void c(View view, boolean z) {
        f435a.c(view, z);
    }

    public static boolean z(View view) {
        return f435a.m(view);
    }

    public static boolean A(View view) {
        return f435a.B(view);
    }

    public static void a(View view, Drawable drawable) {
        f435a.a(view, drawable);
    }

    public static ColorStateList B(View view) {
        return f435a.D(view);
    }

    public static void a(View view, ColorStateList colorStateList) {
        f435a.a(view, colorStateList);
    }

    public static PorterDuff.Mode C(View view) {
        return f435a.E(view);
    }

    public static void a(View view, PorterDuff.Mode mode) {
        f435a.a(view, mode);
    }

    public static boolean D(View view) {
        return f435a.C(view);
    }

    public static void E(View view) {
        f435a.F(view);
    }

    public static boolean F(View view) {
        return f435a.G(view);
    }

    public static float G(View view) {
        return f435a.H(view);
    }

    public static void e(View view, int i2) {
        f435a.f(view, i2);
    }

    public static void f(View view, int i2) {
        f435a.e(view, i2);
    }

    public static boolean H(View view) {
        return f435a.I(view);
    }

    public static boolean I(View view) {
        return f435a.J(view);
    }

    public static void a(View view, int i2, int i3) {
        f435a.a(view, i2, i3);
    }

    public static void a(View view, ac acVar) {
        f435a.a(view, acVar);
    }

    public static Display J(View view) {
        return f435a.K(view);
    }
}
