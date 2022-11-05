package android.support.v4.view.a;

import android.os.Build;
import android.os.Bundle;
import android.support.v4.view.a.m;
import android.support.v4.view.a.n;
import java.util.ArrayList;
import java.util.List;
/* compiled from: AccessibilityNodeProviderCompat.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final a f426a;
    private final Object b;

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    interface a {
        Object a(l lVar);
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    static class d implements a {
        d() {
        }

        @Override // android.support.v4.view.a.l.a
        public Object a(l lVar) {
            return null;
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    private static class b extends d {
        b() {
        }

        @Override // android.support.v4.view.a.l.d, android.support.v4.view.a.l.a
        public Object a(final l lVar) {
            return m.a(new m.a() { // from class: android.support.v4.view.a.l.b.1
                @Override // android.support.v4.view.a.m.a
                public boolean a(int i, int i2, Bundle bundle) {
                    return lVar.a(i, i2, bundle);
                }

                @Override // android.support.v4.view.a.m.a
                public List<Object> a(String str, int i) {
                    List<android.support.v4.view.a.c> a2 = lVar.a(str, i);
                    if (a2 == null) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    int size = a2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(a2.get(i2).a());
                    }
                    return arrayList;
                }

                @Override // android.support.v4.view.a.m.a
                public Object a(int i) {
                    android.support.v4.view.a.c a2 = lVar.a(i);
                    if (a2 == null) {
                        return null;
                    }
                    return a2.a();
                }
            });
        }
    }

    /* compiled from: AccessibilityNodeProviderCompat.java */
    /* loaded from: classes.dex */
    private static class c extends d {
        c() {
        }

        @Override // android.support.v4.view.a.l.d, android.support.v4.view.a.l.a
        public Object a(final l lVar) {
            return n.a(new n.a() { // from class: android.support.v4.view.a.l.c.1
                @Override // android.support.v4.view.a.n.a
                public boolean a(int i, int i2, Bundle bundle) {
                    return lVar.a(i, i2, bundle);
                }

                @Override // android.support.v4.view.a.n.a
                public List<Object> a(String str, int i) {
                    List<android.support.v4.view.a.c> a2 = lVar.a(str, i);
                    if (a2 == null) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    int size = a2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(a2.get(i2).a());
                    }
                    return arrayList;
                }

                @Override // android.support.v4.view.a.n.a
                public Object a(int i) {
                    android.support.v4.view.a.c a2 = lVar.a(i);
                    if (a2 == null) {
                        return null;
                    }
                    return a2.a();
                }

                @Override // android.support.v4.view.a.n.a
                public Object b(int i) {
                    android.support.v4.view.a.c b = lVar.b(i);
                    if (b == null) {
                        return null;
                    }
                    return b.a();
                }
            });
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 19) {
            f426a = new c();
        } else if (Build.VERSION.SDK_INT >= 16) {
            f426a = new b();
        } else {
            f426a = new d();
        }
    }

    public l() {
        this.b = f426a.a(this);
    }

    public l(Object obj) {
        this.b = obj;
    }

    public Object a() {
        return this.b;
    }

    public android.support.v4.view.a.c a(int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public List<android.support.v4.view.a.c> a(String str, int i) {
        return null;
    }

    public android.support.v4.view.a.c b(int i) {
        return null;
    }
}
