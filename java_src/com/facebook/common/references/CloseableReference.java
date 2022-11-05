package com.facebook.common.references;

import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.logging.FLog;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public abstract class CloseableReference<T> implements Closeable, Cloneable {
    @Nullable
    private static volatile UnclosedReferenceListener sUnclosedReferenceListener;
    @GuardedBy("this")
    protected boolean mIsClosed;
    @Nullable
    protected Throwable mRelevantTrace;
    protected final SharedReference<T> mSharedReference;
    private static Class<CloseableReference> TAG = CloseableReference.class;
    private static final ResourceReleaser<Closeable> DEFAULT_CLOSEABLE_RELEASER = new ResourceReleaser<Closeable>() { // from class: com.facebook.common.references.CloseableReference.1
        @Override // com.facebook.common.references.ResourceReleaser
        public void release(Closeable closeable) {
            try {
                Closeables.close(closeable, true);
            } catch (IOException e) {
            }
        }
    };
    private static volatile boolean sUseFinalizers = true;

    /* loaded from: classes.dex */
    public interface UnclosedReferenceListener {
        void onUnclosedReferenceFinalized(CloseableReference<?> closeableReference, Throwable th);
    }

    private CloseableReference(SharedReference<T> sharedReference) {
        this.mIsClosed = false;
        this.mSharedReference = (SharedReference) Preconditions.checkNotNull(sharedReference);
        sharedReference.addReference();
        this.mRelevantTrace = getTraceOrNull();
    }

    private CloseableReference(T t, ResourceReleaser<T> resourceReleaser) {
        this.mIsClosed = false;
        this.mSharedReference = new SharedReference<>(t, resourceReleaser);
        this.mRelevantTrace = getTraceOrNull();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lcom/facebook/common/references/CloseableReference<TT;>; */
    @Nullable
    public static CloseableReference of(@Nullable Closeable closeable) {
        if (closeable == null) {
            return null;
        }
        return makeCloseableReference(closeable, DEFAULT_CLOSEABLE_RELEASER);
    }

    @Nullable
    public static <T> CloseableReference<T> of(@Nullable T t, ResourceReleaser<T> resourceReleaser) {
        if (t == null) {
            return null;
        }
        return makeCloseableReference(t, resourceReleaser);
    }

    private static <T> CloseableReference<T> makeCloseableReference(@Nullable T t, ResourceReleaser<T> resourceReleaser) {
        return sUseFinalizers ? new CloseableReferenceWithFinalizer(t, resourceReleaser) : new CloseableReferenceWithoutFinalizer(t, resourceReleaser);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.mIsClosed) {
                this.mIsClosed = true;
                this.mSharedReference.deleteReference();
            }
        }
    }

    public synchronized T get() {
        Preconditions.checkState(!this.mIsClosed);
        return this.mSharedReference.get();
    }

    /* renamed from: clone */
    public synchronized CloseableReference<T> m63clone() {
        this.mRelevantTrace = getTraceOrNull();
        Preconditions.checkState(isValid());
        return makeCloseableReference();
    }

    public synchronized CloseableReference<T> cloneOrNull() {
        this.mRelevantTrace = getTraceOrNull();
        return isValid() ? makeCloseableReference() : null;
    }

    private CloseableReference<T> makeCloseableReference() {
        return sUseFinalizers ? new CloseableReferenceWithFinalizer((SharedReference) this.mSharedReference) : new CloseableReferenceWithoutFinalizer((SharedReference) this.mSharedReference);
    }

    public synchronized boolean isValid() {
        return !this.mIsClosed;
    }

    public static boolean isUnclosedTrackingEnabled() {
        return sUnclosedReferenceListener != null;
    }

    public void setUnclosedRelevantTrance(Throwable th) {
        this.mRelevantTrace = th;
    }

    @VisibleForTesting
    public synchronized SharedReference<T> getUnderlyingReferenceTestOnly() {
        return this.mSharedReference;
    }

    public synchronized int getValueHash() {
        return isValid() ? System.identityHashCode(this.mSharedReference.get()) : 0;
    }

    public static boolean isValid(@Nullable CloseableReference<?> closeableReference) {
        return closeableReference != null && closeableReference.isValid();
    }

    @Nullable
    public static <T> CloseableReference<T> cloneOrNull(@Nullable CloseableReference<T> closeableReference) {
        if (closeableReference != null) {
            return closeableReference.cloneOrNull();
        }
        return null;
    }

    public static <T> List<CloseableReference<T>> cloneOrNull(Collection<CloseableReference<T>> collection) {
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (CloseableReference<T> closeableReference : collection) {
            arrayList.add(cloneOrNull(closeableReference));
        }
        return arrayList;
    }

    public static void closeSafely(@Nullable CloseableReference<?> closeableReference) {
        if (closeableReference != null) {
            closeableReference.close();
        }
    }

    public static void closeSafely(@Nullable Iterable<? extends CloseableReference<?>> iterable) {
        if (iterable != null) {
            for (CloseableReference<?> closeableReference : iterable) {
                closeSafely(closeableReference);
            }
        }
    }

    public static void setUnclosedReferenceListener(UnclosedReferenceListener unclosedReferenceListener) {
        sUnclosedReferenceListener = unclosedReferenceListener;
    }

    public static void setUseFinalizers(boolean z) {
        sUseFinalizers = z;
    }

    @Nullable
    private static Throwable getTraceOrNull() {
        if (sUnclosedReferenceListener != null) {
            return new Throwable();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CloseableReferenceWithoutFinalizer<T> extends CloseableReference<T> {
        private static final ReferenceQueue<CloseableReference> REF_QUEUE = new ReferenceQueue<>();
        private final Destructor mDestructor;

        @Override // com.facebook.common.references.CloseableReference
        public /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
            return super.m63clone();
        }

        /* loaded from: classes.dex */
        private static class Destructor extends PhantomReference<CloseableReference> {
            @GuardedBy("Destructor.class")
            private static Destructor sHead;
            @GuardedBy("this")
            private boolean destroyed;
            private final SharedReference mSharedReference;
            @GuardedBy("Destructor.class")
            private Destructor next;
            @GuardedBy("Destructor.class")
            private Destructor previous;

            public Destructor(CloseableReference closeableReference, ReferenceQueue<? super CloseableReference> referenceQueue) {
                super(closeableReference, referenceQueue);
                this.mSharedReference = closeableReference.mSharedReference;
                synchronized (Destructor.class) {
                    if (sHead != null) {
                        sHead.next = this;
                        this.previous = sHead;
                    }
                    sHead = this;
                }
            }

            public synchronized boolean isDestroyed() {
                return this.destroyed;
            }

            public void destroy(boolean z) {
                synchronized (this) {
                    if (!this.destroyed) {
                        this.destroyed = true;
                        synchronized (Destructor.class) {
                            if (this.previous != null) {
                                this.previous.next = this.next;
                            }
                            if (this.next != null) {
                                this.next.previous = this.previous;
                            } else {
                                sHead = this.previous;
                            }
                        }
                        if (!z) {
                            FLog.w(CloseableReference.TAG, "GCed without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.mSharedReference)), this.mSharedReference.get().getClass().getSimpleName());
                        }
                        this.mSharedReference.deleteReference();
                    }
                }
            }
        }

        static {
            new Thread(new Runnable() { // from class: com.facebook.common.references.CloseableReference.CloseableReferenceWithoutFinalizer.1
                @Override // java.lang.Runnable
                public void run() {
                    while (true) {
                        try {
                            ((Destructor) CloseableReferenceWithoutFinalizer.REF_QUEUE.remove()).destroy(false);
                        } catch (InterruptedException e) {
                        }
                    }
                }
            }, "CloseableReferenceDestructorThread").start();
        }

        private CloseableReferenceWithoutFinalizer(SharedReference<T> sharedReference) {
            super((SharedReference) sharedReference);
            this.mDestructor = new Destructor(this, REF_QUEUE);
        }

        private CloseableReferenceWithoutFinalizer(T t, ResourceReleaser<T> resourceReleaser) {
            super(t, resourceReleaser);
            this.mDestructor = new Destructor(this, REF_QUEUE);
        }

        @Override // com.facebook.common.references.CloseableReference, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.mDestructor.destroy(true);
        }

        @Override // com.facebook.common.references.CloseableReference
        public boolean isValid() {
            return !this.mDestructor.isDestroyed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class CloseableReferenceWithFinalizer<T> extends CloseableReference<T> {
        @Override // com.facebook.common.references.CloseableReference
        public /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
            return super.m63clone();
        }

        private CloseableReferenceWithFinalizer(SharedReference<T> sharedReference) {
            super((SharedReference) sharedReference);
        }

        private CloseableReferenceWithFinalizer(T t, ResourceReleaser<T> resourceReleaser) {
            super(t, resourceReleaser);
        }

        protected void finalize() throws Throwable {
            try {
                synchronized (this) {
                    if (!this.mIsClosed) {
                        UnclosedReferenceListener unclosedReferenceListener = CloseableReference.sUnclosedReferenceListener;
                        if (unclosedReferenceListener != null) {
                            unclosedReferenceListener.onUnclosedReferenceFinalized(this, this.mRelevantTrace);
                        } else {
                            FLog.w(CloseableReference.TAG, "Finalized without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.mSharedReference)), this.mSharedReference.get().getClass().getSimpleName());
                        }
                        close();
                    }
                }
            } finally {
                super.finalize();
            }
        }
    }
}
