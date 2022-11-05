package com.unity3d.ads.api;

import com.unity3d.ads.cache.CacheError;
import com.unity3d.ads.cache.CacheThread;
import com.unity3d.ads.device.Device;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.misc.Utilities;
import com.unity3d.ads.properties.SdkProperties;
import com.unity3d.ads.webview.bridge.WebViewCallback;
import com.unity3d.ads.webview.bridge.WebViewExposed;
import java.io.File;
import java.io.FilenameFilter;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class Cache {
    @WebViewExposed
    public static void download(String str, String str2, WebViewCallback webViewCallback) {
        if (CacheThread.isActive()) {
            webViewCallback.error(CacheError.FILE_ALREADY_CACHING, new Object[0]);
        } else if (!Device.isActiveNetworkConnected()) {
            webViewCallback.error(CacheError.NO_INTERNET, new Object[0]);
        } else {
            CacheThread.download(str, fileIdToFilename(str2));
            webViewCallback.invoke(new Object[0]);
        }
    }

    @WebViewExposed
    public static void stop(WebViewCallback webViewCallback) {
        if (!CacheThread.isActive()) {
            webViewCallback.error(CacheError.NOT_CACHING, new Object[0]);
            return;
        }
        CacheThread.cancel();
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void isCaching(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Boolean.valueOf(CacheThread.isActive()));
    }

    @WebViewExposed
    public static void getFiles(WebViewCallback webViewCallback) {
        File cacheDirectory = SdkProperties.getCacheDirectory();
        if (cacheDirectory != null) {
            DeviceLog.debug("Unity Ads cache: checking app directory for Unity Ads cached files");
            File[] listFiles = cacheDirectory.listFiles(new FilenameFilter() { // from class: com.unity3d.ads.api.Cache.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file, String str) {
                    return str.startsWith(SdkProperties.getCacheFilePrefix());
                }
            });
            if (listFiles == null || listFiles.length == 0) {
                webViewCallback.invoke(new JSONArray());
            }
            try {
                JSONArray jSONArray = new JSONArray();
                for (File file : listFiles) {
                    String substring = file.getName().substring(SdkProperties.getCacheFilePrefix().length());
                    DeviceLog.debug("Unity Ads cache: found " + substring + ", " + file.length() + " bytes");
                    jSONArray.put(getFileJson(substring));
                }
                webViewCallback.invoke(jSONArray);
            } catch (JSONException e) {
                DeviceLog.exception("Error creating JSON", e);
                webViewCallback.error(CacheError.JSON_ERROR, new Object[0]);
            }
        }
    }

    @WebViewExposed
    public static void getFileInfo(String str, WebViewCallback webViewCallback) {
        try {
            webViewCallback.invoke(getFileJson(str));
        } catch (JSONException e) {
            DeviceLog.exception("Error creating JSON", e);
            webViewCallback.error(CacheError.JSON_ERROR, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getFilePath(String str, WebViewCallback webViewCallback) {
        if (!new File(fileIdToFilename(str)).exists()) {
            webViewCallback.error(CacheError.FILE_NOT_FOUND, new Object[0]);
        } else {
            webViewCallback.invoke(fileIdToFilename(str));
        }
    }

    @WebViewExposed
    public static void deleteFile(String str, WebViewCallback webViewCallback) {
        if (new File(fileIdToFilename(str)).delete()) {
            webViewCallback.invoke(new Object[0]);
        } else {
            webViewCallback.error(CacheError.FILE_IO_ERROR, new Object[0]);
        }
    }

    @WebViewExposed
    public static void getHash(String str, WebViewCallback webViewCallback) {
        webViewCallback.invoke(Utilities.Sha256(str));
    }

    @WebViewExposed
    public static void setTimeouts(Integer num, Integer num2, WebViewCallback webViewCallback) {
        CacheThread.setConnectTimeout(num.intValue());
        CacheThread.setReadTimeout(num2.intValue());
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getTimeouts(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Integer.valueOf(CacheThread.getConnectTimeout()), Integer.valueOf(CacheThread.getReadTimeout()));
    }

    @WebViewExposed
    public static void setProgressInterval(Integer num, WebViewCallback webViewCallback) {
        CacheThread.setProgressInterval(num.intValue());
        webViewCallback.invoke(new Object[0]);
    }

    @WebViewExposed
    public static void getProgressInterval(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Integer.valueOf(CacheThread.getProgressInterval()));
    }

    @WebViewExposed
    public static void getFreeSpace(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Long.valueOf(Device.getFreeSpace(SdkProperties.getCacheDirectory())));
    }

    @WebViewExposed
    public static void getTotalSpace(WebViewCallback webViewCallback) {
        webViewCallback.invoke(Long.valueOf(Device.getTotalSpace(SdkProperties.getCacheDirectory())));
    }

    private static String fileIdToFilename(String str) {
        return SdkProperties.getCacheDirectory() + "/" + SdkProperties.getCacheFilePrefix() + str;
    }

    private static JSONObject getFileJson(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", str);
        File file = new File(fileIdToFilename(str));
        if (file.exists()) {
            jSONObject.put("found", true);
            jSONObject.put("size", file.length());
            jSONObject.put("mtime", file.lastModified());
        } else {
            jSONObject.put("found", false);
        }
        return jSONObject;
    }
}
