package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.internal.ByteStreams;
import com.facebook.common.internal.Closeables;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.memory.PooledByteBufferInputStream;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.streams.LimitedInputStream;
import com.facebook.common.webp.WebpSupportStatus;
import com.facebook.imagepipeline.image.EncodedImage;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class GingerbreadPurgeableDecoder extends DalvikPurgeableDecoder {
    private static Method sGetFileDescriptorMethod;

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder, com.facebook.imagepipeline.platform.PlatformDecoder
    public /* bridge */ /* synthetic */ CloseableReference decodeFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config) {
        return super.decodeFromEncodedImage(encodedImage, config);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder, com.facebook.imagepipeline.platform.PlatformDecoder
    public /* bridge */ /* synthetic */ CloseableReference decodeJPEGFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, int i) {
        return super.decodeJPEGFromEncodedImage(encodedImage, config, i);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    public /* bridge */ /* synthetic */ CloseableReference pinBitmap(Bitmap bitmap) {
        return super.pinBitmap(bitmap);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    protected Bitmap decodeByteArrayAsPurgeable(CloseableReference<PooledByteBuffer> closeableReference, BitmapFactory.Options options) {
        return decodeFileDescriptorAsPurgeable(closeableReference, closeableReference.get().size(), null, options);
    }

    @Override // com.facebook.imagepipeline.platform.DalvikPurgeableDecoder
    protected Bitmap decodeJPEGByteArrayAsPurgeable(CloseableReference<PooledByteBuffer> closeableReference, int i, BitmapFactory.Options options) {
        return decodeFileDescriptorAsPurgeable(closeableReference, i, endsWithEOI(closeableReference, i) ? null : EOI, options);
    }

    private static MemoryFile copyToMemoryFile(CloseableReference<PooledByteBuffer> closeableReference, int i, @Nullable byte[] bArr) throws IOException {
        OutputStream outputStream;
        PooledByteBufferInputStream pooledByteBufferInputStream;
        LimitedInputStream limitedInputStream = null;
        MemoryFile memoryFile = new MemoryFile(null, (bArr == null ? 0 : bArr.length) + i);
        memoryFile.allowPurging(false);
        try {
            PooledByteBufferInputStream pooledByteBufferInputStream2 = new PooledByteBufferInputStream(closeableReference.get());
            try {
                LimitedInputStream limitedInputStream2 = new LimitedInputStream(pooledByteBufferInputStream2, i);
                try {
                    outputStream = memoryFile.getOutputStream();
                } catch (Throwable th) {
                    th = th;
                    outputStream = null;
                    limitedInputStream = limitedInputStream2;
                    pooledByteBufferInputStream = pooledByteBufferInputStream2;
                }
                try {
                    ByteStreams.copy(limitedInputStream2, outputStream);
                    if (bArr != null) {
                        memoryFile.writeBytes(bArr, 0, i, bArr.length);
                    }
                    CloseableReference.closeSafely(closeableReference);
                    Closeables.closeQuietly(pooledByteBufferInputStream2);
                    Closeables.closeQuietly(limitedInputStream2);
                    Closeables.close(outputStream, true);
                    return memoryFile;
                } catch (Throwable th2) {
                    th = th2;
                    limitedInputStream = limitedInputStream2;
                    pooledByteBufferInputStream = pooledByteBufferInputStream2;
                    CloseableReference.closeSafely(closeableReference);
                    Closeables.closeQuietly(pooledByteBufferInputStream);
                    Closeables.closeQuietly(limitedInputStream);
                    Closeables.close(outputStream, true);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
                pooledByteBufferInputStream = pooledByteBufferInputStream2;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
            pooledByteBufferInputStream = null;
        }
    }

    private synchronized Method getFileDescriptorMethod() {
        if (sGetFileDescriptorMethod == null) {
            try {
                sGetFileDescriptorMethod = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e) {
                throw Throwables.propagate(e);
            }
        }
        return sGetFileDescriptorMethod;
    }

    private FileDescriptor getMemoryFileDescriptor(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) getFileDescriptorMethod().invoke(memoryFile, new Object[0]);
        } catch (Exception e) {
            throw Throwables.propagate(e);
        }
    }

    protected Bitmap decodeFileDescriptorAsPurgeable(CloseableReference<PooledByteBuffer> closeableReference, int i, byte[] bArr, BitmapFactory.Options options) {
        MemoryFile memoryFile = null;
        try {
            try {
                memoryFile = copyToMemoryFile(closeableReference, i, bArr);
                return (Bitmap) Preconditions.checkNotNull(WebpSupportStatus.sWebpBitmapFactory.decodeFileDescriptor(getMemoryFileDescriptor(memoryFile), null, options), "BitmapFactory returned null");
            } catch (IOException e) {
                throw Throwables.propagate(e);
            }
        } finally {
            if (memoryFile != null) {
                memoryFile.close();
            }
        }
    }
}
