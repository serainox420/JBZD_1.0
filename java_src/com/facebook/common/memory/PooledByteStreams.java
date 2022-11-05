package com.facebook.common.memory;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.VisibleForTesting;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class PooledByteStreams {
    private static final int DEFAULT_TEMP_BUF_SIZE = 16384;
    private final ByteArrayPool mByteArrayPool;
    private final int mTempBufSize;

    public PooledByteStreams(ByteArrayPool byteArrayPool) {
        this(byteArrayPool, DEFAULT_TEMP_BUF_SIZE);
    }

    @VisibleForTesting
    public PooledByteStreams(ByteArrayPool byteArrayPool, int i) {
        Preconditions.checkArgument(i > 0);
        this.mTempBufSize = i;
        this.mByteArrayPool = byteArrayPool;
    }

    public long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        long j = 0;
        byte[] bArr = this.mByteArrayPool.get(this.mTempBufSize);
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, this.mTempBufSize);
                if (read == -1) {
                    return j;
                }
                outputStream.write(bArr, 0, read);
                j += read;
            } finally {
                this.mByteArrayPool.release(bArr);
            }
        }
    }

    public long copy(InputStream inputStream, OutputStream outputStream, long j) throws IOException {
        long j2 = 0;
        boolean z = false;
        if (j > 0) {
            z = true;
        }
        Preconditions.checkState(z);
        byte[] bArr = this.mByteArrayPool.get(this.mTempBufSize);
        while (j2 < j) {
            try {
                int read = inputStream.read(bArr, 0, (int) Math.min(this.mTempBufSize, j - j2));
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                    j2 += read;
                } else {
                    this.mByteArrayPool.release(bArr);
                    return j2;
                }
            } catch (Throwable th) {
                this.mByteArrayPool.release(bArr);
                throw th;
            }
        }
        this.mByteArrayPool.release(bArr);
        return j2;
    }
}
