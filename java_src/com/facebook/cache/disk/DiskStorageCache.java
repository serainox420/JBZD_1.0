package com.facebook.cache.disk;

import android.content.Context;
import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.common.CacheEventListener;
import com.facebook.cache.common.CacheKey;
import com.facebook.cache.common.CacheKeyUtil;
import com.facebook.cache.common.WriterCallback;
import com.facebook.cache.disk.DiskStorage;
import com.facebook.common.disk.DiskTrimmable;
import com.facebook.common.disk.DiskTrimmableRegistry;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.logging.FLog;
import com.facebook.common.statfs.StatFsHelper;
import com.facebook.common.time.Clock;
import com.facebook.common.time.SystemClock;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class DiskStorageCache implements FileCache, DiskTrimmable {
    private static final String SHARED_PREFS_FILENAME_PREFIX = "disk_entries_list";
    public static final int START_OF_VERSIONING = 1;
    private static final double TRIMMING_LOWER_BOUND = 0.02d;
    private static final long UNINITIALIZED = -1;
    private final CacheErrorLogger mCacheErrorLogger;
    private final CacheEventListener mCacheEventListener;
    private long mCacheSizeLimit;
    private final long mCacheSizeLimitMinimum;
    private final Clock mClock;
    private final CountDownLatch mCountDownLatch;
    private final long mDefaultCacheSizeLimit;
    private final EntryEvictionComparatorSupplier mEntryEvictionComparatorSupplier;
    private final boolean mIndexPopulateAtStartupEnabled;
    private boolean mIndexReady;
    private final long mLowDiskSpaceCacheSizeLimit;
    @VisibleForTesting
    @GuardedBy("mLock")
    final Set<String> mResourceIndex;
    private final DiskStorage mStorage;
    private static final Class<?> TAG = DiskStorageCache.class;
    private static final long FUTURE_TIMESTAMP_THRESHOLD_MS = TimeUnit.HOURS.toMillis(2);
    private static final long FILECACHE_SIZE_UPDATE_PERIOD_MS = TimeUnit.MINUTES.toMillis(30);
    private final Object mLock = new Object();
    private final StatFsHelper mStatFsHelper = StatFsHelper.getInstance();
    private long mCacheSizeLastUpdateTime = -1;
    private final CacheStats mCacheStats = new CacheStats();

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class CacheStats {
        private boolean mInitialized = false;
        private long mSize = -1;
        private long mCount = -1;

        CacheStats() {
        }

        public synchronized boolean isInitialized() {
            return this.mInitialized;
        }

        public synchronized void reset() {
            this.mInitialized = false;
            this.mCount = -1L;
            this.mSize = -1L;
        }

        public synchronized void set(long j, long j2) {
            this.mCount = j2;
            this.mSize = j;
            this.mInitialized = true;
        }

        public synchronized void increment(long j, long j2) {
            if (this.mInitialized) {
                this.mSize += j;
                this.mCount += j2;
            }
        }

        public synchronized long getSize() {
            return this.mSize;
        }

        public synchronized long getCount() {
            return this.mCount;
        }
    }

    /* loaded from: classes.dex */
    public static class Params {
        public final long mCacheSizeLimitMinimum;
        public final long mDefaultCacheSizeLimit;
        public final long mLowDiskSpaceCacheSizeLimit;

        public Params(long j, long j2, long j3) {
            this.mCacheSizeLimitMinimum = j;
            this.mLowDiskSpaceCacheSizeLimit = j2;
            this.mDefaultCacheSizeLimit = j3;
        }
    }

    public DiskStorageCache(DiskStorage diskStorage, EntryEvictionComparatorSupplier entryEvictionComparatorSupplier, Params params, CacheEventListener cacheEventListener, CacheErrorLogger cacheErrorLogger, @Nullable DiskTrimmableRegistry diskTrimmableRegistry, Context context, Executor executor, boolean z) {
        this.mLowDiskSpaceCacheSizeLimit = params.mLowDiskSpaceCacheSizeLimit;
        this.mDefaultCacheSizeLimit = params.mDefaultCacheSizeLimit;
        this.mCacheSizeLimit = params.mDefaultCacheSizeLimit;
        this.mStorage = diskStorage;
        this.mEntryEvictionComparatorSupplier = entryEvictionComparatorSupplier;
        this.mCacheEventListener = cacheEventListener;
        this.mCacheSizeLimitMinimum = params.mCacheSizeLimitMinimum;
        this.mCacheErrorLogger = cacheErrorLogger;
        if (diskTrimmableRegistry != null) {
            diskTrimmableRegistry.registerDiskTrimmable(this);
        }
        this.mClock = SystemClock.get();
        this.mIndexPopulateAtStartupEnabled = z;
        this.mResourceIndex = new HashSet();
        if (this.mIndexPopulateAtStartupEnabled) {
            this.mCountDownLatch = new CountDownLatch(1);
            executor.execute(new Runnable() { // from class: com.facebook.cache.disk.DiskStorageCache.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (DiskStorageCache.this.mLock) {
                        DiskStorageCache.this.maybeUpdateFileCacheSize();
                    }
                    DiskStorageCache.this.mIndexReady = true;
                    DiskStorageCache.this.mCountDownLatch.countDown();
                }
            });
            return;
        }
        this.mCountDownLatch = new CountDownLatch(0);
    }

    @Override // com.facebook.cache.disk.FileCache
    public DiskStorage.DiskDumpInfo getDumpInfo() throws IOException {
        return this.mStorage.getDumpInfo();
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean isEnabled() {
        return this.mStorage.isEnabled();
    }

    @VisibleForTesting
    protected void awaitIndex() {
        try {
            this.mCountDownLatch.await();
        } catch (InterruptedException e) {
            FLog.e(TAG, "Memory Index is not ready yet. ");
        }
    }

    public boolean isIndexReady() {
        return this.mIndexReady || !this.mIndexPopulateAtStartupEnabled;
    }

    @Override // com.facebook.cache.disk.FileCache
    public BinaryResource getResource(CacheKey cacheKey) {
        BinaryResource binaryResource;
        SettableCacheEvent cacheKey2 = SettableCacheEvent.obtain().setCacheKey(cacheKey);
        try {
            synchronized (this.mLock) {
                List<String> resourceIds = CacheKeyUtil.getResourceIds(cacheKey);
                int i = 0;
                String str = null;
                binaryResource = null;
                while (true) {
                    if (i >= resourceIds.size()) {
                        break;
                    }
                    String str2 = resourceIds.get(i);
                    cacheKey2.setResourceId(str2);
                    BinaryResource resource = this.mStorage.getResource(str2, cacheKey);
                    if (resource != null) {
                        str = str2;
                        binaryResource = resource;
                        break;
                    }
                    i++;
                    str = str2;
                    binaryResource = resource;
                }
                if (binaryResource == null) {
                    this.mCacheEventListener.onMiss(cacheKey2);
                    this.mResourceIndex.remove(str);
                } else {
                    this.mCacheEventListener.onHit(cacheKey2);
                    this.mResourceIndex.add(str);
                }
            }
            return binaryResource;
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, TAG, "getResource", e);
            cacheKey2.setException(e);
            this.mCacheEventListener.onReadException(cacheKey2);
            return null;
        } finally {
            cacheKey2.recycle();
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean probe(CacheKey cacheKey) {
        String str = null;
        try {
            synchronized (this.mLock) {
                try {
                    List<String> resourceIds = CacheKeyUtil.getResourceIds(cacheKey);
                    for (int i = 0; i < resourceIds.size(); i++) {
                        String str2 = resourceIds.get(i);
                        try {
                            if (this.mStorage.touch(str2, cacheKey)) {
                                this.mResourceIndex.add(str2);
                                return true;
                            }
                        } catch (Throwable th) {
                            str = str2;
                            th = th;
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            throw th;
        } catch (IOException e) {
            SettableCacheEvent exception = SettableCacheEvent.obtain().setCacheKey(cacheKey).setResourceId(str).setException(e);
            this.mCacheEventListener.onReadException(exception);
            exception.recycle();
            return false;
        }
    }

    private DiskStorage.Inserter startInsert(String str, CacheKey cacheKey) throws IOException {
        maybeEvictFilesInCacheDir();
        return this.mStorage.insert(str, cacheKey);
    }

    private BinaryResource endInsert(DiskStorage.Inserter inserter, CacheKey cacheKey, String str) throws IOException {
        BinaryResource commit;
        synchronized (this.mLock) {
            commit = inserter.commit(cacheKey);
            this.mResourceIndex.add(str);
            this.mCacheStats.increment(commit.size(), 1L);
        }
        return commit;
    }

    @Override // com.facebook.cache.disk.FileCache
    public BinaryResource insert(CacheKey cacheKey, WriterCallback writerCallback) throws IOException {
        String firstResourceId;
        SettableCacheEvent cacheKey2 = SettableCacheEvent.obtain().setCacheKey(cacheKey);
        this.mCacheEventListener.onWriteAttempt(cacheKey2);
        synchronized (this.mLock) {
            firstResourceId = CacheKeyUtil.getFirstResourceId(cacheKey);
        }
        cacheKey2.setResourceId(firstResourceId);
        try {
            try {
                DiskStorage.Inserter startInsert = startInsert(firstResourceId, cacheKey);
                try {
                    startInsert.writeData(writerCallback, cacheKey);
                    BinaryResource endInsert = endInsert(startInsert, cacheKey, firstResourceId);
                    cacheKey2.setItemSize(endInsert.size()).setCacheSize(this.mCacheStats.getSize());
                    this.mCacheEventListener.onWriteSuccess(cacheKey2);
                    return endInsert;
                } finally {
                    if (!startInsert.cleanUp()) {
                        FLog.e(TAG, "Failed to delete temp file");
                    }
                }
            } catch (IOException e) {
                cacheKey2.setException(e);
                this.mCacheEventListener.onWriteException(cacheKey2);
                FLog.e(TAG, "Failed inserting a file into the cache", e);
                throw e;
            }
        } finally {
            cacheKey2.recycle();
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public void remove(CacheKey cacheKey) {
        synchronized (this.mLock) {
            try {
                List<String> resourceIds = CacheKeyUtil.getResourceIds(cacheKey);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= resourceIds.size()) {
                        break;
                    }
                    String str = resourceIds.get(i2);
                    this.mStorage.remove(str);
                    this.mResourceIndex.remove(str);
                    i = i2 + 1;
                }
            } catch (IOException e) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.DELETE_FILE, TAG, "delete: " + e.getMessage(), e);
            }
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public long clearOldEntries(long j) {
        int i;
        long j2;
        long j3 = 0;
        synchronized (this.mLock) {
            try {
                long now = this.mClock.now();
                Collection<DiskStorage.Entry> mo55getEntries = this.mStorage.mo55getEntries();
                long size = this.mCacheStats.getSize();
                int i2 = 0;
                long j4 = 0;
                for (DiskStorage.Entry entry : mo55getEntries) {
                    long max = Math.max(1L, Math.abs(now - entry.getTimestamp()));
                    if (max >= j) {
                        long remove = this.mStorage.remove(entry);
                        this.mResourceIndex.remove(entry.getId());
                        if (remove > 0) {
                            i2++;
                            j4 += remove;
                            SettableCacheEvent cacheSize = SettableCacheEvent.obtain().setResourceId(entry.getId()).setEvictionReason(CacheEventListener.EvictionReason.CONTENT_STALE).setItemSize(remove).setCacheSize(size - j4);
                            this.mCacheEventListener.onEviction(cacheSize);
                            cacheSize.recycle();
                        }
                        long j5 = j4;
                        i = i2;
                        j2 = j5;
                    } else {
                        j3 = Math.max(j3, max);
                        long j6 = j4;
                        i = i2;
                        j2 = j6;
                    }
                    i2 = i;
                    j4 = j2;
                }
                this.mStorage.purgeUnexpectedResources();
                if (i2 > 0) {
                    maybeUpdateFileCacheSize();
                    this.mCacheStats.increment(-j4, -i2);
                }
            } catch (IOException e) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.EVICTION, TAG, "clearOldEntries: " + e.getMessage(), e);
            }
        }
        return j3;
    }

    private void maybeEvictFilesInCacheDir() throws IOException {
        synchronized (this.mLock) {
            boolean maybeUpdateFileCacheSize = maybeUpdateFileCacheSize();
            updateFileCacheSizeLimit();
            long size = this.mCacheStats.getSize();
            if (size > this.mCacheSizeLimit && !maybeUpdateFileCacheSize) {
                this.mCacheStats.reset();
                maybeUpdateFileCacheSize();
            }
            if (size > this.mCacheSizeLimit) {
                evictAboveSize((this.mCacheSizeLimit * 9) / 10, CacheEventListener.EvictionReason.CACHE_FULL);
            }
        }
    }

    @GuardedBy("mLock")
    private void evictAboveSize(long j, CacheEventListener.EvictionReason evictionReason) throws IOException {
        int i;
        long j2;
        try {
            Collection<DiskStorage.Entry> sortedEntries = getSortedEntries(this.mStorage.mo55getEntries());
            long size = this.mCacheStats.getSize();
            long j3 = size - j;
            int i2 = 0;
            long j4 = 0;
            Iterator<DiskStorage.Entry> it = sortedEntries.iterator();
            while (true) {
                i = i2;
                j2 = j4;
                if (!it.hasNext()) {
                    break;
                }
                DiskStorage.Entry next = it.next();
                if (j2 > j3) {
                    break;
                }
                long remove = this.mStorage.remove(next);
                this.mResourceIndex.remove(next.getId());
                if (remove > 0) {
                    i++;
                    j2 += remove;
                    SettableCacheEvent cacheLimit = SettableCacheEvent.obtain().setResourceId(next.getId()).setEvictionReason(evictionReason).setItemSize(remove).setCacheSize(size - j2).setCacheLimit(j);
                    this.mCacheEventListener.onEviction(cacheLimit);
                    cacheLimit.recycle();
                }
                long j5 = j2;
                i2 = i;
                j4 = j5;
            }
            this.mCacheStats.increment(-j2, -i);
            this.mStorage.purgeUnexpectedResources();
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.EVICTION, TAG, "evictAboveSize: " + e.getMessage(), e);
            throw e;
        }
    }

    private Collection<DiskStorage.Entry> getSortedEntries(Collection<DiskStorage.Entry> collection) {
        long now = FUTURE_TIMESTAMP_THRESHOLD_MS + this.mClock.now();
        ArrayList arrayList = new ArrayList(collection.size());
        ArrayList arrayList2 = new ArrayList(collection.size());
        for (DiskStorage.Entry entry : collection) {
            if (entry.getTimestamp() > now) {
                arrayList.add(entry);
            } else {
                arrayList2.add(entry);
            }
        }
        Collections.sort(arrayList2, this.mEntryEvictionComparatorSupplier.get());
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    @GuardedBy("mLock")
    private void updateFileCacheSizeLimit() {
        if (this.mStatFsHelper.testLowDiskSpace(this.mStorage.isExternal() ? StatFsHelper.StorageType.EXTERNAL : StatFsHelper.StorageType.INTERNAL, this.mDefaultCacheSizeLimit - this.mCacheStats.getSize())) {
            this.mCacheSizeLimit = this.mLowDiskSpaceCacheSizeLimit;
        } else {
            this.mCacheSizeLimit = this.mDefaultCacheSizeLimit;
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public long getSize() {
        return this.mCacheStats.getSize();
    }

    @Override // com.facebook.cache.disk.FileCache
    public long getCount() {
        return this.mCacheStats.getCount();
    }

    @Override // com.facebook.cache.disk.FileCache
    public void clearAll() {
        synchronized (this.mLock) {
            try {
                this.mStorage.clearAll();
                this.mResourceIndex.clear();
                this.mCacheEventListener.onCleared();
            } catch (IOException e) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.EVICTION, TAG, "clearAll: " + e.getMessage(), e);
            }
            this.mCacheStats.reset();
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean hasKeySync(CacheKey cacheKey) {
        synchronized (this.mLock) {
            List<String> resourceIds = CacheKeyUtil.getResourceIds(cacheKey);
            for (int i = 0; i < resourceIds.size(); i++) {
                if (this.mResourceIndex.contains(resourceIds.get(i))) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.facebook.cache.disk.FileCache
    public boolean hasKey(CacheKey cacheKey) {
        synchronized (this.mLock) {
            if (hasKeySync(cacheKey)) {
                return true;
            }
            try {
                List<String> resourceIds = CacheKeyUtil.getResourceIds(cacheKey);
                for (int i = 0; i < resourceIds.size(); i++) {
                    String str = resourceIds.get(i);
                    if (this.mStorage.contains(str, cacheKey)) {
                        this.mResourceIndex.add(str);
                        return true;
                    }
                }
                return false;
            } catch (IOException e) {
                return false;
            }
        }
    }

    @Override // com.facebook.common.disk.DiskTrimmable
    public void trimToMinimum() {
        synchronized (this.mLock) {
            maybeUpdateFileCacheSize();
            long size = this.mCacheStats.getSize();
            if (this.mCacheSizeLimitMinimum > 0 && size > 0 && size >= this.mCacheSizeLimitMinimum) {
                double d = 1.0d - (this.mCacheSizeLimitMinimum / size);
                if (d > TRIMMING_LOWER_BOUND) {
                    trimBy(d);
                }
            }
        }
    }

    @Override // com.facebook.common.disk.DiskTrimmable
    public void trimToNothing() {
        clearAll();
    }

    private void trimBy(double d) {
        synchronized (this.mLock) {
            try {
                this.mCacheStats.reset();
                maybeUpdateFileCacheSize();
                long size = this.mCacheStats.getSize();
                evictAboveSize(size - ((long) (size * d)), CacheEventListener.EvictionReason.CACHE_MANAGER_TRIMMED);
            } catch (IOException e) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.EVICTION, TAG, "trimBy: " + e.getMessage(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @GuardedBy("mLock")
    public boolean maybeUpdateFileCacheSize() {
        long now = this.mClock.now();
        if (!this.mCacheStats.isInitialized() || this.mCacheSizeLastUpdateTime == -1 || now - this.mCacheSizeLastUpdateTime > FILECACHE_SIZE_UPDATE_PERIOD_MS) {
            return maybeUpdateFileCacheSizeAndIndex();
        }
        return false;
    }

    @GuardedBy("mLock")
    private boolean maybeUpdateFileCacheSizeAndIndex() {
        Set<String> set;
        int i;
        int i2;
        long j;
        boolean z;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        long j2 = -1;
        long now = this.mClock.now();
        long j3 = now + FUTURE_TIMESTAMP_THRESHOLD_MS;
        if (this.mIndexPopulateAtStartupEnabled && this.mResourceIndex.isEmpty()) {
            set = this.mResourceIndex;
        } else if (this.mIndexPopulateAtStartupEnabled) {
            set = new HashSet();
        } else {
            set = null;
        }
        try {
            long j4 = 0;
            int i5 = 0;
            for (DiskStorage.Entry entry : this.mStorage.mo55getEntries()) {
                int i6 = i5 + 1;
                j4 += entry.getSize();
                if (entry.getTimestamp() > j3) {
                    int i7 = i3 + 1;
                    int size = (int) (i4 + entry.getSize());
                    j = Math.max(entry.getTimestamp() - now, j2);
                    i = size;
                    i2 = i7;
                    z = true;
                } else {
                    if (this.mIndexPopulateAtStartupEnabled) {
                        set.add(entry.getId());
                    }
                    long j5 = j2;
                    i = i4;
                    i2 = i3;
                    j = j5;
                    z = z2;
                }
                z2 = z;
                i5 = i6;
                i3 = i2;
                i4 = i;
                j2 = j;
            }
            if (z2) {
                this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.READ_INVALID_ENTRY, TAG, "Future timestamp found in " + i3 + " files , with a total size of " + i4 + " bytes, and a maximum time delta of " + j2 + "ms", null);
            }
            if (this.mCacheStats.getCount() != i5 || this.mCacheStats.getSize() != j4) {
                if (this.mIndexPopulateAtStartupEnabled && this.mResourceIndex != set) {
                    this.mResourceIndex.clear();
                    this.mResourceIndex.addAll(set);
                }
                this.mCacheStats.set(j4, i5);
            }
            this.mCacheSizeLastUpdateTime = now;
            return true;
        } catch (IOException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.GENERIC_IO, TAG, "calcFileCacheSize: " + e.getMessage(), e);
            return false;
        }
    }
}
