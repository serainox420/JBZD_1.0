package com.unity3d.ads.device;

import android.text.TextUtils;
import com.unity3d.ads.device.StorageManager;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Storage {
    private JSONObject _data;
    private String _targetFileName;
    private StorageManager.StorageType _type;

    public Storage(String str, StorageManager.StorageType storageType) {
        this._targetFileName = str;
        this._type = storageType;
    }

    public StorageManager.StorageType getType() {
        return this._type;
    }

    public synchronized boolean set(String str, Object obj) {
        boolean z;
        if (this._data == null || str == null || str.length() == 0 || obj == null) {
            DeviceLog.error("Storage not properly initialized or incorrect parameters:" + this._data + ", " + str + ", " + obj);
            z = false;
        } else {
            createObjectTree(getParentObjectTreeFor(str));
            if (findObject(getParentObjectTreeFor(str)) instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) findObject(getParentObjectTreeFor(str));
                String[] split = str.split("\\.");
                if (jSONObject != null) {
                    try {
                        jSONObject.put(split[split.length - 1], obj);
                    } catch (JSONException e) {
                        DeviceLog.exception("Couldn't set value", e);
                        z = false;
                    }
                }
                z = true;
            } else {
                DeviceLog.debug("Cannot set subvalue to an object that is not JSONObject");
                z = false;
            }
        }
        return z;
    }

    public synchronized Object get(String str) {
        JSONObject jSONObject;
        Object obj;
        Object obj2 = null;
        synchronized (this) {
            if (this._data == null) {
                DeviceLog.error("Data is NULL, readStorage probably not called");
            } else {
                String[] split = str.split("\\.");
                if ((findObject(getParentObjectTreeFor(str)) instanceof JSONObject) && (jSONObject = (JSONObject) findObject(getParentObjectTreeFor(str))) != null) {
                    try {
                    } catch (Exception e) {
                        DeviceLog.exception("Error getting data", e);
                    }
                    if (jSONObject.has(split[split.length - 1])) {
                        obj = jSONObject.get(split[split.length - 1]);
                        obj2 = obj;
                    }
                    obj = null;
                    obj2 = obj;
                }
            }
        }
        return obj2;
    }

    public synchronized List<String> getKeys(String str, boolean z) {
        ArrayList arrayList;
        if (get(str) instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) get(str);
            ArrayList arrayList2 = new ArrayList();
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    List<String> keys2 = z ? getKeys(str + "." + next, z) : null;
                    arrayList2.add(next);
                    if (keys2 != null) {
                        Iterator<String> it = keys2.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(next + "." + it.next());
                        }
                    }
                }
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        return arrayList;
    }

    public synchronized boolean delete(String str) {
        boolean z;
        JSONObject jSONObject;
        if (this._data == null) {
            DeviceLog.error("Data is NULL, readStorage probably not called");
            z = false;
        } else {
            String[] split = str.split("\\.");
            z = (!(findObject(getParentObjectTreeFor(str)) instanceof JSONObject) || (jSONObject = (JSONObject) findObject(getParentObjectTreeFor(str))) == null || jSONObject.remove(split[split.length + (-1)]) == null) ? false : true;
        }
        return z;
    }

    public synchronized boolean readStorage() {
        boolean z = false;
        synchronized (this) {
            File file = new File(this._targetFileName);
            if (Utilities.readFile(file) != null) {
                try {
                    this._data = new JSONObject(Utilities.readFile(file));
                    z = true;
                } catch (Exception e) {
                    DeviceLog.exception("Error creating storage JSON", e);
                }
            }
        }
        return z;
    }

    public synchronized boolean initStorage() {
        readStorage();
        if (this._data == null) {
            this._data = new JSONObject();
        }
        return true;
    }

    public synchronized boolean writeStorage() {
        return this._data != null ? Utilities.writeFile(new File(this._targetFileName), this._data.toString()) : false;
    }

    public synchronized boolean clearStorage() {
        this._data = null;
        return new File(this._targetFileName).delete();
    }

    public synchronized void clearData() {
        this._data = null;
    }

    public synchronized boolean hasData() {
        boolean z;
        if (this._data != null) {
            if (this._data.length() > 0) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public synchronized boolean storageFileExists() {
        return new File(this._targetFileName).exists();
    }

    public synchronized void sendEvent(StorageEvent storageEvent, Object... objArr) {
        boolean z = false;
        synchronized (this) {
            if (WebViewApp.getCurrentApp() != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(Arrays.asList(objArr));
                arrayList.add(0, this._type.name());
                z = WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.STORAGE, storageEvent, arrayList.toArray());
            }
            if (!z) {
                DeviceLog.debug("Couldn't send storage event to WebApp");
            }
        }
    }

    private synchronized Object findObject(String str) {
        JSONObject jSONObject;
        String[] split = str.split("\\.");
        jSONObject = this._data;
        if (str.length() != 0) {
            int i = 0;
            while (true) {
                if (i < split.length) {
                    if (!jSONObject.has(split[i])) {
                        jSONObject = null;
                        break;
                    }
                    try {
                        JSONObject jSONObject2 = jSONObject.getJSONObject(split[i]);
                        i++;
                        jSONObject = jSONObject2;
                    } catch (Exception e) {
                        DeviceLog.exception("Couldn't read JSONObject: " + split[i], e);
                        jSONObject = null;
                    }
                } else {
                    break;
                }
            }
        }
        return jSONObject;
    }

    private synchronized void createObjectTree(String str) {
        String[] split = str.split("\\.");
        JSONObject jSONObject = this._data;
        if (str.length() != 0) {
            JSONObject jSONObject2 = jSONObject;
            for (int i = 0; i < split.length; i++) {
                if (!jSONObject2.has(split[i])) {
                    try {
                        JSONObject put = jSONObject2.put(split[i], new JSONObject());
                        try {
                            jSONObject2 = put.getJSONObject(split[i]);
                        } catch (Exception e) {
                            jSONObject2 = put;
                            e = e;
                            DeviceLog.exception("Couldn't create new JSONObject", e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                } else {
                    try {
                        jSONObject2 = jSONObject2.getJSONObject(split[i]);
                    } catch (Exception e3) {
                        DeviceLog.exception("Couldn't get existing JSONObject", e3);
                    }
                }
            }
        }
    }

    private synchronized String getParentObjectTreeFor(String str) {
        ArrayList arrayList;
        arrayList = new ArrayList(Arrays.asList(str.split("\\.")));
        arrayList.remove(arrayList.size() - 1);
        return TextUtils.join(".", arrayList.toArray());
    }
}
