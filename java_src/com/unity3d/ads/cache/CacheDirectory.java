package com.unity3d.ads.cache;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.unity3d.ads.log.DeviceLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
/* loaded from: classes3.dex */
public class CacheDirectory {
    private static final String TEST_FILE_NAME = "UnityAdsTest.txt";
    private String _cacheDirName;
    private boolean _initialized = false;
    private File _cacheDirectory = null;

    public CacheDirectory(String str) {
        this._cacheDirName = str;
    }

    public File getCacheDirectory(Context context) {
        if (this._initialized) {
            return this._cacheDirectory;
        }
        this._initialized = true;
        if (Build.VERSION.SDK_INT > 18) {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File createCacheDirectory = createCacheDirectory(context.getExternalCacheDir(), this._cacheDirName);
                if (testCacheDirectory(createCacheDirectory)) {
                    this._cacheDirectory = createCacheDirectory;
                    DeviceLog.debug("Unity Ads is using external cache directory: " + createCacheDirectory.getAbsolutePath());
                    return this._cacheDirectory;
                }
            } else {
                DeviceLog.debug("External media not mounted");
            }
        }
        File filesDir = context.getFilesDir();
        if (testCacheDirectory(filesDir)) {
            this._cacheDirectory = filesDir;
            DeviceLog.debug("Unity Ads is using internal cache directory: " + filesDir.getAbsolutePath());
            return this._cacheDirectory;
        }
        DeviceLog.error("Unity Ads failed to initialize cache directory");
        return null;
    }

    public File createCacheDirectory(File file, String str) {
        if (file == null) {
            return null;
        }
        File file2 = new File(file, str);
        file2.mkdirs();
        if (!file2.isDirectory()) {
            return null;
        }
        return file2;
    }

    public boolean testCacheDirectory(File file) {
        boolean z = false;
        if (file != null && file.isDirectory()) {
            try {
                byte[] bytes = "test".getBytes("UTF-8");
                byte[] bArr = new byte[bytes.length];
                File file2 = new File(file, TEST_FILE_NAME);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.close();
                if (file.listFiles() == null) {
                    DeviceLog.debug("Failed to list files in directory " + file.getAbsolutePath());
                } else {
                    FileInputStream fileInputStream = new FileInputStream(file2);
                    int read = fileInputStream.read(bArr, 0, bArr.length);
                    fileInputStream.close();
                    if (!file2.delete()) {
                        DeviceLog.debug("Failed to delete testfile " + file2.getAbsoluteFile());
                    } else if (read != bArr.length) {
                        DeviceLog.debug("Read buffer size mismatch");
                    } else if (new String(bArr, "UTF-8").equals("test")) {
                        z = true;
                    } else {
                        DeviceLog.debug("Read buffer content mismatch");
                    }
                }
            } catch (Exception e) {
                DeviceLog.debug("Unity Ads exception while testing cache directory " + file.getAbsolutePath() + ": " + e.getMessage());
            }
        }
        return z;
    }
}
