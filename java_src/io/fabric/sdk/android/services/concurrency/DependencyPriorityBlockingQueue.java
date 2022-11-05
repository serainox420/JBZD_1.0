package io.fabric.sdk.android.services.concurrency;

import io.fabric.sdk.android.services.concurrency.a;
import io.fabric.sdk.android.services.concurrency.f;
import io.fabric.sdk.android.services.concurrency.i;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes3.dex */
public class DependencyPriorityBlockingQueue<E extends a & i & f> extends PriorityBlockingQueue<E> {

    /* renamed from: a  reason: collision with root package name */
    final Queue<E> f5691a = new LinkedList();
    private final ReentrantLock b = new ReentrantLock();

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    /* renamed from: take */
    public E mo559take() throws InterruptedException {
        return b(0, null, null);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    /* renamed from: peek */
    public E mo556peek() {
        try {
            return b(1, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    /* renamed from: poll */
    public E mo558poll(long j, TimeUnit timeUnit) throws InterruptedException {
        return b(3, Long.valueOf(j), timeUnit);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue
    /* renamed from: poll */
    public E mo557poll() {
        try {
            return b(2, null, null);
        } catch (InterruptedException e) {
            return null;
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public int size() {
        try {
            this.b.lock();
            return this.f5691a.size() + super.size();
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        try {
            this.b.lock();
            return (T[]) a(super.toArray(tArr), this.f5691a.toArray(tArr));
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        try {
            this.b.lock();
            return a(super.toArray(), this.f5691a.toArray());
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection) {
        try {
            this.b.lock();
            int drainTo = super.drainTo(collection) + this.f5691a.size();
            while (!this.f5691a.isEmpty()) {
                collection.add(this.f5691a.poll());
            }
            return drainTo;
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public int drainTo(Collection<? super E> collection, int i) {
        try {
            this.b.lock();
            int drainTo = super.drainTo(collection, i);
            while (!this.f5691a.isEmpty() && drainTo <= i) {
                collection.add(this.f5691a.poll());
                drainTo++;
            }
            return drainTo;
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean contains(Object obj) {
        boolean z;
        try {
            this.b.lock();
            if (!super.contains(obj)) {
                if (!this.f5691a.contains(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        try {
            this.b.lock();
            this.f5691a.clear();
            super.clear();
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public boolean remove(Object obj) {
        boolean z;
        try {
            this.b.lock();
            if (!super.remove(obj)) {
                if (!this.f5691a.remove(obj)) {
                    z = false;
                    return z;
                }
            }
            z = true;
            return z;
        } finally {
            this.b.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        try {
            this.b.lock();
            return super.removeAll(collection) | this.f5691a.removeAll(collection);
        } finally {
            this.b.unlock();
        }
    }

    E a(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        switch (i) {
            case 0:
                return (E) ((a) super.take());
            case 1:
                return (E) ((a) super.peek());
            case 2:
                return (E) ((a) super.poll());
            case 3:
                return (E) ((a) super.poll(l.longValue(), timeUnit));
            default:
                return null;
        }
    }

    boolean a(int i, E e) {
        try {
            this.b.lock();
            if (i == 1) {
                super.remove(e);
            }
            return this.f5691a.offer(e);
        } finally {
            this.b.unlock();
        }
    }

    E b(int i, Long l, TimeUnit timeUnit) throws InterruptedException {
        E a2;
        while (true) {
            a2 = a(i, l, timeUnit);
            if (a2 == null || a(a2)) {
                break;
            }
            a(i, (int) a2);
        }
        return a2;
    }

    boolean a(E e) {
        return e.areDependenciesMet();
    }

    public void recycleBlockedQueue() {
        try {
            this.b.lock();
            Iterator<E> it = this.f5691a.iterator();
            while (it.hasNext()) {
                E next = it.next();
                if (a(next)) {
                    super.offer(next);
                    it.remove();
                }
            }
        } finally {
            this.b.unlock();
        }
    }

    <T> T[] a(T[] tArr, T[] tArr2) {
        int length = tArr.length;
        int length2 = tArr2.length;
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), length + length2));
        System.arraycopy(tArr, 0, tArr3, 0, length);
        System.arraycopy(tArr2, 0, tArr3, length, length2);
        return tArr3;
    }
}
