package com.unity3d.ads.device;

import android.content.Context;
import com.unity3d.ads.properties.SdkProperties;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public class StorageManager {
    protected static final Map<StorageType, String> _storageFileMap = new HashMap();
    protected static final List<Storage> _storages = new ArrayList();

    /* loaded from: classes3.dex */
    public enum StorageType {
        PRIVATE,
        PUBLIC
    }

    public static boolean init(Context context) {
        File cacheDirectory;
        if (context == null || (cacheDirectory = SdkProperties.getCacheDirectory(context)) == null) {
            return false;
        }
        addStorageLocation(StorageType.PUBLIC, cacheDirectory + "/" + SdkProperties.getLocalStorageFilePrefix() + "public-data.json");
        if (!setupStorage(StorageType.PUBLIC)) {
            return false;
        }
        addStorageLocation(StorageType.PRIVATE, cacheDirectory + "/" + SdkProperties.getLocalStorageFilePrefix() + "private-data.json");
        return setupStorage(StorageType.PRIVATE);
    }

    public static void initStorage(StorageType storageType) {
        if (hasStorage(storageType)) {
            Storage storage = getStorage(storageType);
            if (storage != null) {
                storage.initStorage();
            }
        } else if (_storageFileMap.containsKey(storageType)) {
            Storage storage2 = new Storage(_storageFileMap.get(storageType), storageType);
            storage2.initStorage();
            _storages.add(storage2);
        }
    }

    private static boolean setupStorage(StorageType storageType) {
        if (!hasStorage(storageType)) {
            initStorage(storageType);
            Storage storage = getStorage(storageType);
            if (storage != null && !storage.storageFileExists()) {
                storage.writeStorage();
            }
            if (storage == null) {
                return false;
            }
        }
        return true;
    }

    public static Storage getStorage(StorageType storageType) {
        if (_storages != null) {
            for (Storage storage : _storages) {
                if (storage.getType().equals(storageType)) {
                    return storage;
                }
            }
        }
        return null;
    }

    public static boolean hasStorage(StorageType storageType) {
        if (_storages != null) {
            for (Storage storage : _storages) {
                if (storage.getType().equals(storageType)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static synchronized void addStorageLocation(StorageType storageType, String str) {
        synchronized (StorageManager.class) {
            if (!_storageFileMap.containsKey(storageType)) {
                _storageFileMap.put(storageType, str);
            }
        }
    }

    public static synchronized void removeStorage(StorageType storageType) {
        synchronized (StorageManager.class) {
            if (getStorage(storageType) != null) {
                _storages.remove(getStorage(storageType));
            }
            if (_storageFileMap != null) {
                _storageFileMap.remove(storageType);
            }
        }
    }
}
