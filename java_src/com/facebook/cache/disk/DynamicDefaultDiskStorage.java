package com.facebook.cache.disk;

import com.facebook.binaryresource.BinaryResource;
import com.facebook.cache.common.CacheErrorLogger;
import com.facebook.cache.disk.DiskStorage;
import com.facebook.common.file.FileTree;
import com.facebook.common.file.FileUtils;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Supplier;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.logging.FLog;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DynamicDefaultDiskStorage implements DiskStorage {
    private static final Class<?> TAG = DynamicDefaultDiskStorage.class;
    private final String mBaseDirectoryName;
    private final Supplier<File> mBaseDirectoryPathSupplier;
    private final CacheErrorLogger mCacheErrorLogger;
    @VisibleForTesting
    volatile State mCurrentState = new State(null, null);
    private final int mVersion;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class State {
        @Nullable
        public final DiskStorage delegate;
        @Nullable
        public final File rootDirectory;

        @VisibleForTesting
        State(@Nullable File file, @Nullable DiskStorage diskStorage) {
            this.delegate = diskStorage;
            this.rootDirectory = file;
        }
    }

    public DynamicDefaultDiskStorage(int i, Supplier<File> supplier, String str, CacheErrorLogger cacheErrorLogger) {
        this.mVersion = i;
        this.mCacheErrorLogger = cacheErrorLogger;
        this.mBaseDirectoryPathSupplier = supplier;
        this.mBaseDirectoryName = str;
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public boolean isEnabled() {
        try {
            return get().isEnabled();
        } catch (IOException e) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public boolean isExternal() {
        try {
            return get().isExternal();
        } catch (IOException e) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public String getStorageName() {
        try {
            return get().getStorageName();
        } catch (IOException e) {
            return "";
        }
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public BinaryResource getResource(String str, Object obj) throws IOException {
        return get().getResource(str, obj);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public boolean contains(String str, Object obj) throws IOException {
        return get().contains(str, obj);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public boolean touch(String str, Object obj) throws IOException {
        return get().touch(str, obj);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public void purgeUnexpectedResources() {
        try {
            get().purgeUnexpectedResources();
        } catch (IOException e) {
            FLog.e(TAG, "purgeUnexpectedResources", e);
        }
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public DiskStorage.Inserter insert(String str, Object obj) throws IOException {
        return get().insert(str, obj);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    /* renamed from: getEntries */
    public Collection<DiskStorage.Entry> mo55getEntries() throws IOException {
        return get().mo55getEntries();
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public long remove(DiskStorage.Entry entry) throws IOException {
        return get().remove(entry);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public long remove(String str) throws IOException {
        return get().remove(str);
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public void clearAll() throws IOException {
        get().clearAll();
    }

    @Override // com.facebook.cache.disk.DiskStorage
    public DiskStorage.DiskDumpInfo getDumpInfo() throws IOException {
        return get().getDumpInfo();
    }

    @VisibleForTesting
    synchronized DiskStorage get() throws IOException {
        if (shouldCreateNewStorage()) {
            deleteOldStorageIfNecessary();
            createStorage();
        }
        return (DiskStorage) Preconditions.checkNotNull(this.mCurrentState.delegate);
    }

    private boolean shouldCreateNewStorage() {
        State state = this.mCurrentState;
        return state.delegate == null || state.rootDirectory == null || !state.rootDirectory.exists();
    }

    @VisibleForTesting
    void deleteOldStorageIfNecessary() {
        if (this.mCurrentState.delegate != null && this.mCurrentState.rootDirectory != null) {
            FileTree.deleteRecursively(this.mCurrentState.rootDirectory);
        }
    }

    private void createStorage() throws IOException {
        File file = new File(this.mBaseDirectoryPathSupplier.mo89get(), this.mBaseDirectoryName);
        createRootDirectoryIfNecessary(file);
        this.mCurrentState = new State(file, new DefaultDiskStorage(file, this.mVersion, this.mCacheErrorLogger));
    }

    @VisibleForTesting
    void createRootDirectoryIfNecessary(File file) throws IOException {
        try {
            FileUtils.mkdirs(file);
            FLog.d(TAG, "Created cache directory %s", file.getAbsolutePath());
        } catch (FileUtils.CreateDirectoryException e) {
            this.mCacheErrorLogger.logError(CacheErrorLogger.CacheErrorCategory.WRITE_CREATE_DIR, TAG, "createRootDirectoryIfNecessary", e);
            throw e;
        }
    }
}
