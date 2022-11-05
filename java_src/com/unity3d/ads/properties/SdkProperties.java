package com.unity3d.ads.properties;

import android.content.Context;
import com.unity3d.ads.cache.CacheDirectory;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
/* loaded from: classes3.dex */
public class SdkProperties {
    private static final String CACHE_DIR_NAME = "UnityAdsCache";
    private static final String LOCAL_CACHE_FILE_PREFIX = "UnityAdsCache-";
    private static final String LOCAL_STORAGE_FILE_PREFIX = "UnityAdsStorage-";
    private static String _configUrl = getDefaultConfigUrl("release");
    private static CacheDirectory _cacheDirectory = null;
    private static int _showTimeout = 5000;
    private static boolean _initialized = false;
    private static boolean _testMode = false;

    public static boolean isInitialized() {
        return _initialized;
    }

    public static void setInitialized(boolean z) {
        _initialized = z;
    }

    public static boolean isTestMode() {
        return _testMode;
    }

    public static void setTestMode(boolean z) {
        _testMode = z;
    }

    public static int getVersionCode() {
        return 2008;
    }

    public static String getVersionName() {
        return "2.0.8";
    }

    public static String getCacheDirectoryName() {
        return CACHE_DIR_NAME;
    }

    public static String getCacheFilePrefix() {
        return LOCAL_CACHE_FILE_PREFIX;
    }

    public static String getLocalStorageFilePrefix() {
        return LOCAL_STORAGE_FILE_PREFIX;
    }

    public static void setConfigUrl(String str) throws URISyntaxException, MalformedURLException {
        if (str == null) {
            throw new MalformedURLException();
        }
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            throw new MalformedURLException();
        }
        new URL(str).toURI();
        _configUrl = str;
    }

    public static String getConfigUrl() {
        return _configUrl;
    }

    public static String getDefaultConfigUrl(String str) {
        return "https://config.unityads.unity3d.com/webview/" + getWebViewBranch() + "/" + str + "/config.json";
    }

    private static String getWebViewBranch() {
        return getVersionName();
    }

    public static String getLocalWebViewFile() {
        return getCacheDirectory().getAbsolutePath() + "/UnityAdsWebApp.html";
    }

    public static File getCacheDirectory() {
        return getCacheDirectory(ClientProperties.getApplicationContext());
    }

    public static File getCacheDirectory(Context context) {
        if (_cacheDirectory == null) {
            _cacheDirectory = new CacheDirectory(CACHE_DIR_NAME);
        }
        return _cacheDirectory.getCacheDirectory(context);
    }

    public static void setShowTimeout(int i) {
        _showTimeout = i;
    }

    public static int getShowTimeout() {
        return _showTimeout;
    }
}
