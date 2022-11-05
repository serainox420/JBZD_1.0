package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class NativePooledByteBuffer implements PooledByteBuffer {
    @VisibleForTesting
    @GuardedBy("this")
    CloseableReference<NativeMemoryChunk> mBufRef;
    private final int mSize;

    public NativePooledByteBuffer(CloseableReference<NativeMemoryChunk> closeableReference, int i) {
        Preconditions.checkNotNull(closeableReference);
        Preconditions.checkArgument(i >= 0 && i <= closeableReference.get().getSize());
        this.mBufRef = closeableReference.m63clone();
        this.mSize = i;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized int size() {
        ensureValid();
        return this.mSize;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized byte read(int i) {
        byte read;
        boolean z = true;
        synchronized (this) {
            ensureValid();
            Preconditions.checkArgument(i >= 0);
            if (i >= this.mSize) {
                z = false;
            }
            Preconditions.checkArgument(z);
            read = this.mBufRef.get().read(i);
        }
        return read;
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized void read(int i, byte[] bArr, int i2, int i3) {
        ensureValid();
        Preconditions.checkArgument(i + i3 <= this.mSize);
        this.mBufRef.get().read(i, bArr, i2, i3);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized long getNativePtr() {
        ensureValid();
        return this.mBufRef.get().getNativePtr();
    }

    @Override // com.facebook.common.memory.PooledByteBuffer
    public synchronized boolean isClosed() {
        return !CloseableReference.isValid(this.mBufRef);
    }

    @Override // com.facebook.common.memory.PooledByteBuffer, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        CloseableReference.closeSafely(this.mBufRef);
        this.mBufRef = null;
    }

    synchronized void ensureValid() {
        if (isClosed()) {
            throw new PooledByteBuffer.ClosedException();
        }
    }
}
