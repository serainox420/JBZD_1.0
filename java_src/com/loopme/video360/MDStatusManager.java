package com.loopme.video360;

import android.util.SparseBooleanArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class MDStatusManager {
    public static final int STATUS_INIT = 0;
    public static final int STATUS_READY = 1;
    private int mVisibleSize;
    private int mStatus = 0;
    private SparseBooleanArray mReadyList = new SparseBooleanArray();

    public void reset(int i) {
        this.mVisibleSize = i;
        this.mStatus = 0;
        for (int i2 = 0; i2 < this.mReadyList.size(); i2++) {
            this.mReadyList.put(i2, false);
        }
    }

    public boolean isReady() {
        return this.mVisibleSize == 1 || this.mStatus == 1;
    }

    public synchronized void setChildReady(int i) {
        int i2 = 1;
        synchronized (this) {
            if (!this.mReadyList.get(i)) {
                this.mReadyList.put(i, true);
                boolean z = true;
                for (int i3 = 0; i3 < this.mReadyList.size(); i3++) {
                    z &= this.mReadyList.valueAt(i3);
                }
                if (!z) {
                    i2 = 0;
                }
                this.mStatus = i2;
            }
        }
    }

    public Status newChild() {
        int size = this.mReadyList.size();
        this.mReadyList.put(size, false);
        return new StatusImpl(size, this);
    }

    /* loaded from: classes2.dex */
    private static class StatusImpl extends Status {
        private MDStatusManager manager;

        private StatusImpl(int i, MDStatusManager mDStatusManager) {
            super(i);
            this.manager = mDStatusManager;
        }

        @Override // com.loopme.video360.MDStatusManager.Status
        public boolean isAllReady() {
            return this.manager.isReady();
        }

        @Override // com.loopme.video360.MDStatusManager.Status
        public void ready() {
            this.manager.setChildReady(this.mId);
        }
    }

    /* loaded from: classes2.dex */
    static abstract class Status {
        protected int mId;

        public abstract boolean isAllReady();

        public abstract void ready();

        public Status(int i) {
            this.mId = i;
        }
    }
}
