package com.unity3d.ads.cache;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import com.unity3d.ads.api.Request;
import com.unity3d.ads.device.Device;
import com.unity3d.ads.log.DeviceLog;
import com.unity3d.ads.request.IWebRequestProgressListener;
import com.unity3d.ads.request.WebRequest;
import com.unity3d.ads.webview.WebViewApp;
import com.unity3d.ads.webview.WebViewEventCategory;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class CacheThreadHandler extends Handler {
    private WebRequest _currentRequest = null;
    private boolean _canceled = false;
    private boolean _active = false;

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Bundle data = message.getData();
        String string = data.getString("source");
        String string2 = data.getString("target");
        int i = data.getInt("connectTimeout");
        int i2 = data.getInt("readTimeout");
        int i3 = data.getInt("progressInterval");
        switch (message.what) {
            case 1:
                downloadFile(string, string2, new File(string2).length(), i, i2, i3);
                return;
            default:
                return;
        }
    }

    public void setCancelStatus(boolean z) {
        this._canceled = z;
        if (z && this._currentRequest != null) {
            this._active = false;
            this._currentRequest.cancel();
        }
    }

    public boolean isActive() {
        return this._active;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0228 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x025c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void downloadFile(String str, String str2, final long j, int i, int i2, final int i3) {
        FileOutputStream fileOutputStream;
        if (this._canceled || str == null || str2 == null) {
            return;
        }
        if (j > 0) {
            DeviceLog.debug("Unity Ads cache: resuming download " + str + " to " + str2 + " at " + j + " bytes");
        } else {
            DeviceLog.debug("Unity Ads cache: start downloading " + str + " to " + str2);
        }
        if (!Device.isActiveNetworkConnected()) {
            DeviceLog.debug("Unity Ads cache: download cancelled, no internet connection available");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.NO_INTERNET, str);
            return;
        }
        this._active = true;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        File file = new File(str2);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file, j > 0);
                try {
                    this._currentRequest = getWebRequest(str, j, i, i2);
                    this._currentRequest.setProgressListener(new IWebRequestProgressListener() { // from class: com.unity3d.ads.cache.CacheThreadHandler.1
                        private long lastProgressEventTime = System.currentTimeMillis();

                        @Override // com.unity3d.ads.request.IWebRequestProgressListener
                        public void onRequestStart(String str3, long j2, int i4, Map<String, List<String>> map) {
                            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_STARTED, str3, Long.valueOf(j), Long.valueOf(j2), Integer.valueOf(i4), Request.getResponseHeadersMap(map));
                        }

                        @Override // com.unity3d.ads.request.IWebRequestProgressListener
                        public void onRequestProgress(String str3, long j2, long j3) {
                            if (i3 > 0 && System.currentTimeMillis() - this.lastProgressEventTime > i3) {
                                this.lastProgressEventTime = System.currentTimeMillis();
                                WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_PROGRESS, str3, Long.valueOf(j2), Long.valueOf(j3));
                            }
                        }
                    });
                    long makeStreamRequest = this._currentRequest.makeStreamRequest(fileOutputStream);
                    this._active = false;
                    postProcessDownload(elapsedRealtime, str, file, makeStreamRequest, this._currentRequest.getContentLength(), this._currentRequest.isCanceled(), this._currentRequest.getResponseCode(), this._currentRequest.getResponseHeaders());
                    this._currentRequest = null;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e) {
                            DeviceLog.exception("Error closing stream", e);
                            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e.getMessage());
                        }
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    try {
                        DeviceLog.exception("Couldn't create target file", e);
                        this._active = false;
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e.getMessage());
                        this._currentRequest = null;
                        if (fileOutputStream2 == null) {
                            return;
                        }
                        try {
                            fileOutputStream2.close();
                        } catch (Exception e3) {
                            DeviceLog.exception("Error closing stream", e3);
                            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e3.getMessage());
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        this._currentRequest = null;
                        if (fileOutputStream != null) {
                        }
                        throw th;
                    }
                } catch (IllegalStateException e4) {
                    e = e4;
                    DeviceLog.exception("Couldn't request stream", e);
                    this._active = false;
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e.getMessage());
                    this._currentRequest = null;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e5) {
                            DeviceLog.exception("Error closing stream", e5);
                            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e5.getMessage());
                        }
                    }
                } catch (MalformedURLException e6) {
                    e = e6;
                    DeviceLog.exception("Malformed URL", e);
                    this._active = false;
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.MALFORMED_URL, str, e.getMessage());
                    this._currentRequest = null;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e7) {
                            DeviceLog.exception("Error closing stream", e7);
                            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e7.getMessage());
                        }
                    }
                } catch (IOException e8) {
                    e = e8;
                    DeviceLog.exception("Couldn't request stream", e);
                    this._active = false;
                    WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e.getMessage());
                    this._currentRequest = null;
                    if (fileOutputStream != null) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                this._currentRequest = null;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e9) {
                        DeviceLog.exception("Error closing stream", e9);
                        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_ERROR, CacheError.FILE_IO_ERROR, str, e9.getMessage());
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e10) {
            e = e10;
        } catch (MalformedURLException e11) {
            e = e11;
            fileOutputStream = null;
        } catch (IOException e12) {
            e = e12;
            fileOutputStream = null;
        } catch (IllegalStateException e13) {
            e = e13;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            this._currentRequest = null;
            if (fileOutputStream != null) {
            }
            throw th;
        }
    }

    private void postProcessDownload(long j, String str, File file, long j2, long j3, boolean z, int i, Map<String, List<String>> map) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - j;
        if (!file.setReadable(true, false)) {
            DeviceLog.debug("Unity Ads cache: could not set file readable!");
        }
        if (!z) {
            DeviceLog.debug("Unity Ads cache: File " + file.getName() + " of " + j2 + " bytes downloaded in " + elapsedRealtime + "ms");
            WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_END, str, Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(elapsedRealtime), Integer.valueOf(i), Request.getResponseHeadersMap(map));
            return;
        }
        DeviceLog.debug("Unity Ads cache: downloading of " + str + " stopped");
        WebViewApp.getCurrentApp().sendEvent(WebViewEventCategory.CACHE, CacheEvent.DOWNLOAD_STOPPED, str, Long.valueOf(j2), Long.valueOf(j3), Long.valueOf(elapsedRealtime), Integer.valueOf(i), Request.getResponseHeadersMap(map));
    }

    private WebRequest getWebRequest(String str, long j, int i, int i2) throws MalformedURLException {
        HashMap hashMap = new HashMap();
        if (j > 0) {
            hashMap.put("Range", new ArrayList(Arrays.asList("bytes=" + j + "-")));
        }
        return new WebRequest(str, "GET", hashMap, i, i2);
    }
}
