package android.support.v4.app;

import android.graphics.Rect;
import android.os.Build;
import android.support.v4.app.j;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentTransition.java */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f272a = {0, 3, 0, 1, 5, 4, 7, 6};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(v vVar, ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, boolean z) {
        if (vVar.m >= 1 && Build.VERSION.SDK_INT >= 21) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = i; i3 < i2; i3++) {
                j jVar = arrayList.get(i3);
                if (arrayList2.get(i3).booleanValue()) {
                    b(jVar, sparseArray, z);
                } else {
                    a(jVar, sparseArray, z);
                }
            }
            if (sparseArray.size() != 0) {
                View view = new View(vVar.n.i());
                int size = sparseArray.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = sparseArray.keyAt(i4);
                    android.support.v4.f.a<String, String> a2 = a(keyAt, arrayList, arrayList2, i, i2);
                    a aVar = (a) sparseArray.valueAt(i4);
                    if (z) {
                        a(vVar, keyAt, aVar, view, a2);
                    } else {
                        b(vVar, keyAt, aVar, view, a2);
                    }
                }
            }
        }
    }

    private static android.support.v4.f.a<String, String> a(int i, ArrayList<j> arrayList, ArrayList<Boolean> arrayList2, int i2, int i3) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        android.support.v4.f.a<String, String> aVar = new android.support.v4.f.a<>();
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            j jVar = arrayList.get(i4);
            if (jVar.b(i)) {
                boolean booleanValue = arrayList2.get(i4).booleanValue();
                if (jVar.s != null) {
                    int size = jVar.s.size();
                    if (booleanValue) {
                        arrayList3 = jVar.s;
                        arrayList4 = jVar.t;
                    } else {
                        ArrayList<String> arrayList5 = jVar.s;
                        arrayList3 = jVar.t;
                        arrayList4 = arrayList5;
                    }
                    for (int i5 = 0; i5 < size; i5++) {
                        String str = arrayList4.get(i5);
                        String str2 = arrayList3.get(i5);
                        String remove = aVar.remove(str2);
                        if (remove != null) {
                            aVar.put(str, remove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    private static void a(v vVar, int i, a aVar, View view, android.support.v4.f.a<String, String> aVar2) {
        ViewGroup viewGroup = null;
        if (vVar.o.a()) {
            viewGroup = (ViewGroup) vVar.o.a(i);
        }
        if (viewGroup != null) {
            Fragment fragment = aVar.f277a;
            Fragment fragment2 = aVar.d;
            boolean z = aVar.b;
            boolean z2 = aVar.e;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Object a2 = a(fragment, z);
            Object b = b(fragment2, z2);
            Object a3 = a(viewGroup, view, aVar2, aVar, arrayList2, arrayList, a2, b);
            if (a2 != null || a3 != null || b != null) {
                ArrayList<View> b2 = b(b, fragment2, arrayList2, view);
                ArrayList<View> b3 = b(a2, fragment, arrayList, view);
                b(b3, 4);
                Object a4 = a(a2, b, a3, fragment, z);
                if (a4 != null) {
                    a(b, fragment2, b2);
                    ArrayList<String> a5 = aa.a((ArrayList<View>) arrayList);
                    aa.a(a4, a2, b3, b, b2, a3, arrayList);
                    aa.a(viewGroup, a4);
                    aa.a(viewGroup, arrayList2, arrayList, a5, aVar2);
                    b(b3, 0);
                    aa.a(a3, (ArrayList<View>) arrayList2, (ArrayList<View>) arrayList);
                }
            }
        }
    }

    private static void a(Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            aa.b(obj, fragment.getView(), arrayList);
            at.a(fragment.mContainer, new Runnable() { // from class: android.support.v4.app.z.1
                @Override // java.lang.Runnable
                public void run() {
                    z.b(arrayList, 4);
                }
            });
        }
    }

    private static void b(v vVar, int i, a aVar, View view, android.support.v4.f.a<String, String> aVar2) {
        ViewGroup viewGroup = null;
        if (vVar.o.a()) {
            viewGroup = (ViewGroup) vVar.o.a(i);
        }
        if (viewGroup != null) {
            Fragment fragment = aVar.f277a;
            Fragment fragment2 = aVar.d;
            boolean z = aVar.b;
            boolean z2 = aVar.e;
            Object a2 = a(fragment, z);
            Object b = b(fragment2, z2);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Object b2 = b(viewGroup, view, aVar2, aVar, arrayList, arrayList2, a2, b);
            if (a2 != null || b2 != null || b != null) {
                ArrayList<View> b3 = b(b, fragment2, arrayList, view);
                Object obj = (b3 == null || b3.isEmpty()) ? null : b;
                aa.b(a2, view);
                Object a3 = a(a2, obj, b2, fragment, aVar.b);
                if (a3 != null) {
                    ArrayList arrayList3 = new ArrayList();
                    aa.a(a3, a2, arrayList3, obj, b3, b2, arrayList2);
                    a(viewGroup, fragment, view, arrayList2, a2, arrayList3, obj, b3);
                    aa.a((View) viewGroup, (ArrayList<View>) arrayList2, (Map<String, String>) aVar2);
                    aa.a(viewGroup, a3);
                    aa.a(viewGroup, (ArrayList<View>) arrayList2, (Map<String, String>) aVar2);
                }
            }
        }
    }

    private static void a(ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        at.a(viewGroup, new Runnable() { // from class: android.support.v4.app.z.2
            @Override // java.lang.Runnable
            public void run() {
                if (obj != null) {
                    aa.c(obj, view);
                    arrayList2.addAll(z.b(obj, fragment, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(view);
                        aa.b(obj2, (ArrayList<View>) arrayList3, (ArrayList<View>) arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static Object a(Fragment fragment, Fragment fragment2, boolean z) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return aa.b(aa.a(sharedElementEnterTransition));
    }

    private static Object a(Fragment fragment, boolean z) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return aa.a(enterTransition);
    }

    private static Object b(Fragment fragment, boolean z) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return aa.a(exitTransition);
    }

    private static Object a(ViewGroup viewGroup, View view, android.support.v4.f.a<String, String> aVar, a aVar2, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final Rect rect;
        final View view2 = null;
        final Fragment fragment = aVar2.f277a;
        final Fragment fragment2 = aVar2.d;
        if (fragment != null) {
            fragment.getView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.b;
        Object a2 = aVar.isEmpty() ? null : a(fragment, fragment2, z);
        android.support.v4.f.a<String, View> b = b(aVar, a2, aVar2);
        final android.support.v4.f.a<String, View> c = c(aVar, a2, aVar2);
        if (aVar.isEmpty()) {
            if (b != null) {
                b.clear();
            }
            if (c != null) {
                c.clear();
                obj3 = null;
            } else {
                obj3 = null;
            }
        } else {
            a(arrayList, b, aVar.keySet());
            a(arrayList2, c, aVar.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        b(fragment, fragment2, z, b, true);
        if (obj3 != null) {
            arrayList2.add(view);
            aa.a(obj3, view, arrayList);
            a(obj3, obj2, b, aVar2.e, aVar2.f);
            rect = new Rect();
            view2 = b(c, aVar2, obj, z);
            if (view2 != null) {
                aa.a(obj, rect);
            }
        } else {
            rect = null;
        }
        at.a(viewGroup, new Runnable() { // from class: android.support.v4.app.z.3
            @Override // java.lang.Runnable
            public void run() {
                z.b(Fragment.this, fragment2, z, (android.support.v4.f.a<String, View>) c, false);
                if (view2 != null) {
                    aa.a(view2, rect);
                }
            }
        });
        return obj3;
    }

    private static void a(ArrayList<View> arrayList, android.support.v4.f.a<String, View> aVar, Collection<String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View c = aVar.c(size);
            if (collection.contains(android.support.v4.view.ai.u(c))) {
                arrayList.add(c);
            }
        }
    }

    private static Object b(ViewGroup viewGroup, final View view, final android.support.v4.f.a<String, String> aVar, final a aVar2, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        final Object obj3;
        final Rect rect;
        final Fragment fragment = aVar2.f277a;
        final Fragment fragment2 = aVar2.d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z = aVar2.b;
        Object a2 = aVar.isEmpty() ? null : a(fragment, fragment2, z);
        android.support.v4.f.a<String, View> b = b(aVar, a2, aVar2);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(b.values());
            obj3 = a2;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        b(fragment, fragment2, z, b, true);
        if (obj3 != null) {
            rect = new Rect();
            aa.a(obj3, view, arrayList);
            a(obj3, obj2, b, aVar2.e, aVar2.f);
            if (obj != null) {
                aa.a(obj, rect);
            }
        } else {
            rect = null;
        }
        at.a(viewGroup, new Runnable() { // from class: android.support.v4.app.z.4
            @Override // java.lang.Runnable
            public void run() {
                android.support.v4.f.a c = z.c(android.support.v4.f.a.this, obj3, aVar2);
                if (c != null) {
                    arrayList2.addAll(c.values());
                    arrayList2.add(view);
                }
                z.b(fragment, fragment2, z, (android.support.v4.f.a<String, View>) c, false);
                if (obj3 != null) {
                    aa.a(obj3, (ArrayList<View>) arrayList, (ArrayList<View>) arrayList2);
                    View b2 = z.b(c, aVar2, obj, z);
                    if (b2 != null) {
                        aa.a(b2, rect);
                    }
                }
            }
        });
        return obj3;
    }

    private static android.support.v4.f.a<String, View> b(android.support.v4.f.a<String, String> aVar, Object obj, a aVar2) {
        ArrayList<String> arrayList;
        ay ayVar;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        Fragment fragment = aVar2.d;
        android.support.v4.f.a<String, View> aVar3 = new android.support.v4.f.a<>();
        aa.a((Map<String, View>) aVar3, fragment.getView());
        j jVar = aVar2.f;
        if (aVar2.e) {
            ay enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = jVar.t;
            ayVar = enterTransitionCallback;
        } else {
            ay exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = jVar.s;
            ayVar = exitTransitionCallback;
        }
        aVar3.a((Collection<?>) arrayList);
        if (ayVar != null) {
            ayVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view = aVar3.get(str);
                if (view == null) {
                    aVar.remove(str);
                } else if (!str.equals(android.support.v4.view.ai.u(view))) {
                    aVar.put(android.support.v4.view.ai.u(view), aVar.remove(str));
                }
            }
        } else {
            aVar.a((Collection<?>) aVar3.keySet());
        }
        return aVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static android.support.v4.f.a<String, View> c(android.support.v4.f.a<String, String> aVar, Object obj, a aVar2) {
        ArrayList<String> arrayList;
        ay ayVar;
        String a2;
        Fragment fragment = aVar2.f277a;
        View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        android.support.v4.f.a<String, View> aVar3 = new android.support.v4.f.a<>();
        aa.a((Map<String, View>) aVar3, view);
        j jVar = aVar2.c;
        if (aVar2.b) {
            ay exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = jVar.s;
            ayVar = exitTransitionCallback;
        } else {
            ay enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = jVar.t;
            ayVar = enterTransitionCallback;
        }
        if (arrayList != null) {
            aVar3.a((Collection<?>) arrayList);
        }
        if (ayVar != null) {
            ayVar.a(arrayList, aVar3);
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                String str = arrayList.get(size);
                View view2 = aVar3.get(str);
                if (view2 == null) {
                    String a3 = a(aVar, str);
                    if (a3 != null) {
                        aVar.remove(a3);
                    }
                } else if (!str.equals(android.support.v4.view.ai.u(view2)) && (a2 = a(aVar, str)) != null) {
                    aVar.put(a2, android.support.v4.view.ai.u(view2));
                }
            }
        } else {
            a(aVar, aVar3);
        }
        return aVar3;
    }

    private static String a(android.support.v4.f.a<String, String> aVar, String str) {
        int size = aVar.size();
        for (int i = 0; i < size; i++) {
            if (str.equals(aVar.c(i))) {
                return aVar.b(i);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View b(android.support.v4.f.a<String, View> aVar, a aVar2, Object obj, boolean z) {
        String str;
        j jVar = aVar2.c;
        if (obj != null && aVar != null && jVar.s != null && !jVar.s.isEmpty()) {
            if (z) {
                str = jVar.s.get(0);
            } else {
                str = jVar.t.get(0);
            }
            return aVar.get(str);
        }
        return null;
    }

    private static void a(Object obj, Object obj2, android.support.v4.f.a<String, View> aVar, boolean z, j jVar) {
        String str;
        if (jVar.s != null && !jVar.s.isEmpty()) {
            if (z) {
                str = jVar.t.get(0);
            } else {
                str = jVar.s.get(0);
            }
            View view = aVar.get(str);
            aa.a(obj, view);
            if (obj2 != null) {
                aa.a(obj2, view);
            }
        }
    }

    private static void a(android.support.v4.f.a<String, String> aVar, android.support.v4.f.a<String, View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.c(size))) {
                aVar.d(size);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Fragment fragment, Fragment fragment2, boolean z, android.support.v4.f.a<String, View> aVar, boolean z2) {
        ay enterTransitionCallback;
        if (z) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(aVar.b(i));
                arrayList.add(aVar.c(i));
            }
            if (z2) {
                enterTransitionCallback.a(arrayList2, arrayList, (List<View>) null);
            } else {
                enterTransitionCallback.b(arrayList2, arrayList, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<View> b(Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        ArrayList<View> arrayList2 = null;
        if (obj != null) {
            arrayList2 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                aa.a(arrayList2, view2);
            }
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.add(view);
                aa.a(obj, arrayList2);
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(ArrayList<View> arrayList, int i) {
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).setVisibility(i);
            }
        }
    }

    private static Object a(Object obj, Object obj2, Object obj3, Fragment fragment, boolean z) {
        boolean z2 = true;
        if (obj != null && obj2 != null && fragment != null) {
            z2 = z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap();
        }
        if (z2) {
            return aa.a(obj2, obj, obj3);
        }
        return aa.b(obj2, obj, obj3);
    }

    public static void a(j jVar, SparseArray<a> sparseArray, boolean z) {
        int size = jVar.c.size();
        for (int i = 0; i < size; i++) {
            a(jVar, jVar.c.get(i), sparseArray, false, z);
        }
    }

    public static void b(j jVar, SparseArray<a> sparseArray, boolean z) {
        if (jVar.b.o.a()) {
            for (int size = jVar.c.size() - 1; size >= 0; size--) {
                a(jVar, jVar.c.get(size), sparseArray, true, z);
            }
        }
    }

    private static void a(j jVar, j.a aVar, SparseArray<a> sparseArray, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        a aVar2;
        a aVar3;
        Fragment fragment = aVar.b;
        int i = fragment.mContainerId;
        if (i != 0) {
            switch (z ? f272a[aVar.f258a] : aVar.f258a) {
                case 1:
                case 7:
                    if (z2) {
                        z9 = fragment.mIsNewlyAdded;
                    } else {
                        z9 = !fragment.mAdded && !fragment.mHidden;
                    }
                    z4 = true;
                    z5 = false;
                    z6 = false;
                    z7 = z9;
                    break;
                case 2:
                default:
                    z4 = false;
                    z5 = false;
                    z6 = false;
                    z7 = false;
                    break;
                case 3:
                case 6:
                    if (z2) {
                        z3 = !fragment.mAdded && fragment.mView != null && fragment.mView.getVisibility() == 0 && fragment.mPostponedAlpha >= BitmapDescriptorFactory.HUE_RED;
                    } else {
                        z3 = fragment.mAdded && !fragment.mHidden;
                    }
                    z4 = false;
                    z5 = z3;
                    z6 = true;
                    z7 = false;
                    break;
                case 4:
                    if (z2) {
                        z8 = fragment.mHiddenChanged && fragment.mAdded && fragment.mHidden;
                    } else {
                        z8 = fragment.mAdded && !fragment.mHidden;
                    }
                    z4 = false;
                    z5 = z8;
                    z6 = true;
                    z7 = false;
                    break;
                case 5:
                    if (z2) {
                        z10 = fragment.mHiddenChanged && !fragment.mHidden && fragment.mAdded;
                    } else {
                        z10 = fragment.mHidden;
                    }
                    z4 = true;
                    z5 = false;
                    z6 = false;
                    z7 = z10;
                    break;
            }
            a aVar4 = sparseArray.get(i);
            if (z7) {
                aVar2 = a(aVar4, sparseArray, i);
                aVar2.f277a = fragment;
                aVar2.b = z;
                aVar2.c = jVar;
            } else {
                aVar2 = aVar4;
            }
            if (!z2 && z4) {
                if (aVar2 != null && aVar2.d == fragment) {
                    aVar2.d = null;
                }
                v vVar = jVar.b;
                if (fragment.mState < 1 && vVar.m >= 1 && !jVar.u) {
                    vVar.f(fragment);
                    vVar.a(fragment, 1, 0, 0, false);
                }
            }
            if (!z5 || !(aVar2 == null || aVar2.d == null)) {
                aVar3 = aVar2;
            } else {
                aVar3 = a(aVar2, sparseArray, i);
                aVar3.d = fragment;
                aVar3.e = z;
                aVar3.f = jVar;
            }
            if (!z2 && z6 && aVar3 != null && aVar3.f277a == fragment) {
                aVar3.f277a = null;
            }
        }
    }

    private static a a(a aVar, SparseArray<a> sparseArray, int i) {
        if (aVar == null) {
            a aVar2 = new a();
            sparseArray.put(i, aVar2);
            return aVar2;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FragmentTransition.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public Fragment f277a;
        public boolean b;
        public j c;
        public Fragment d;
        public boolean e;
        public j f;

        a() {
        }
    }
}
