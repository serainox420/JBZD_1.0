package com.facebook.ads.internal.g;

import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.s;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes.dex */
public class r<T extends s, E extends q> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class<E>, List<WeakReference<T>>> f2165a = new HashMap();
    private final Queue<E> b = new ArrayDeque();

    private void a(List<WeakReference<T>> list) {
        if (list != null) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                WeakReference<T> weakReference = list.get(i2);
                if (weakReference.get() != null) {
                    list.set(i, weakReference);
                    i++;
                }
            }
            for (int size = list.size() - 1; size >= i; size--) {
                list.remove(size);
            }
        }
    }

    private void b(E e) {
        List<WeakReference<T>> list;
        if (this.f2165a == null || (list = this.f2165a.get(e.getClass())) == null) {
            return;
        }
        a(list);
        if (list.isEmpty()) {
            return;
        }
        for (WeakReference weakReference : new ArrayList(list)) {
            s sVar = (s) weakReference.get();
            if (sVar != null && sVar.b(e)) {
                sVar.a(e);
            }
        }
    }

    public synchronized void a(E e) {
        if (this.b.isEmpty()) {
            this.b.add(e);
            while (!this.b.isEmpty()) {
                b((r<T, E>) this.b.peek());
                this.b.remove();
            }
        } else {
            this.b.add(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        r0 = r0.add(new java.lang.ref.WeakReference<>(r6));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean a(T t) {
        boolean add;
        if (t != null) {
            Class<E> a2 = t.a();
            if (this.f2165a.get(a2) == null) {
                this.f2165a.put(a2, new ArrayList());
            }
            List<WeakReference<T>> list = this.f2165a.get(a2);
            a(list);
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (list.get(i).get() == t) {
                    add = false;
                    break;
                } else {
                    i++;
                }
            }
        } else {
            add = false;
        }
        return add;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002a, code lost:
        r0.get(r3).clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        r0 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean b(T t) {
        boolean z;
        if (t != null) {
            List<WeakReference<T>> list = this.f2165a.get(t.a());
            if (list != null) {
                int size = list.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        z = false;
                        break;
                    } else if (list.get(i).get() == t) {
                        break;
                    } else {
                        i++;
                    }
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        return z;
    }
}
