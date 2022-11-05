package com.facebook.imagepipeline.cache;

import com.facebook.cache.common.CacheKey;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.image.EncodedImage;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes.dex */
public class StagingArea {
    private static final Class<?> TAG = StagingArea.class;
    @GuardedBy("this")
    private Map<CacheKey, EncodedImage> mMap = new HashMap();

    private StagingArea() {
    }

    public static StagingArea getInstance() {
        return new StagingArea();
    }

    public synchronized void put(CacheKey cacheKey, EncodedImage encodedImage) {
        Preconditions.checkNotNull(cacheKey);
        Preconditions.checkArgument(EncodedImage.isValid(encodedImage));
        EncodedImage.closeSafely(this.mMap.put(cacheKey, EncodedImage.cloneOrNull(encodedImage)));
        logStats();
    }

    public void clearAll() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.mMap.values());
            this.mMap.clear();
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < arrayList.size()) {
                EncodedImage encodedImage = (EncodedImage) arrayList.get(i2);
                if (encodedImage != null) {
                    encodedImage.close();
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public boolean remove(CacheKey cacheKey) {
        EncodedImage remove;
        Preconditions.checkNotNull(cacheKey);
        synchronized (this) {
            remove = this.mMap.remove(cacheKey);
        }
        if (remove == null) {
            return false;
        }
        try {
            return remove.isValid();
        } finally {
            remove.close();
        }
    }

    public synchronized boolean remove(CacheKey cacheKey, EncodedImage encodedImage) {
        boolean z;
        Preconditions.checkNotNull(cacheKey);
        Preconditions.checkNotNull(encodedImage);
        Preconditions.checkArgument(EncodedImage.isValid(encodedImage));
        EncodedImage encodedImage2 = this.mMap.get(cacheKey);
        if (encodedImage2 == null) {
            z = false;
        } else {
            CloseableReference<PooledByteBuffer> byteBufferRef = encodedImage2.getByteBufferRef();
            CloseableReference<PooledByteBuffer> byteBufferRef2 = encodedImage.getByteBufferRef();
            if (byteBufferRef != null && byteBufferRef2 != null && byteBufferRef.get() == byteBufferRef2.get()) {
                this.mMap.remove(cacheKey);
                CloseableReference.closeSafely(byteBufferRef2);
                CloseableReference.closeSafely(byteBufferRef);
                EncodedImage.closeSafely(encodedImage2);
                logStats();
                z = true;
            } else {
                CloseableReference.closeSafely(byteBufferRef2);
                CloseableReference.closeSafely(byteBufferRef);
                EncodedImage.closeSafely(encodedImage2);
                z = false;
            }
        }
        return z;
    }

    public synchronized EncodedImage get(CacheKey cacheKey) {
        EncodedImage encodedImage;
        Preconditions.checkNotNull(cacheKey);
        encodedImage = this.mMap.get(cacheKey);
        if (encodedImage != null) {
            synchronized (encodedImage) {
                if (!EncodedImage.isValid(encodedImage)) {
                    this.mMap.remove(cacheKey);
                    FLog.w(TAG, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(encodedImage)), cacheKey.getUriString(), Integer.valueOf(System.identityHashCode(cacheKey)));
                    encodedImage = null;
                } else {
                    encodedImage = EncodedImage.cloneOrNull(encodedImage);
                }
            }
        }
        return encodedImage;
    }

    public synchronized boolean containsKey(CacheKey cacheKey) {
        boolean z;
        Preconditions.checkNotNull(cacheKey);
        if (!this.mMap.containsKey(cacheKey)) {
            z = false;
        } else {
            EncodedImage encodedImage = this.mMap.get(cacheKey);
            synchronized (encodedImage) {
                if (!EncodedImage.isValid(encodedImage)) {
                    this.mMap.remove(cacheKey);
                    FLog.w(TAG, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(encodedImage)), cacheKey.getUriString(), Integer.valueOf(System.identityHashCode(cacheKey)));
                    z = false;
                } else {
                    z = true;
                }
            }
        }
        return z;
    }

    private synchronized void logStats() {
        FLog.v(TAG, "Count = %d", Integer.valueOf(this.mMap.size()));
    }
}
