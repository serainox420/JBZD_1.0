package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.view.View;
import com.facebook.common.util.ByteConstants;
import com.facebook.internal.Utility;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.vision.barcode.Barcode;
/* compiled from: AccessibilityNodeInfoCompat.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static final g f421a;
    @RestrictTo
    public int b = -1;
    private final Object c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public interface g {
        Object a();

        Object a(int i, int i2, int i3, int i4, boolean z, boolean z2);

        Object a(int i, int i2, boolean z, int i3);

        Object a(int i, CharSequence charSequence);

        Object a(Object obj);

        void a(Object obj, int i);

        void a(Object obj, Rect rect);

        void a(Object obj, View view);

        void a(Object obj, CharSequence charSequence);

        void a(Object obj, boolean z);

        boolean a(Object obj, Object obj2);

        int b(Object obj);

        Object b();

        void b(Object obj, int i);

        void b(Object obj, Rect rect);

        void b(Object obj, View view);

        void b(Object obj, CharSequence charSequence);

        void b(Object obj, Object obj2);

        void b(Object obj, boolean z);

        CharSequence c(Object obj);

        Object c();

        void c(Object obj, Rect rect);

        void c(Object obj, View view);

        void c(Object obj, CharSequence charSequence);

        void c(Object obj, Object obj2);

        void c(Object obj, boolean z);

        CharSequence d(Object obj);

        Object d();

        void d(Object obj, Rect rect);

        void d(Object obj, View view);

        void d(Object obj, CharSequence charSequence);

        void d(Object obj, boolean z);

        CharSequence e(Object obj);

        Object e();

        void e(Object obj, CharSequence charSequence);

        void e(Object obj, boolean z);

        CharSequence f(Object obj);

        Object f();

        void f(Object obj, boolean z);

        Object g();

        void g(Object obj, boolean z);

        boolean g(Object obj);

        Object h();

        void h(Object obj, boolean z);

        boolean h(Object obj);

        void i(Object obj, boolean z);

        boolean i(Object obj);

        void j(Object obj, boolean z);

        boolean j(Object obj);

        void k(Object obj, boolean z);

        boolean k(Object obj);

        void l(Object obj, boolean z);

        boolean l(Object obj);

        boolean m(Object obj);

        boolean n(Object obj);

        boolean o(Object obj);

        boolean p(Object obj);

        void q(Object obj);

        int r(Object obj);

        boolean s(Object obj);

        boolean t(Object obj);

        String u(Object obj);
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        final Object E;

        /* renamed from: a  reason: collision with root package name */
        public static final a f423a = new a(1, null);
        public static final a b = new a(2, null);
        public static final a c = new a(4, null);
        public static final a d = new a(8, null);
        public static final a e = new a(16, null);
        public static final a f = new a(32, null);
        public static final a g = new a(64, null);
        public static final a h = new a(128, null);
        public static final a i = new a(256, null);
        public static final a j = new a(512, null);
        public static final a k = new a(1024, null);
        public static final a l = new a(Barcode.PDF417, null);
        public static final a m = new a(4096, null);
        public static final a n = new a(Utility.DEFAULT_STREAM_BUFFER_SIZE, null);
        public static final a o = new a(16384, null);
        public static final a p = new a(32768, null);
        public static final a q = new a(65536, null);
        public static final a r = new a(MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES, null);
        public static final a s = new a(262144, null);
        public static final a t = new a(524288, null);
        public static final a u = new a(ByteConstants.MB, null);
        public static final a v = new a(2097152, null);
        public static final a w = new a(c.f421a.b());
        public static final a x = new a(c.f421a.a());
        public static final a y = new a(c.f421a.c());
        public static final a z = new a(c.f421a.e());
        public static final a A = new a(c.f421a.d());
        public static final a B = new a(c.f421a.f());
        public static final a C = new a(c.f421a.g());
        public static final a D = new a(c.f421a.h());

        public a(int i2, CharSequence charSequence) {
            this(c.f421a.a(i2, charSequence));
        }

        a(Object obj) {
            this.E = obj;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class m {

        /* renamed from: a  reason: collision with root package name */
        final Object f424a;

        public static m a(int i, int i2, boolean z, int i3) {
            return new m(c.f421a.a(i, i2, z, i3));
        }

        m(Object obj) {
            this.f424a = obj;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class n {

        /* renamed from: a  reason: collision with root package name */
        final Object f425a;

        public static n a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return new n(c.f421a.a(i, i2, i3, i4, z, z2));
        }

        n(Object obj) {
            this.f425a = obj;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class l implements g {
        l() {
        }

        @Override // android.support.v4.view.a.c.g
        public Object a(int i, CharSequence charSequence) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object a(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public void a(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.c.g
        public boolean a(Object obj, Object obj2) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public void a(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.c.g
        public int b(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.a.c.g
        public void a(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.c.g
        public CharSequence c(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public CharSequence d(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public CharSequence e(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public CharSequence f(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean g(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean h(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean i(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean j(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean k(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean l(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean s(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean t(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean m(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean n(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean o(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public boolean p(Object obj) {
            return false;
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, int i) {
        }

        @Override // android.support.v4.view.a.c.g
        public int r(Object obj) {
            return 0;
        }

        @Override // android.support.v4.view.a.c.g
        public void c(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.c.g
        public void d(Object obj, Rect rect) {
        }

        @Override // android.support.v4.view.a.c.g
        public void a(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.c.g
        public void c(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void c(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.c.g
        public void d(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void e(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void f(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void j(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void k(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void g(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void d(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.c.g
        public void h(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void i(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void c(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.c.g
        public void e(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.c.g
        public void q(Object obj) {
        }

        @Override // android.support.v4.view.a.c.g
        public String u(Object obj) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public void b(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.a.c.g
        public void c(Object obj, Object obj2) {
        }

        @Override // android.support.v4.view.a.c.g
        public Object a(int i, int i2, boolean z, int i3) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public void l(Object obj, boolean z) {
        }

        @Override // android.support.v4.view.a.c.g
        public void a(Object obj, CharSequence charSequence) {
        }

        @Override // android.support.v4.view.a.c.g
        public void d(Object obj, View view) {
        }

        @Override // android.support.v4.view.a.c.g
        public Object a() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object h() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object b() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object c() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object d() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object e() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object f() {
            return null;
        }

        @Override // android.support.v4.view.a.c.g
        public Object g() {
            return null;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class f extends l {
        f() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(Object obj) {
            return android.support.v4.view.a.g.a(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void a(Object obj, int i) {
            android.support.v4.view.a.g.a(obj, i);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void a(Object obj, View view) {
            android.support.v4.view.a.g.a(obj, view);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public int b(Object obj) {
            return android.support.v4.view.a.g.b(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void a(Object obj, Rect rect) {
            android.support.v4.view.a.g.a(obj, rect);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, Rect rect) {
            android.support.v4.view.a.g.b(obj, rect);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public CharSequence c(Object obj) {
            return android.support.v4.view.a.g.c(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public CharSequence d(Object obj) {
            return android.support.v4.view.a.g.d(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public CharSequence e(Object obj) {
            return android.support.v4.view.a.g.e(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public CharSequence f(Object obj) {
            return android.support.v4.view.a.g.f(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean g(Object obj) {
            return android.support.v4.view.a.g.g(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean h(Object obj) {
            return android.support.v4.view.a.g.h(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean i(Object obj) {
            return android.support.v4.view.a.g.i(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean j(Object obj) {
            return android.support.v4.view.a.g.j(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean k(Object obj) {
            return android.support.v4.view.a.g.k(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean l(Object obj) {
            return android.support.v4.view.a.g.l(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean m(Object obj) {
            return android.support.v4.view.a.g.m(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean n(Object obj) {
            return android.support.v4.view.a.g.n(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean o(Object obj) {
            return android.support.v4.view.a.g.o(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean p(Object obj) {
            return android.support.v4.view.a.g.p(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void c(Object obj, Rect rect) {
            android.support.v4.view.a.g.c(obj, rect);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void d(Object obj, Rect rect) {
            android.support.v4.view.a.g.d(obj, rect);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void a(Object obj, boolean z) {
            android.support.v4.view.a.g.a(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, boolean z) {
            android.support.v4.view.a.g.b(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, CharSequence charSequence) {
            android.support.v4.view.a.g.a(obj, charSequence);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void c(Object obj, boolean z) {
            android.support.v4.view.a.g.c(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void c(Object obj, CharSequence charSequence) {
            android.support.v4.view.a.g.b(obj, charSequence);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void d(Object obj, boolean z) {
            android.support.v4.view.a.g.d(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void e(Object obj, boolean z) {
            android.support.v4.view.a.g.e(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void f(Object obj, boolean z) {
            android.support.v4.view.a.g.f(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void g(Object obj, boolean z) {
            android.support.v4.view.a.g.g(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void d(Object obj, CharSequence charSequence) {
            android.support.v4.view.a.g.c(obj, charSequence);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, View view) {
            android.support.v4.view.a.g.b(obj, view);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void h(Object obj, boolean z) {
            android.support.v4.view.a.g.h(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void i(Object obj, boolean z) {
            android.support.v4.view.a.g.i(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void c(Object obj, View view) {
            android.support.v4.view.a.g.c(obj, view);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void e(Object obj, CharSequence charSequence) {
            android.support.v4.view.a.g.d(obj, charSequence);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void q(Object obj) {
            android.support.v4.view.a.g.q(obj);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class h extends f {
        h() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean s(Object obj) {
            return android.support.v4.view.a.h.a(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void j(Object obj, boolean z) {
            android.support.v4.view.a.h.a(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean t(Object obj) {
            return android.support.v4.view.a.h.c(obj);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void k(Object obj, boolean z) {
            android.support.v4.view.a.h.b(obj, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, int i) {
            android.support.v4.view.a.h.a(obj, i);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public int r(Object obj) {
            return android.support.v4.view.a.h.b(obj);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class i extends h {
        i() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void d(Object obj, View view) {
            android.support.v4.view.a.i.a(obj, view);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class j extends i {
        j() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public String u(Object obj) {
            return android.support.v4.view.a.j.a(obj);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class k extends j {
        k() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void b(Object obj, Object obj2) {
            android.support.v4.view.a.k.a(obj, obj2);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(int i, int i2, boolean z, int i3) {
            return android.support.v4.view.a.k.a(i, i2, z, i3);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return android.support.v4.view.a.k.a(i, i2, i3, i4, z);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void c(Object obj, Object obj2) {
            android.support.v4.view.a.k.b(obj, obj2);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void l(Object obj, boolean z) {
            android.support.v4.view.a.k.a(obj, z);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class b extends k {
        b() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(int i, CharSequence charSequence) {
            return android.support.v4.view.a.d.a(i, charSequence);
        }

        @Override // android.support.v4.view.a.c.k, android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(int i, int i2, boolean z, int i3) {
            return android.support.v4.view.a.d.a(i, i2, z, i3);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public boolean a(Object obj, Object obj2) {
            return android.support.v4.view.a.d.a(obj, obj2);
        }

        @Override // android.support.v4.view.a.c.k, android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return android.support.v4.view.a.d.a(i, i2, i3, i4, z, z2);
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public void a(Object obj, CharSequence charSequence) {
            android.support.v4.view.a.d.a(obj, charSequence);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* renamed from: android.support.v4.view.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0030c extends b {
        C0030c() {
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class d extends C0030c {
        d() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object a() {
            return android.support.v4.view.a.e.a();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object b() {
            return android.support.v4.view.a.e.b();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object c() {
            return android.support.v4.view.a.e.c();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object d() {
            return android.support.v4.view.a.e.d();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object e() {
            return android.support.v4.view.a.e.e();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object f() {
            return android.support.v4.view.a.e.f();
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object g() {
            return android.support.v4.view.a.e.g();
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    static class e extends d {
        e() {
        }

        @Override // android.support.v4.view.a.c.l, android.support.v4.view.a.c.g
        public Object h() {
            return android.support.v4.view.a.f.a();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 24) {
            f421a = new e();
        } else if (Build.VERSION.SDK_INT >= 23) {
            f421a = new d();
        } else if (Build.VERSION.SDK_INT >= 22) {
            f421a = new C0030c();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f421a = new b();
        } else if (Build.VERSION.SDK_INT >= 19) {
            f421a = new k();
        } else if (Build.VERSION.SDK_INT >= 18) {
            f421a = new j();
        } else if (Build.VERSION.SDK_INT >= 17) {
            f421a = new i();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f421a = new h();
        } else if (Build.VERSION.SDK_INT >= 14) {
            f421a = new f();
        } else {
            f421a = new l();
        }
    }

    static c a(Object obj) {
        if (obj != null) {
            return new c(obj);
        }
        return null;
    }

    public c(Object obj) {
        this.c = obj;
    }

    public Object a() {
        return this.c;
    }

    public static c a(c cVar) {
        return a(f421a.a(cVar.c));
    }

    public void a(View view) {
        f421a.c(this.c, view);
    }

    public void b(View view) {
        f421a.a(this.c, view);
    }

    public int b() {
        return f421a.b(this.c);
    }

    public void a(int i2) {
        f421a.a(this.c, i2);
    }

    public boolean a(a aVar) {
        return f421a.a(this.c, aVar.E);
    }

    public void b(int i2) {
        f421a.b(this.c, i2);
    }

    public int c() {
        return f421a.r(this.c);
    }

    public void c(View view) {
        f421a.b(this.c, view);
    }

    public void a(Rect rect) {
        f421a.a(this.c, rect);
    }

    public void b(Rect rect) {
        f421a.c(this.c, rect);
    }

    public void c(Rect rect) {
        f421a.b(this.c, rect);
    }

    public void d(Rect rect) {
        f421a.d(this.c, rect);
    }

    public boolean d() {
        return f421a.g(this.c);
    }

    public void a(boolean z) {
        f421a.a(this.c, z);
    }

    public boolean e() {
        return f421a.h(this.c);
    }

    public void b(boolean z) {
        f421a.b(this.c, z);
    }

    public boolean f() {
        return f421a.k(this.c);
    }

    public void c(boolean z) {
        f421a.e(this.c, z);
    }

    public boolean g() {
        return f421a.l(this.c);
    }

    public void d(boolean z) {
        f421a.f(this.c, z);
    }

    public boolean h() {
        return f421a.s(this.c);
    }

    public void e(boolean z) {
        f421a.j(this.c, z);
    }

    public boolean i() {
        return f421a.t(this.c);
    }

    public void f(boolean z) {
        f421a.k(this.c, z);
    }

    public boolean j() {
        return f421a.p(this.c);
    }

    public void g(boolean z) {
        f421a.i(this.c, z);
    }

    public boolean k() {
        return f421a.i(this.c);
    }

    public void h(boolean z) {
        f421a.c(this.c, z);
    }

    public boolean l() {
        return f421a.m(this.c);
    }

    public void i(boolean z) {
        f421a.g(this.c, z);
    }

    public boolean m() {
        return f421a.j(this.c);
    }

    public void j(boolean z) {
        f421a.d(this.c, z);
    }

    public boolean n() {
        return f421a.n(this.c);
    }

    public boolean o() {
        return f421a.o(this.c);
    }

    public void k(boolean z) {
        f421a.h(this.c, z);
    }

    public CharSequence p() {
        return f421a.e(this.c);
    }

    public void a(CharSequence charSequence) {
        f421a.d(this.c, charSequence);
    }

    public CharSequence q() {
        return f421a.c(this.c);
    }

    public void b(CharSequence charSequence) {
        f421a.b(this.c, charSequence);
    }

    public CharSequence r() {
        return f421a.f(this.c);
    }

    public void c(CharSequence charSequence) {
        f421a.e(this.c, charSequence);
    }

    public CharSequence s() {
        return f421a.d(this.c);
    }

    public void d(CharSequence charSequence) {
        f421a.c(this.c, charSequence);
    }

    public void t() {
        f421a.q(this.c);
    }

    public String u() {
        return f421a.u(this.c);
    }

    public void b(Object obj) {
        f421a.b(this.c, ((m) obj).f424a);
    }

    public void c(Object obj) {
        f421a.c(this.c, ((n) obj).f425a);
    }

    public void l(boolean z) {
        f421a.l(this.c, z);
    }

    public void e(CharSequence charSequence) {
        f421a.a(this.c, charSequence);
    }

    public void d(View view) {
        f421a.d(this.c, view);
    }

    public int hashCode() {
        if (this.c == null) {
            return 0;
        }
        return this.c.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            c cVar = (c) obj;
            return this.c == null ? cVar.c == null : this.c.equals(cVar.c);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        c(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(p());
        sb.append("; className: ").append(q());
        sb.append("; text: ").append(r());
        sb.append("; contentDescription: ").append(s());
        sb.append("; viewId: ").append(u());
        sb.append("; checkable: ").append(d());
        sb.append("; checked: ").append(e());
        sb.append("; focusable: ").append(f());
        sb.append("; focused: ").append(g());
        sb.append("; selected: ").append(j());
        sb.append("; clickable: ").append(k());
        sb.append("; longClickable: ").append(l());
        sb.append("; enabled: ").append(m());
        sb.append("; password: ").append(n());
        sb.append("; scrollable: " + o());
        sb.append("; [");
        int b2 = b();
        while (b2 != 0) {
            int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(b2);
            b2 &= numberOfTrailingZeros ^ (-1);
            sb.append(c(numberOfTrailingZeros));
            if (b2 != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    private static String c(int i2) {
        switch (i2) {
            case 1:
                return "ACTION_FOCUS";
            case 2:
                return "ACTION_CLEAR_FOCUS";
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case Barcode.PDF417 /* 2048 */:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case Utility.DEFAULT_STREAM_BUFFER_SIZE /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES /* 131072 */:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }
}
