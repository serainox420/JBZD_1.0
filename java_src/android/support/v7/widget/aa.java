package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GapWorker.java */
/* loaded from: classes.dex */
public final class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    static final ThreadLocal<aa> f859a = new ThreadLocal<>();
    static Comparator<b> e = new Comparator<b>() { // from class: android.support.v7.widget.aa.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(b bVar, b bVar2) {
            int i = -1;
            if ((bVar.d == null) != (bVar2.d == null)) {
                return bVar.d == null ? 1 : -1;
            } else if (bVar.f861a != bVar2.f861a) {
                if (!bVar.f861a) {
                    i = 1;
                }
                return i;
            } else {
                int i2 = bVar2.b - bVar.b;
                if (i2 == 0) {
                    int i3 = bVar.c - bVar2.c;
                    if (i3 != 0) {
                        return i3;
                    }
                    return 0;
                }
                return i2;
            }
        }
    };
    long c;
    long d;
    ArrayList<RecyclerView> b = new ArrayList<>();
    private ArrayList<b> f = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public boolean f861a;
        public int b;
        public int c;
        public RecyclerView d;
        public int e;

        b() {
        }

        public void a() {
            this.f861a = false;
            this.b = 0;
            this.c = 0;
            this.d = null;
            this.e = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GapWorker.java */
    /* loaded from: classes.dex */
    public static class a implements RecyclerView.h.a {

        /* renamed from: a  reason: collision with root package name */
        int f860a;
        int b;
        int[] c;
        int d;

        void a(int i, int i2) {
            this.f860a = i;
            this.b = i2;
        }

        void a(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            if (this.c != null) {
                Arrays.fill(this.c, -1);
            }
            RecyclerView.h hVar = recyclerView.mLayout;
            if (recyclerView.mAdapter != null && hVar != null && hVar.isItemPrefetchEnabled()) {
                if (z) {
                    if (!recyclerView.mAdapterHelper.d()) {
                        hVar.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
                    }
                } else if (!recyclerView.hasPendingAdapterUpdates()) {
                    hVar.collectAdjacentPrefetchPositions(this.f860a, this.b, recyclerView.mState, this);
                }
                if (this.d > hVar.mPrefetchMaxCountObserved) {
                    hVar.mPrefetchMaxCountObserved = this.d;
                    hVar.mPrefetchMaxObservedInInitialPrefetch = z;
                    recyclerView.mRecycler.b();
                }
            }
        }

        @Override // android.support.v7.widget.RecyclerView.h.a
        public void b(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.d * 2;
            if (this.c == null) {
                this.c = new int[4];
                Arrays.fill(this.c, -1);
            } else if (i3 >= this.c.length) {
                int[] iArr = this.c;
                this.c = new int[i3 * 2];
                System.arraycopy(iArr, 0, this.c, 0, iArr.length);
            }
            this.c[i3] = i;
            this.c[i3 + 1] = i2;
            this.d++;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a(int i) {
            if (this.c != null) {
                int i2 = this.d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.c[i3] == i) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            if (this.c != null) {
                Arrays.fill(this.c, -1);
            }
            this.d = 0;
        }
    }

    public void a(RecyclerView recyclerView) {
        this.b.add(recyclerView);
    }

    public void b(RecyclerView recyclerView) {
        this.b.remove(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.c == 0) {
            this.c = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.mPrefetchRegistry.a(i, i2);
    }

    private void a() {
        b bVar;
        int i;
        int size = this.b.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            RecyclerView recyclerView = this.b.get(i2);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.a(recyclerView, false);
                i = recyclerView.mPrefetchRegistry.d + i3;
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        this.f.ensureCapacity(i3);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.b.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                a aVar = recyclerView2.mPrefetchRegistry;
                int abs = Math.abs(aVar.f860a) + Math.abs(aVar.b);
                int i6 = i4;
                for (int i7 = 0; i7 < aVar.d * 2; i7 += 2) {
                    if (i6 >= this.f.size()) {
                        bVar = new b();
                        this.f.add(bVar);
                    } else {
                        bVar = this.f.get(i6);
                    }
                    int i8 = aVar.c[i7 + 1];
                    bVar.f861a = i8 <= abs;
                    bVar.b = abs;
                    bVar.c = i8;
                    bVar.d = recyclerView2;
                    bVar.e = aVar.c[i7];
                    i6++;
                }
                i4 = i6;
            }
        }
        Collections.sort(this.f, e);
    }

    static boolean a(RecyclerView recyclerView, int i) {
        int c = recyclerView.mChildHelper.c();
        for (int i2 = 0; i2 < c; i2++) {
            RecyclerView.u childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.d(i2));
            if (childViewHolderInt.mPosition == i && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private RecyclerView.u a(RecyclerView recyclerView, int i, long j) {
        if (a(recyclerView, i)) {
            return null;
        }
        RecyclerView.n nVar = recyclerView.mRecycler;
        RecyclerView.u a2 = nVar.a(i, false, j);
        if (a2 != null) {
            if (a2.isBound()) {
                nVar.a(a2.itemView);
                return a2;
            }
            nVar.a(a2, false);
            return a2;
        }
        return a2;
    }

    private void a(RecyclerView recyclerView, long j) {
        if (recyclerView != null) {
            if (recyclerView.mDataSetHasChangedAfterLayout && recyclerView.mChildHelper.c() != 0) {
                recyclerView.removeAndRecycleViews();
            }
            a aVar = recyclerView.mPrefetchRegistry;
            aVar.a(recyclerView, true);
            if (aVar.d != 0) {
                try {
                    android.support.v4.os.i.a("RV Nested Prefetch");
                    recyclerView.mState.a(recyclerView.mAdapter);
                    for (int i = 0; i < aVar.d * 2; i += 2) {
                        a(recyclerView, aVar.c[i], j);
                    }
                } finally {
                    android.support.v4.os.i.a();
                }
            }
        }
    }

    private void a(b bVar, long j) {
        RecyclerView.u a2 = a(bVar.d, bVar.e, bVar.f861a ? Clock.MAX_TIME : j);
        if (a2 != null && a2.mNestedRecyclerView != null) {
            a(a2.mNestedRecyclerView.get(), j);
        }
    }

    private void b(long j) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f.size()) {
                b bVar = this.f.get(i2);
                if (bVar.d != null) {
                    a(bVar, j);
                    bVar.a();
                    i = i2 + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    void a(long j) {
        a();
        b(j);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            android.support.v4.os.i.a("RV Prefetch");
            if (this.b.isEmpty()) {
                return;
            }
            int size = this.b.size();
            int i = 0;
            long j = 0;
            while (i < size) {
                RecyclerView recyclerView = this.b.get(i);
                i++;
                j = recyclerView.getWindowVisibility() == 0 ? Math.max(recyclerView.getDrawingTime(), j) : j;
            }
            if (j == 0) {
                return;
            }
            a(TimeUnit.MILLISECONDS.toNanos(j) + this.d);
        } finally {
            this.c = 0L;
            android.support.v4.os.i.a();
        }
    }
}
