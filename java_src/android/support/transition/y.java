package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RestrictTo;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransitionPort.java */
@TargetApi(14)
/* loaded from: classes.dex */
public abstract class y implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private static ThreadLocal<android.support.v4.f.a<Animator, a>> f194a = new ThreadLocal<>();
    long d = -1;
    long e = -1;
    TimeInterpolator f = null;
    ArrayList<Integer> g = new ArrayList<>();
    ArrayList<View> h = new ArrayList<>();
    ArrayList<Integer> i = null;
    ArrayList<View> j = null;
    ArrayList<Class> k = null;
    ArrayList<Integer> l = null;
    ArrayList<View> m = null;
    ArrayList<Class> n = null;
    ad o = null;
    ViewGroup p = null;
    boolean q = false;
    int r = 0;
    boolean s = false;
    ArrayList<b> t = null;
    ArrayList<Animator> u = new ArrayList<>();
    private String b = getClass().getName();
    private af c = new af();
    private af w = new af();
    ArrayList<Animator> v = new ArrayList<>();
    private boolean x = false;

    /* compiled from: TransitionPort.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(y yVar);

        void b(y yVar);

        void c(y yVar);

        void d(y yVar);
    }

    public abstract void a(ae aeVar);

    public abstract void b(ae aeVar);

    private static android.support.v4.f.a<Animator, a> j() {
        android.support.v4.f.a<Animator, a> aVar = f194a.get();
        if (aVar == null) {
            android.support.v4.f.a<Animator, a> aVar2 = new android.support.v4.f.a<>();
            f194a.set(aVar2);
            return aVar2;
        }
        return aVar;
    }

    public long b() {
        return this.e;
    }

    public y a(long j) {
        this.e = j;
        return this;
    }

    public long c() {
        return this.d;
    }

    public TimeInterpolator d() {
        return this.f;
    }

    public y a(TimeInterpolator timeInterpolator) {
        this.f = timeInterpolator;
        return this;
    }

    public String[] a() {
        return null;
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, ae aeVar2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    public void a(ViewGroup viewGroup, af afVar, af afVar2) {
        Animator a2;
        View view;
        ae aeVar;
        Animator animator;
        ae aeVar2;
        android.support.v4.f.a aVar = new android.support.v4.f.a(afVar2.f166a);
        SparseArray sparseArray = new SparseArray(afVar2.b.size());
        for (int i = 0; i < afVar2.b.size(); i++) {
            sparseArray.put(afVar2.b.keyAt(i), afVar2.b.valueAt(i));
        }
        android.support.v4.f.f fVar = new android.support.v4.f.f(afVar2.c.b());
        for (int i2 = 0; i2 < afVar2.c.b(); i2++) {
            fVar.b(afVar2.c.b(i2), afVar2.c.c(i2));
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (View view2 : afVar.f166a.keySet()) {
            boolean z = false;
            if (view2.getParent() instanceof ListView) {
                z = true;
            }
            if (!z) {
                int id = view2.getId();
                ae aeVar3 = afVar.f166a.get(view2) != null ? afVar.f166a.get(view2) : afVar.b.get(id);
                if (afVar2.f166a.get(view2) != null) {
                    aeVar2 = afVar2.f166a.get(view2);
                    aVar.remove(view2);
                } else if (id == -1) {
                    aeVar2 = null;
                } else {
                    aeVar2 = afVar2.b.get(id);
                    View view3 = null;
                    for (View view4 : aVar.keySet()) {
                        if (view4.getId() != id) {
                            view4 = view3;
                        }
                        view3 = view4;
                    }
                    if (view3 != null) {
                        aVar.remove(view3);
                    }
                }
                sparseArray.remove(id);
                if (a(view2, id)) {
                    arrayList.add(aeVar3);
                    arrayList2.add(aeVar2);
                }
            } else {
                ListView listView = (ListView) view2.getParent();
                if (listView.getAdapter().hasStableIds()) {
                    long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view2));
                    fVar.c(itemIdAtPosition);
                    arrayList.add(afVar.c.a(itemIdAtPosition));
                    arrayList2.add(null);
                }
            }
        }
        int b2 = afVar.c.b();
        for (int i3 = 0; i3 < b2; i3++) {
            long b3 = afVar.c.b(i3);
            if (a((View) null, b3)) {
                fVar.c(b3);
                arrayList.add(afVar.c.a(b3));
                arrayList2.add(afVar2.c.a(b3));
            }
        }
        for (View view5 : aVar.keySet()) {
            int id2 = view5.getId();
            if (a(view5, id2)) {
                ae aeVar4 = afVar.f166a.get(view5) != null ? afVar.f166a.get(view5) : afVar.b.get(id2);
                sparseArray.remove(id2);
                arrayList.add(aeVar4);
                arrayList2.add((ae) aVar.get(view5));
            }
        }
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            int keyAt = sparseArray.keyAt(i4);
            if (a((View) null, keyAt)) {
                arrayList.add(afVar.b.get(keyAt));
                arrayList2.add((ae) sparseArray.get(keyAt));
            }
        }
        int b4 = fVar.b();
        for (int i5 = 0; i5 < b4; i5++) {
            long b5 = fVar.b(i5);
            arrayList.add(afVar.c.a(b5));
            arrayList2.add((ae) fVar.a(b5));
        }
        android.support.v4.f.a<Animator, a> j = j();
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 < arrayList.size()) {
                ae aeVar5 = (ae) arrayList.get(i7);
                ae aeVar6 = (ae) arrayList2.get(i7);
                if ((aeVar5 != null || aeVar6 != null) && ((aeVar5 == null || !aeVar5.equals(aeVar6)) && (a2 = a(viewGroup, aeVar5, aeVar6)) != null)) {
                    if (aeVar6 != null) {
                        View view6 = aeVar6.b;
                        String[] a3 = a();
                        if (view6 == null || a3 == null || a3.length <= 0) {
                            aeVar = null;
                            animator = a2;
                        } else {
                            ae aeVar7 = new ae();
                            aeVar7.b = view6;
                            ae aeVar8 = afVar2.f166a.get(view6);
                            if (aeVar8 != null) {
                                for (int i8 = 0; i8 < a3.length; i8++) {
                                    aeVar7.f165a.put(a3[i8], aeVar8.f165a.get(a3[i8]));
                                }
                            }
                            int size2 = j.size();
                            int i9 = 0;
                            while (true) {
                                if (i9 >= size2) {
                                    aeVar = aeVar7;
                                    animator = a2;
                                    break;
                                }
                                a aVar2 = j.get(j.b(i9));
                                if (aVar2.c == null || aVar2.f197a != view6 || (((aVar2.b != null || i() != null) && !aVar2.b.equals(i())) || !aVar2.c.equals(aeVar7))) {
                                    i9++;
                                } else {
                                    animator = null;
                                    aeVar = aeVar7;
                                    break;
                                }
                            }
                        }
                        a2 = animator;
                        view = view6;
                    } else {
                        view = aeVar5.b;
                        aeVar = null;
                    }
                    if (a2 != null) {
                        j.put(a2, new a(view, i(), ao.a(viewGroup), aeVar));
                        this.u.add(a2);
                    }
                }
                i6 = i7 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, long j) {
        if (this.i == null || !this.i.contains(Integer.valueOf((int) j))) {
            if (this.j != null && this.j.contains(view)) {
                return false;
            }
            if (this.k != null && view != null) {
                int size = this.k.size();
                for (int i = 0; i < size; i++) {
                    if (this.k.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.g.size() == 0 && this.h.size() == 0) {
                return true;
            }
            if (this.g.size() > 0) {
                for (int i2 = 0; i2 < this.g.size(); i2++) {
                    if (this.g.get(i2).intValue() == j) {
                        return true;
                    }
                }
            }
            if (view == null || this.h.size() <= 0) {
                return false;
            }
            for (int i3 = 0; i3 < this.h.size(); i3++) {
                if (this.h.get(i3) == view) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    public void e() {
        f();
        android.support.v4.f.a<Animator, a> j = j();
        Iterator<Animator> it = this.u.iterator();
        while (it.hasNext()) {
            Animator next = it.next();
            if (j.containsKey(next)) {
                f();
                a(next, j);
            }
        }
        this.u.clear();
        g();
    }

    private void a(Animator animator, final android.support.v4.f.a<Animator, a> aVar) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.y.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    y.this.v.add(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    aVar.remove(animator2);
                    y.this.v.remove(animator2);
                }
            });
            a(animator);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup, boolean z) {
        a(z);
        if (this.g.size() > 0 || this.h.size() > 0) {
            if (this.g.size() > 0) {
                for (int i = 0; i < this.g.size(); i++) {
                    int intValue = this.g.get(i).intValue();
                    View findViewById = viewGroup.findViewById(intValue);
                    if (findViewById != null) {
                        ae aeVar = new ae();
                        aeVar.b = findViewById;
                        if (z) {
                            a(aeVar);
                        } else {
                            b(aeVar);
                        }
                        if (z) {
                            this.c.f166a.put(findViewById, aeVar);
                            if (intValue >= 0) {
                                this.c.b.put(intValue, aeVar);
                            }
                        } else {
                            this.w.f166a.put(findViewById, aeVar);
                            if (intValue >= 0) {
                                this.w.b.put(intValue, aeVar);
                            }
                        }
                    }
                }
            }
            if (this.h.size() > 0) {
                for (int i2 = 0; i2 < this.h.size(); i2++) {
                    View view = this.h.get(i2);
                    if (view != null) {
                        ae aeVar2 = new ae();
                        aeVar2.b = view;
                        if (z) {
                            a(aeVar2);
                        } else {
                            b(aeVar2);
                        }
                        if (z) {
                            this.c.f166a.put(view, aeVar2);
                        } else {
                            this.w.f166a.put(view, aeVar2);
                        }
                    }
                }
                return;
            }
            return;
        }
        a((View) viewGroup, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        if (z) {
            this.c.f166a.clear();
            this.c.b.clear();
            this.c.c.c();
            return;
        }
        this.w.f166a.clear();
        this.w.b.clear();
        this.w.c.c();
    }

    private void a(View view, boolean z) {
        int i;
        long itemIdAtPosition;
        if (view != null) {
            boolean z2 = view.getParent() instanceof ListView;
            if (!z2 || ((ListView) view.getParent()).getAdapter().hasStableIds()) {
                if (!z2) {
                    i = view.getId();
                    itemIdAtPosition = -1;
                } else {
                    ListView listView = (ListView) view.getParent();
                    i = -1;
                    itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                }
                if (this.i == null || !this.i.contains(Integer.valueOf(i))) {
                    if (this.j == null || !this.j.contains(view)) {
                        if (this.k != null && view != null) {
                            int size = this.k.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                if (this.k.get(i2).isInstance(view)) {
                                    return;
                                }
                            }
                        }
                        ae aeVar = new ae();
                        aeVar.b = view;
                        if (z) {
                            a(aeVar);
                        } else {
                            b(aeVar);
                        }
                        if (z) {
                            if (!z2) {
                                this.c.f166a.put(view, aeVar);
                                if (i >= 0) {
                                    this.c.b.put(i, aeVar);
                                }
                            } else {
                                this.c.c.b(itemIdAtPosition, aeVar);
                            }
                        } else if (!z2) {
                            this.w.f166a.put(view, aeVar);
                            if (i >= 0) {
                                this.w.b.put(i, aeVar);
                            }
                        } else {
                            this.w.c.b(itemIdAtPosition, aeVar);
                        }
                        if (view instanceof ViewGroup) {
                            if (this.l == null || !this.l.contains(Integer.valueOf(i))) {
                                if (this.m == null || !this.m.contains(view)) {
                                    if (this.n != null && view != null) {
                                        int size2 = this.n.size();
                                        for (int i3 = 0; i3 < size2; i3++) {
                                            if (this.n.get(i3).isInstance(view)) {
                                                return;
                                            }
                                        }
                                    }
                                    ViewGroup viewGroup = (ViewGroup) view;
                                    for (int i4 = 0; i4 < viewGroup.getChildCount(); i4++) {
                                        a(viewGroup.getChildAt(i4), z);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    @RestrictTo
    public void a(View view) {
        if (!this.x) {
            android.support.v4.f.a<Animator, a> j = j();
            int size = j.size();
            ao a2 = ao.a(view);
            for (int i = size - 1; i >= 0; i--) {
                a c2 = j.c(i);
                if (c2.f197a != null && a2.equals(c2.d)) {
                    j.b(i).cancel();
                }
            }
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((b) arrayList.get(i2)).b(this);
                }
            }
            this.s = true;
        }
    }

    @RestrictTo
    public void b(View view) {
        if (this.s) {
            if (!this.x) {
                android.support.v4.f.a<Animator, a> j = j();
                int size = j.size();
                ao a2 = ao.a(view);
                for (int i = size - 1; i >= 0; i--) {
                    a c2 = j.c(i);
                    if (c2.f197a != null && a2.equals(c2.d)) {
                        j.b(i).end();
                    }
                }
                if (this.t != null && this.t.size() > 0) {
                    ArrayList arrayList = (ArrayList) this.t.clone();
                    int size2 = arrayList.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        ((b) arrayList.get(i2)).c(this);
                    }
                }
            }
            this.s = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewGroup viewGroup) {
        a aVar;
        boolean z;
        android.support.v4.f.a<Animator, a> j = j();
        for (int size = j.size() - 1; size >= 0; size--) {
            Animator b2 = j.b(size);
            if (b2 != null && (aVar = j.get(b2)) != null && aVar.f197a != null && aVar.f197a.getContext() == viewGroup.getContext()) {
                ae aeVar = aVar.c;
                View view = aVar.f197a;
                ae aeVar2 = this.w.f166a != null ? this.w.f166a.get(view) : null;
                ae aeVar3 = aeVar2 == null ? this.w.b.get(view.getId()) : aeVar2;
                if (aeVar != null && aeVar3 != null) {
                    for (String str : aeVar.f165a.keySet()) {
                        Object obj = aeVar.f165a.get(str);
                        Object obj2 = aeVar3.f165a.get(str);
                        if (obj != null && obj2 != null && !obj.equals(obj2)) {
                            z = true;
                            break;
                        }
                    }
                }
                z = false;
                if (z) {
                    if (b2.isRunning() || b2.isStarted()) {
                        b2.cancel();
                    } else {
                        j.remove(b2);
                    }
                }
            }
        }
        a(viewGroup, this.c, this.w);
        e();
    }

    @RestrictTo
    protected void a(Animator animator) {
        if (animator == null) {
            g();
            return;
        }
        if (b() >= 0) {
            animator.setDuration(b());
        }
        if (c() >= 0) {
            animator.setStartDelay(c());
        }
        if (d() != null) {
            animator.setInterpolator(d());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: android.support.transition.y.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                y.this.g();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    public void f() {
        if (this.r == 0) {
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((b) arrayList.get(i)).d(this);
                }
            }
            this.x = false;
        }
        this.r++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo
    public void g() {
        this.r--;
        if (this.r == 0) {
            if (this.t != null && this.t.size() > 0) {
                ArrayList arrayList = (ArrayList) this.t.clone();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((b) arrayList.get(i)).a(this);
                }
            }
            for (int i2 = 0; i2 < this.c.c.b(); i2++) {
                View view = this.c.c.c(i2).b;
            }
            for (int i3 = 0; i3 < this.w.c.b(); i3++) {
                View view2 = this.w.c.c(i3).b;
            }
            this.x = true;
        }
    }

    public y a(b bVar) {
        if (this.t == null) {
            this.t = new ArrayList<>();
        }
        this.t.add(bVar);
        return this;
    }

    public y b(b bVar) {
        if (this.t != null) {
            this.t.remove(bVar);
            if (this.t.size() == 0) {
                this.t = null;
            }
        }
        return this;
    }

    public String toString() {
        return a("");
    }

    @Override // 
    /* renamed from: h */
    public y clone() {
        try {
            y yVar = (y) super.clone();
            try {
                yVar.u = new ArrayList<>();
                yVar.c = new af();
                yVar.w = new af();
                return yVar;
            } catch (CloneNotSupportedException e) {
                return yVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public String i() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(String str) {
        String str2;
        String str3 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.e != -1) {
            str3 = str3 + "dur(" + this.e + ") ";
        }
        if (this.d != -1) {
            str3 = str3 + "dly(" + this.d + ") ";
        }
        if (this.f != null) {
            str3 = str3 + "interp(" + this.f + ") ";
        }
        if (this.g.size() > 0 || this.h.size() > 0) {
            String str4 = str3 + "tgts(";
            if (this.g.size() > 0) {
                str2 = str4;
                for (int i = 0; i < this.g.size(); i++) {
                    if (i > 0) {
                        str2 = str2 + ", ";
                    }
                    str2 = str2 + this.g.get(i);
                }
            } else {
                str2 = str4;
            }
            if (this.h.size() > 0) {
                for (int i2 = 0; i2 < this.h.size(); i2++) {
                    if (i2 > 0) {
                        str2 = str2 + ", ";
                    }
                    str2 = str2 + this.h.get(i2);
                }
            }
            return str2 + ")";
        }
        return str3;
    }

    /* compiled from: TransitionPort.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class c implements b {
        @Override // android.support.transition.y.b
        public void d(y yVar) {
        }

        @Override // android.support.transition.y.b
        public void a(y yVar) {
        }

        @Override // android.support.transition.y.b
        public void b(y yVar) {
        }

        @Override // android.support.transition.y.b
        public void c(y yVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TransitionPort.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        View f197a;
        String b;
        ae c;
        ao d;

        a(View view, String str, ao aoVar, ae aeVar) {
            this.f197a = view;
            this.b = str;
            this.c = aeVar;
            this.d = aoVar;
        }
    }
}
