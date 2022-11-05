package android.support.v4.content;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.support.annotation.RestrictTo;
import android.support.v4.os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
/* compiled from: AsyncTaskLoader.java */
/* loaded from: classes.dex */
public abstract class a<D> extends k<D> {
    static final boolean DEBUG = false;
    static final String TAG = "AsyncTaskLoader";
    volatile a<D>.RunnableC0017a mCancellingTask;
    private final Executor mExecutor;
    Handler mHandler;
    long mLastLoadCompleteTime;
    volatile a<D>.RunnableC0017a mTask;
    long mUpdateThrottle;

    public abstract D loadInBackground();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AsyncTaskLoader.java */
    /* renamed from: android.support.v4.content.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class RunnableC0017a extends ModernAsyncTask<Void, Void, D> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        boolean f295a;
        private final CountDownLatch d = new CountDownLatch(1);

        RunnableC0017a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.content.ModernAsyncTask
        public D a(Void... voidArr) {
            try {
                return (D) a.this.onLoadInBackground();
            } catch (OperationCanceledException e) {
                if (!d()) {
                    throw e;
                }
                return null;
            }
        }

        @Override // android.support.v4.content.ModernAsyncTask
        protected void a(D d) {
            try {
                a.this.dispatchOnLoadComplete(this, d);
            } finally {
                this.d.countDown();
            }
        }

        @Override // android.support.v4.content.ModernAsyncTask
        protected void b(D d) {
            try {
                a.this.dispatchOnCancelled(this, d);
            } finally {
                this.d.countDown();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f295a = false;
            a.this.executePendingTask();
        }

        public void a() {
            try {
                this.d.await();
            } catch (InterruptedException e) {
            }
        }
    }

    public a(Context context) {
        this(context, ModernAsyncTask.c);
    }

    private a(Context context, Executor executor) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
        this.mExecutor = executor;
    }

    public void setUpdateThrottle(long j) {
        this.mUpdateThrottle = j;
        if (j != 0) {
            this.mHandler = new Handler();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v4.content.k
    public void onForceLoad() {
        super.onForceLoad();
        cancelLoad();
        this.mTask = new RunnableC0017a();
        executePendingTask();
    }

    @Override // android.support.v4.content.k
    protected boolean onCancelLoad() {
        boolean z = false;
        if (this.mTask != null) {
            if (!this.mStarted) {
                this.mContentChanged = true;
            }
            if (this.mCancellingTask != null) {
                if (this.mTask.f295a) {
                    this.mTask.f295a = false;
                    this.mHandler.removeCallbacks(this.mTask);
                }
                this.mTask = null;
            } else if (this.mTask.f295a) {
                this.mTask.f295a = false;
                this.mHandler.removeCallbacks(this.mTask);
                this.mTask = null;
            } else {
                z = this.mTask.a(false);
                if (z) {
                    this.mCancellingTask = this.mTask;
                    cancelLoadInBackground();
                }
                this.mTask = null;
            }
        }
        return z;
    }

    public void onCanceled(D d) {
    }

    void executePendingTask() {
        if (this.mCancellingTask == null && this.mTask != null) {
            if (this.mTask.f295a) {
                this.mTask.f295a = false;
                this.mHandler.removeCallbacks(this.mTask);
            }
            if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
                this.mTask.f295a = true;
                this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
                return;
            }
            this.mTask.a(this.mExecutor, null);
        }
    }

    void dispatchOnCancelled(a<D>.RunnableC0017a runnableC0017a, D d) {
        onCanceled(d);
        if (this.mCancellingTask == runnableC0017a) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    void dispatchOnLoadComplete(a<D>.RunnableC0017a runnableC0017a, D d) {
        if (this.mTask != runnableC0017a) {
            dispatchOnCancelled(runnableC0017a, d);
        } else if (isAbandoned()) {
            onCanceled(d);
        } else {
            commitContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mTask = null;
            deliverResult(d);
        }
    }

    protected D onLoadInBackground() {
        return loadInBackground();
    }

    public void cancelLoadInBackground() {
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    @RestrictTo
    public void waitForLoader() {
        a<D>.RunnableC0017a runnableC0017a = this.mTask;
        if (runnableC0017a != null) {
            runnableC0017a.a();
        }
    }

    @Override // android.support.v4.content.k
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.f295a);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.f295a);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            android.support.v4.f.m.a(this.mUpdateThrottle, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            android.support.v4.f.m.a(this.mLastLoadCompleteTime, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }
}
