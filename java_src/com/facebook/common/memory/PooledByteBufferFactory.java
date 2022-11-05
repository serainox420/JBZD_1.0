package com.facebook.common.memory;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public interface PooledByteBufferFactory {
    /* renamed from: newByteBuffer */
    PooledByteBuffer mo96newByteBuffer(int i);

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo97newByteBuffer(InputStream inputStream) throws IOException;

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo98newByteBuffer(InputStream inputStream, int i) throws IOException;

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo99newByteBuffer(byte[] bArr);

    /* renamed from: newOutputStream */
    PooledByteBufferOutputStream mo100newOutputStream();

    /* renamed from: newOutputStream */
    PooledByteBufferOutputStream mo101newOutputStream(int i);
}
