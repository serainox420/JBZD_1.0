package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.services.common.i;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class MetaDataStore {
    private static final String KEYDATA_SUFFIX = "keys";
    private static final String KEY_USER_EMAIL = "userEmail";
    private static final String KEY_USER_ID = "userId";
    private static final String KEY_USER_NAME = "userName";
    private static final String METADATA_EXT = ".meta";
    private static final String USERDATA_SUFFIX = "user";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final File filesDir;

    public MetaDataStore(File file) {
        this.filesDir = file;
    }

    public void writeUserData(String str, UserMetaData userMetaData) {
        BufferedWriter bufferedWriter;
        File userDataFileForSession = getUserDataFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                String userDataToJson = userDataToJson(userMetaData);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userDataFileForSession), UTF_8));
                try {
                    bufferedWriter.write(userDataToJson);
                    bufferedWriter.flush();
                    i.a((Closeable) bufferedWriter, "Failed to close user metadata file.");
                } catch (Exception e) {
                    e = e;
                    c.h().e(CrashlyticsCore.TAG, "Error serializing user metadata.", e);
                    i.a((Closeable) bufferedWriter, "Failed to close user metadata file.");
                }
            } catch (Throwable th) {
                th = th;
                bufferedWriter2 = bufferedWriter;
                i.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            bufferedWriter = null;
        } catch (Throwable th2) {
            th = th2;
            i.a((Closeable) bufferedWriter2, "Failed to close user metadata file.");
            throw th;
        }
    }

    public UserMetaData readUserData(String str) {
        FileInputStream fileInputStream;
        File userDataFileForSession = getUserDataFileForSession(str);
        if (!userDataFileForSession.exists()) {
            return UserMetaData.EMPTY;
        }
        try {
            fileInputStream = new FileInputStream(userDataFileForSession);
            try {
                try {
                    UserMetaData jsonToUserData = jsonToUserData(i.a((InputStream) fileInputStream));
                    i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    return jsonToUserData;
                } catch (Exception e) {
                    e = e;
                    c.h().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                    i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    return UserMetaData.EMPTY;
                }
            } catch (Throwable th) {
                th = th;
                i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
            throw th;
        }
    }

    public void writeKeyData(String str, Map<String, String> map) {
        BufferedWriter bufferedWriter;
        File keysFileForSession = getKeysFileForSession(str);
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                String keysDataToJson = keysDataToJson(map);
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(keysFileForSession), UTF_8));
                try {
                    bufferedWriter.write(keysDataToJson);
                    bufferedWriter.flush();
                    i.a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
                } catch (Exception e) {
                    e = e;
                    c.h().e(CrashlyticsCore.TAG, "Error serializing key/value metadata.", e);
                    i.a((Closeable) bufferedWriter, "Failed to close key/value metadata file.");
                }
            } catch (Throwable th) {
                th = th;
                bufferedWriter2 = bufferedWriter;
                i.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            bufferedWriter = null;
        } catch (Throwable th2) {
            th = th2;
            i.a((Closeable) bufferedWriter2, "Failed to close key/value metadata file.");
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public Map<String, String> readKeyData(String str) {
        FileInputStream fileInputStream;
        Map<String, String> emptyMap;
        File keysFileForSession = getKeysFileForSession(str);
        boolean exists = keysFileForSession.exists();
        if (!exists) {
            return Collections.emptyMap();
        }
        try {
            try {
                fileInputStream = new FileInputStream(keysFileForSession);
                try {
                    emptyMap = jsonToKeysData(i.a((InputStream) fileInputStream));
                    i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    exists = fileInputStream;
                } catch (Exception e) {
                    e = e;
                    c.h().e(CrashlyticsCore.TAG, "Error deserializing user metadata.", e);
                    i.a((Closeable) fileInputStream, "Failed to close user metadata file.");
                    emptyMap = Collections.emptyMap();
                    exists = fileInputStream;
                    return emptyMap;
                }
            } catch (Throwable th) {
                th = th;
                i.a((Closeable) exists, "Failed to close user metadata file.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            exists = 0;
            i.a((Closeable) exists, "Failed to close user metadata file.");
            throw th;
        }
        return emptyMap;
    }

    private File getUserDataFileForSession(String str) {
        return new File(this.filesDir, str + USERDATA_SUFFIX + METADATA_EXT);
    }

    private File getKeysFileForSession(String str) {
        return new File(this.filesDir, str + KEYDATA_SUFFIX + METADATA_EXT);
    }

    private static UserMetaData jsonToUserData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        return new UserMetaData(valueOrNull(jSONObject, KEY_USER_ID), valueOrNull(jSONObject, KEY_USER_NAME), valueOrNull(jSONObject, KEY_USER_EMAIL));
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.crashlytics.android.core.MetaDataStore$1] */
    private static String userDataToJson(final UserMetaData userMetaData) throws JSONException {
        return new JSONObject() { // from class: com.crashlytics.android.core.MetaDataStore.1
            {
                put(MetaDataStore.KEY_USER_ID, UserMetaData.this.id);
                put(MetaDataStore.KEY_USER_NAME, UserMetaData.this.name);
                put(MetaDataStore.KEY_USER_EMAIL, UserMetaData.this.email);
            }
        }.toString();
    }

    private static Map<String, String> jsonToKeysData(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            hashMap.put(next, valueOrNull(jSONObject, next));
        }
        return hashMap;
    }

    private static String keysDataToJson(Map<String, String> map) throws JSONException {
        return new JSONObject(map).toString();
    }

    private static String valueOrNull(JSONObject jSONObject, String str) {
        if (!jSONObject.isNull(str)) {
            return jSONObject.optString(str, null);
        }
        return null;
    }
}
