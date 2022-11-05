package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.memory.PooledByteBufferFactory;
import com.facebook.common.memory.PooledByteStreams;
import com.facebook.common.references.CloseableReference;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class NativePooledByteBufferFactory implements PooledByteBufferFactory {
    private final NativeMemoryChunkPool mPool;
    private final PooledByteStreams mPooledByteStreams;

    public NativePooledByteBufferFactory(NativeMemoryChunkPool nativeMemoryChunkPool, PooledByteStreams pooledByteStreams) {
        this.mPool = nativeMemoryChunkPool;
        this.mPooledByteStreams = pooledByteStreams;
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer  reason: collision with other method in class */
    public NativePooledByteBuffer mo96newByteBuffer(int i) {
        Preconditions.checkArgument(i > 0);
        CloseableReference of = CloseableReference.of(this.mPool.get(i), this.mPool);
        try {
            return new NativePooledByteBuffer(of, i);
        } finally {
            of.close();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer  reason: collision with other method in class */
    public NativePooledByteBuffer mo97newByteBuffer(InputStream inputStream) throws IOException {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.mPool);
        try {
            return newByteBuf(inputStream, nativePooledByteBufferOutputStream);
        } finally {
            nativePooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer  reason: collision with other method in class */
    public NativePooledByteBuffer mo99newByteBuffer(byte[] bArr) {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.mPool, bArr.length);
        try {
            try {
                nativePooledByteBufferOutputStream.write(bArr, 0, bArr.length);
                return nativePooledByteBufferOutputStream.mo102toByteBuffer();
            } catch (IOException e) {
                throw Throwables.propagate(e);
            }
        } finally {
            nativePooledByteBufferOutputStream.close();
        }
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer  reason: collision with other method in class */
    public NativePooledByteBuffer mo98newByteBuffer(InputStream inputStream, int i) throws IOException {
        NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream = new NativePooledByteBufferOutputStream(this.mPool, i);
        try {
            return newByteBuf(inputStream, nativePooledByteBufferOutputStream);
        } finally {
            nativePooledByteBufferOutputStream.close();
        }
    }

    @VisibleForTesting
    NativePooledByteBuffer newByteBuf(InputStream inputStream, NativePooledByteBufferOutputStream nativePooledByteBufferOutputStream) throws IOException {
        this.mPooledByteStreams.copy(inputStream, nativePooledByteBufferOutputStream);
        return nativePooledByteBufferOutputStream.mo102toByteBuffer();
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newOutputStream  reason: collision with other method in class */
    public NativePooledByteBufferOutputStream mo100newOutputStream() {
        return new NativePooledByteBufferOutputStream(this.mPool);
    }

    @Override // com.facebook.common.memory.PooledByteBufferFactory
    /* renamed from: newOutputStream  reason: collision with other method in class */
    public NativePooledByteBufferOutputStream mo101newOutputStream(int i) {
        return new NativePooledByteBufferOutputStream(this.mPool, i);
    }
}
