package com.unity3d.ads.metadata;

import android.content.Context;
import com.unity3d.ads.device.Storage;
import com.unity3d.ads.device.StorageEvent;
import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class MetaData {
    private String _category;
    private Context _context;
    private Map<String, Object> _metaData;

    public MetaData(Context context) {
        this._context = context.getApplicationContext();
    }

    public void setCategory(String str) {
        this._category = str;
    }

    public String getCategory() {
        return this._category;
    }

    public void set(String str, Object obj) {
        if (this._metaData == null) {
            this._metaData = new HashMap();
        }
        if (getCategory() != null) {
            str = getCategory() + "." + str;
        }
        this._metaData.put(str + ".value", obj);
        this._metaData.put(str + ".ts", Long.valueOf(System.currentTimeMillis()));
    }

    public Map<String, Object> getEntries() {
        return this._metaData;
    }

    public void commit() {
        if (StorageManager.init(this._context)) {
            Storage storage = StorageManager.getStorage(StorageManager.StorageType.PUBLIC);
            if (this._metaData != null) {
                for (String str : this._metaData.keySet()) {
                    if (storage != null) {
                        storage.set(str, this._metaData.get(str));
                    }
                }
                if (storage != null) {
                    storage.writeStorage();
                    storage.sendEvent(StorageEvent.SET, this._metaData);
                    return;
                }
                return;
            }
            return;
        }
        DeviceLog.error("Unity Ads could not commit metadata due to storage error");
    }
}
