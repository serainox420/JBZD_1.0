package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
/* compiled from: VisibilityPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
abstract class an extends y {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f171a = {"android:visibility:visibility", "android:visibility:parent"};

    @Override // android.support.transition.y
    public String[] a() {
        return f171a;
    }

    private void d(ae aeVar) {
        aeVar.f165a.put("android:visibility:visibility", Integer.valueOf(aeVar.b.getVisibility()));
        aeVar.f165a.put("android:visibility:parent", aeVar.b.getParent());
    }

    @Override // android.support.transition.y
    public void a(ae aeVar) {
        d(aeVar);
    }

    @Override // android.support.transition.y
    public void b(ae aeVar) {
        d(aeVar);
    }

    public boolean c(ae aeVar) {
        if (aeVar == null) {
            return false;
        }
        return ((Integer) aeVar.f165a.get("android:visibility:visibility")).intValue() == 0 && ((View) aeVar.f165a.get("android:visibility:parent")) != null;
    }

    private a a(ae aeVar, ae aeVar2) {
        a aVar = new a();
        aVar.f172a = false;
        aVar.b = false;
        if (aeVar != null) {
            aVar.c = ((Integer) aeVar.f165a.get("android:visibility:visibility")).intValue();
            aVar.e = (ViewGroup) aeVar.f165a.get("android:visibility:parent");
        } else {
            aVar.c = -1;
            aVar.e = null;
        }
        if (aeVar2 != null) {
            aVar.d = ((Integer) aeVar2.f165a.get("android:visibility:visibility")).intValue();
            aVar.f = (ViewGroup) aeVar2.f165a.get("android:visibility:parent");
        } else {
            aVar.d = -1;
            aVar.f = null;
        }
        if (aeVar != null && aeVar2 != null) {
            if (aVar.c == aVar.d && aVar.e == aVar.f) {
                return aVar;
            }
            if (aVar.c != aVar.d) {
                if (aVar.c == 0) {
                    aVar.b = false;
                    aVar.f172a = true;
                } else if (aVar.d == 0) {
                    aVar.b = true;
                    aVar.f172a = true;
                }
            } else if (aVar.e != aVar.f) {
                if (aVar.f == null) {
                    aVar.b = false;
                    aVar.f172a = true;
                } else if (aVar.e == null) {
                    aVar.b = true;
                    aVar.f172a = true;
                }
            }
        }
        if (aeVar == null) {
            aVar.b = true;
            aVar.f172a = true;
        } else if (aeVar2 == null) {
            aVar.b = false;
            aVar.f172a = true;
        }
        return aVar;
    }

    @Override // android.support.transition.y
    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        boolean z = false;
        int i = -1;
        a a2 = a(aeVar, aeVar2);
        if (a2.f172a) {
            if (this.h.size() > 0 || this.g.size() > 0) {
                View view = aeVar != null ? aeVar.b : null;
                View view2 = aeVar2 != null ? aeVar2.b : null;
                int id = view != null ? view.getId() : -1;
                if (view2 != null) {
                    i = view2.getId();
                }
                z = a(view, (long) id) || a(view2, (long) i);
            }
            if (z || a2.e != null || a2.f != null) {
                if (a2.b) {
                    return a(viewGroup, aeVar, a2.c, aeVar2, a2.d);
                }
                return b(viewGroup, aeVar, a2.c, aeVar2, a2.d);
            }
        }
        return null;
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return null;
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: VisibilityPort.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f172a;
        boolean b;
        int c;
        int d;
        ViewGroup e;
        ViewGroup f;

        a() {
        }
    }
}
