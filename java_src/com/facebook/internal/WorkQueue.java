package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class WorkQueue {
    static final /* synthetic */ boolean $assertionsDisabled;
    public static final int DEFAULT_MAX_CONCURRENT = 8;
    private final Executor executor;
    private final int maxConcurrent;
    private WorkNode pendingJobs;
    private int runningCount;
    private WorkNode runningJobs;
    private final Object workLock;

    /* loaded from: classes.dex */
    public interface WorkItem {
        boolean cancel();

        boolean isRunning();

        void moveToFront();
    }

    static {
        $assertionsDisabled = !WorkQueue.class.desiredAssertionStatus();
    }

    public WorkQueue() {
        this(8);
    }

    public WorkQueue(int i) {
        this(i, FacebookSdk.getExecutor());
    }

    public WorkQueue(int i, Executor executor) {
        this.workLock = new Object();
        this.runningJobs = null;
        this.runningCount = 0;
        this.maxConcurrent = i;
        this.executor = executor;
    }

    public WorkItem addActiveWorkItem(Runnable runnable) {
        return addActiveWorkItem(runnable, true);
    }

    public WorkItem addActiveWorkItem(Runnable runnable, boolean z) {
        WorkNode workNode = new WorkNode(runnable);
        synchronized (this.workLock) {
            this.pendingJobs = workNode.addToList(this.pendingJobs, z);
        }
        startItem();
        return workNode;
    }

    public void validate() {
        synchronized (this.workLock) {
            int i = 0;
            if (this.runningJobs != null) {
                WorkNode workNode = this.runningJobs;
                do {
                    workNode.verify(true);
                    i++;
                    workNode = workNode.getNext();
                } while (workNode != this.runningJobs);
                if ($assertionsDisabled && this.runningCount != i) {
                    throw new AssertionError();
                }
            } else if ($assertionsDisabled) {
            }
        }
    }

    private void startItem() {
        finishItemAndStartNew(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishItemAndStartNew(WorkNode workNode) {
        WorkNode workNode2 = null;
        synchronized (this.workLock) {
            if (workNode != null) {
                this.runningJobs = workNode.removeFromList(this.runningJobs);
                this.runningCount--;
            }
            if (this.runningCount < this.maxConcurrent && (workNode2 = this.pendingJobs) != null) {
                this.pendingJobs = workNode2.removeFromList(this.pendingJobs);
                this.runningJobs = workNode2.addToList(this.runningJobs, false);
                this.runningCount++;
                workNode2.setIsRunning(true);
            }
        }
        if (workNode2 != null) {
            execute(workNode2);
        }
    }

    private void execute(final WorkNode workNode) {
        this.executor.execute(new Runnable() { // from class: com.facebook.internal.WorkQueue.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    workNode.getCallback().run();
                } finally {
                    WorkQueue.this.finishItemAndStartNew(workNode);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class WorkNode implements WorkItem {
        static final /* synthetic */ boolean $assertionsDisabled;
        private final Runnable callback;
        private boolean isRunning;
        private WorkNode next;
        private WorkNode prev;

        static {
            $assertionsDisabled = !WorkQueue.class.desiredAssertionStatus();
        }

        WorkNode(Runnable runnable) {
            this.callback = runnable;
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean cancel() {
            synchronized (WorkQueue.this.workLock) {
                if (!isRunning()) {
                    WorkQueue.this.pendingJobs = removeFromList(WorkQueue.this.pendingJobs);
                    return true;
                }
                return false;
            }
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public void moveToFront() {
            synchronized (WorkQueue.this.workLock) {
                if (!isRunning()) {
                    WorkQueue.this.pendingJobs = removeFromList(WorkQueue.this.pendingJobs);
                    WorkQueue.this.pendingJobs = addToList(WorkQueue.this.pendingJobs, true);
                }
            }
        }

        @Override // com.facebook.internal.WorkQueue.WorkItem
        public boolean isRunning() {
            return this.isRunning;
        }

        Runnable getCallback() {
            return this.callback;
        }

        WorkNode getNext() {
            return this.next;
        }

        void setIsRunning(boolean z) {
            this.isRunning = z;
        }

        WorkNode addToList(WorkNode workNode, boolean z) {
            WorkNode workNode2;
            if ($assertionsDisabled || this.next == null) {
                if (!$assertionsDisabled && this.prev != null) {
                    throw new AssertionError();
                }
                if (workNode == null) {
                    this.prev = this;
                    this.next = this;
                    workNode2 = this;
                } else {
                    this.next = workNode;
                    this.prev = workNode.prev;
                    WorkNode workNode3 = this.next;
                    this.prev.next = this;
                    workNode3.prev = this;
                    workNode2 = workNode;
                }
                return z ? this : workNode2;
            }
            throw new AssertionError();
        }

        WorkNode removeFromList(WorkNode workNode) {
            if ($assertionsDisabled || this.next != null) {
                if (!$assertionsDisabled && this.prev == null) {
                    throw new AssertionError();
                }
                if (workNode == this) {
                    workNode = this.next == this ? null : this.next;
                }
                this.next.prev = this.prev;
                this.prev.next = this.next;
                this.prev = null;
                this.next = null;
                return workNode;
            }
            throw new AssertionError();
        }

        void verify(boolean z) {
            if ($assertionsDisabled || this.prev.next == this) {
                if (!$assertionsDisabled && this.next.prev != this) {
                    throw new AssertionError();
                }
                if (!$assertionsDisabled && isRunning() != z) {
                    throw new AssertionError();
                }
                return;
            }
            throw new AssertionError();
        }
    }
}
