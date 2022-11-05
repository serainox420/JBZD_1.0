package android.support.design.widget;

import android.support.v4.f.j;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: DirectedAcyclicGraph.java */
/* loaded from: classes.dex */
final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final j.a<ArrayList<T>> f111a = new j.b(10);
    private final android.support.v4.f.k<T, ArrayList<T>> b = new android.support.v4.f.k<>();
    private final ArrayList<T> c = new ArrayList<>();
    private final HashSet<T> d = new HashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(T t) {
        if (!this.b.containsKey(t)) {
            this.b.put(t, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(T t) {
        return this.b.containsKey(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(T t, T t2) {
        if (!this.b.containsKey(t) || !this.b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayList = this.b.get(t);
        if (arrayList == null) {
            arrayList = c();
            this.b.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List c(T t) {
        return this.b.get(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List d(T t) {
        ArrayList arrayList = null;
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null && c.contains(t)) {
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.add(this.b.b(i));
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(T t) {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null && c.contains(t)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> c = this.b.c(i);
            if (c != null) {
                a((ArrayList) c);
            }
        }
        this.b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<T> b() {
        this.c.clear();
        this.d.clear();
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            a(this.b.b(i), this.c, this.d);
        }
        return this.c;
    }

    private void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (hashSet.contains(t)) {
                throw new RuntimeException("This graph contains cyclic dependencies");
            }
            hashSet.add(t);
            ArrayList<T> arrayList2 = this.b.get(t);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    a(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(t);
            arrayList.add(t);
        }
    }

    private ArrayList<T> c() {
        ArrayList<T> a2 = this.f111a.a();
        if (a2 == null) {
            return new ArrayList<>();
        }
        return a2;
    }

    private void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f111a.a(arrayList);
    }
}
