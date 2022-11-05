package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.imagepipeline.image.EncodedImage;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public class JobScheduler {
    static final String QUEUE_TIME_KEY = "queueTime";
    private final Executor mExecutor;
    private final JobRunnable mJobRunnable;
    private final int mMinimumJobIntervalMs;
    private final Runnable mDoJobRunnable = new Runnable() { // from class: com.facebook.imagepipeline.producers.JobScheduler.1
        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.doJob();
        }
    };
    private final Runnable mSubmitJobRunnable = new Runnable() { // from class: com.facebook.imagepipeline.producers.JobScheduler.2
        @Override // java.lang.Runnable
        public void run() {
            JobScheduler.this.submitJob();
        }
    };
    @VisibleForTesting
    @GuardedBy("this")
    EncodedImage mEncodedImage = null;
    @VisibleForTesting
    @GuardedBy("this")
    boolean mIsLast = false;
    @VisibleForTesting
    @GuardedBy("this")
    JobState mJobState = JobState.IDLE;
    @VisibleForTesting
    @GuardedBy("this")
    long mJobSubmitTime = 0;
    @VisibleForTesting
    @GuardedBy("this")
    long mJobStartTime = 0;

    /* loaded from: classes.dex */
    public interface JobRunnable {
        void run(EncodedImage encodedImage, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public enum JobState {
        IDLE,
        QUEUED,
        RUNNING,
        RUNNING_AND_PENDING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class JobStartExecutorSupplier {
        private static ScheduledExecutorService sJobStarterExecutor;

        JobStartExecutorSupplier() {
        }

        static ScheduledExecutorService get() {
            if (sJobStarterExecutor == null) {
                sJobStarterExecutor = Executors.newSingleThreadScheduledExecutor();
            }
            return sJobStarterExecutor;
        }
    }

    public JobScheduler(Executor executor, JobRunnable jobRunnable, int i) {
        this.mExecutor = executor;
        this.mJobRunnable = jobRunnable;
        this.mMinimumJobIntervalMs = i;
    }

    public void clearJob() {
        EncodedImage encodedImage;
        synchronized (this) {
            encodedImage = this.mEncodedImage;
            this.mEncodedImage = null;
            this.mIsLast = false;
        }
        EncodedImage.closeSafely(encodedImage);
    }

    public boolean updateJob(EncodedImage encodedImage, boolean z) {
        EncodedImage encodedImage2;
        if (!shouldProcess(encodedImage, z)) {
            return false;
        }
        synchronized (this) {
            encodedImage2 = this.mEncodedImage;
            this.mEncodedImage = EncodedImage.cloneOrNull(encodedImage);
            this.mIsLast = z;
        }
        EncodedImage.closeSafely(encodedImage2);
        return true;
    }

    public boolean scheduleJob() {
        boolean z = false;
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = 0;
        synchronized (this) {
            if (!shouldProcess(this.mEncodedImage, this.mIsLast)) {
                return false;
            }
            switch (this.mJobState) {
                case IDLE:
                    j = Math.max(this.mJobStartTime + this.mMinimumJobIntervalMs, uptimeMillis);
                    this.mJobSubmitTime = uptimeMillis;
                    this.mJobState = JobState.QUEUED;
                    z = true;
                    break;
                case RUNNING:
                    this.mJobState = JobState.RUNNING_AND_PENDING;
                    break;
            }
            if (z) {
                enqueueJob(j - uptimeMillis);
            }
            return true;
        }
    }

    private void enqueueJob(long j) {
        if (j > 0) {
            JobStartExecutorSupplier.get().schedule(this.mSubmitJobRunnable, j, TimeUnit.MILLISECONDS);
        } else {
            this.mSubmitJobRunnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void submitJob() {
        this.mExecutor.execute(this.mDoJobRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doJob() {
        EncodedImage encodedImage;
        boolean z;
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (this) {
            encodedImage = this.mEncodedImage;
            z = this.mIsLast;
            this.mEncodedImage = null;
            this.mIsLast = false;
            this.mJobState = JobState.RUNNING;
            this.mJobStartTime = uptimeMillis;
        }
        try {
            if (shouldProcess(encodedImage, z)) {
                this.mJobRunnable.run(encodedImage, z);
            }
        } finally {
            EncodedImage.closeSafely(encodedImage);
            onJobFinished();
        }
    }

    private void onJobFinished() {
        long uptimeMillis = SystemClock.uptimeMillis();
        long j = 0;
        boolean z = false;
        synchronized (this) {
            if (this.mJobState == JobState.RUNNING_AND_PENDING) {
                j = Math.max(this.mJobStartTime + this.mMinimumJobIntervalMs, uptimeMillis);
                z = true;
                this.mJobSubmitTime = uptimeMillis;
                this.mJobState = JobState.QUEUED;
            } else {
                this.mJobState = JobState.IDLE;
            }
        }
        if (z) {
            enqueueJob(j - uptimeMillis);
        }
    }

    private static boolean shouldProcess(EncodedImage encodedImage, boolean z) {
        return z || EncodedImage.isValid(encodedImage);
    }

    public synchronized long getQueuedTime() {
        return this.mJobStartTime - this.mJobSubmitTime;
    }
}
