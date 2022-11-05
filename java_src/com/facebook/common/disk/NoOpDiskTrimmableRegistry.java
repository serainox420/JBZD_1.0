package com.facebook.common.disk;
/* loaded from: classes.dex */
public class NoOpDiskTrimmableRegistry implements DiskTrimmableRegistry {
    private static NoOpDiskTrimmableRegistry sInstance = null;

    private NoOpDiskTrimmableRegistry() {
    }

    public static synchronized NoOpDiskTrimmableRegistry getInstance() {
        NoOpDiskTrimmableRegistry noOpDiskTrimmableRegistry;
        synchronized (NoOpDiskTrimmableRegistry.class) {
            if (sInstance == null) {
                sInstance = new NoOpDiskTrimmableRegistry();
            }
            noOpDiskTrimmableRegistry = sInstance;
        }
        return noOpDiskTrimmableRegistry;
    }

    @Override // com.facebook.common.disk.DiskTrimmableRegistry
    public void registerDiskTrimmable(DiskTrimmable diskTrimmable) {
    }

    @Override // com.facebook.common.disk.DiskTrimmableRegistry
    public void unregisterDiskTrimmable(DiskTrimmable diskTrimmable) {
    }
}
