package com.facebook.imagepipeline.core;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class DefaultExecutorSupplier implements ExecutorSupplier {
    private static final int NUM_IO_BOUND_THREADS = 2;
    private static final int NUM_LIGHTWEIGHT_BACKGROUND_THREADS = 1;
    private final Executor mBackgroundExecutor;
    private final Executor mDecodeExecutor;
    private final Executor mIoBoundExecutor;
    private final Executor mLightWeightBackgroundExecutor;

    public DefaultExecutorSupplier(int i) {
        PriorityThreadFactory priorityThreadFactory = new PriorityThreadFactory(10);
        this.mIoBoundExecutor = Executors.newFixedThreadPool(2);
        this.mDecodeExecutor = Executors.newFixedThreadPool(i, priorityThreadFactory);
        this.mBackgroundExecutor = Executors.newFixedThreadPool(i, priorityThreadFactory);
        this.mLightWeightBackgroundExecutor = Executors.newFixedThreadPool(1, priorityThreadFactory);
    }

    @Override // com.facebook.imagepipeline.core.ExecutorSupplier
    public Executor forLocalStorageRead() {
        return this.mIoBoundExecutor;
    }

    @Override // com.facebook.imagepipeline.core.ExecutorSupplier
    public Executor forLocalStorageWrite() {
        return this.mIoBoundExecutor;
    }

    @Override // com.facebook.imagepipeline.core.ExecutorSupplier
    public Executor forDecode() {
        return this.mDecodeExecutor;
    }

    @Override // com.facebook.imagepipeline.core.ExecutorSupplier
    public Executor forBackgroundTasks() {
        return this.mBackgroundExecutor;
    }

    @Override // com.facebook.imagepipeline.core.ExecutorSupplier
    public Executor forLightweightBackgroundTasks() {
        return this.mLightWeightBackgroundExecutor;
    }
}
