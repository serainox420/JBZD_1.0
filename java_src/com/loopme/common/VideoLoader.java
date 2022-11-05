package com.loopme.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.loopme.debugging.ErrorLog;
import com.loopme.debugging.ErrorType;
import com.loopme.request.AdRequestParametersProvider;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* loaded from: classes2.dex */
public class VideoLoader {
    private static final String LOG_TAG = VideoLoader.class.getSimpleName();
    private static final int TIMEOUT = 20000;
    private int lenghtOfPreview;
    private Callback mCallback;
    private volatile HttpURLConnection mConnection;
    private Context mContext;
    private volatile boolean mIsVideoFullyDownloaded;
    private FileOutputStream mOutputStream;
    private boolean mPartPreload;
    private String mShortFileName;
    private volatile boolean mStop;
    private File mVideoFile;
    private String mVideoUrl;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onError(LoopMeError loopMeError);

        void onFullVideoLoaded(String str);

        void onPreviewLoaded(String str);
    }

    public VideoLoader(String str, boolean z, Context context, Callback callback) {
        this.mCallback = callback;
        this.mContext = context;
        this.mVideoUrl = str;
        this.mPartPreload = z;
    }

    public void start() {
        Logging.out(LOG_TAG, SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
        handleEmulator();
        Logging.out(LOG_TAG, "Use mobile network for caching: true");
        VideoUtils.deleteInvalidVideoFiles(this.mContext);
        this.mShortFileName = VideoUtils.detectFileName(this.mVideoUrl) + VideoUtils.MP4_FORMAT;
        if (VideoUtils.checkFileNotExists(this.mShortFileName, this.mContext) != null) {
            Logging.out(LOG_TAG, "Video file already exists");
            if (this.mCallback != null) {
                this.mCallback.onFullVideoLoaded(VideoUtils.getParentDir(this.mContext).getAbsolutePath() + "/" + this.mShortFileName);
            }
        } else if (AdRequestParametersProvider.getInstance().getConnectionType(this.mContext) == 2) {
            preloadVideo(this.mPartPreload);
        } else {
            preloadVideo(this.mPartPreload);
        }
    }

    private void handleEmulator() {
        if (Utils.isEmulator()) {
            Logging.out(LOG_TAG, "running on emulator");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void load(String str, boolean z) {
        int i;
        int i2;
        String str2;
        int i3 = 0;
        if (this.mStop) {
            return;
        }
        this.lenghtOfPreview = 0;
        try {
            try {
                try {
                    URL url = new URL(this.mVideoUrl);
                    this.mConnection = (HttpURLConnection) url.openConnection();
                    this.mConnection.setRequestMethod("HEAD");
                    if (this.mConnection.getResponseCode() == 200) {
                        String headerField = this.mConnection.getHeaderField("ETag");
                        try {
                            i2 = this.mConnection.getContentLength();
                            try {
                                this.mConnection.disconnect();
                                if (this.mStop) {
                                    if (this.mOutputStream == null) {
                                        return;
                                    }
                                    try {
                                        this.mOutputStream.close();
                                        return;
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                        return;
                                    }
                                }
                                Logging.out(LOG_TAG, "Length of file: " + i2);
                                if (z) {
                                    this.lenghtOfPreview = i2 / 4;
                                }
                                this.mConnection = (HttpURLConnection) url.openConnection();
                                this.mConnection.setRequestMethod("GET");
                                if (z) {
                                    configGetConnection(headerField, this.lenghtOfPreview);
                                } else {
                                    configGetConnection(headerField, i2);
                                }
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.mConnection.getInputStream());
                                if (this.mStop) {
                                    if (this.mOutputStream == null) {
                                        return;
                                    }
                                    try {
                                        this.mOutputStream.close();
                                        return;
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        return;
                                    }
                                }
                                this.mShortFileName = VideoUtils.getParentDir(this.mContext).getAbsolutePath() + "/" + str;
                                this.mVideoFile = new File(this.mShortFileName);
                                this.mOutputStream = new FileOutputStream(this.mVideoFile);
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = bufferedInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    this.mOutputStream.write(bArr, 0, read);
                                    i3 += read;
                                }
                                if (z) {
                                    handleVideoPreviewLoaded(i3, headerField, i2);
                                } else {
                                    handleVideoFullDownloaded();
                                }
                            } catch (IOException e3) {
                                e = e3;
                                i = 0;
                                str2 = headerField;
                                Logging.out(LOG_TAG, "Exception: " + e.getMessage());
                                e.printStackTrace();
                                if (z) {
                                    i2 = this.lenghtOfPreview;
                                }
                                reconnect(i, str2, i2, z);
                                if (this.mOutputStream == null) {
                                    return;
                                }
                                try {
                                    this.mOutputStream.close();
                                    return;
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                    return;
                                }
                            }
                        } catch (IOException e5) {
                            e = e5;
                            i2 = 0;
                            i = 0;
                            str2 = headerField;
                        }
                    } else {
                        if (this.mCallback != null) {
                            this.mCallback.onError(new LoopMeError("Error during loading video"));
                        }
                        ErrorLog.post("Bad asset[responseCode == " + this.mConnection.getResponseCode() + "]:" + this.mVideoUrl, ErrorType.BAD_ASSET);
                    }
                    if (this.mOutputStream == null) {
                        return;
                    }
                    try {
                        this.mOutputStream.close();
                    } catch (IOException e6) {
                        e6.printStackTrace();
                    }
                } catch (MalformedURLException e7) {
                    e7.printStackTrace();
                    ErrorLog.post("Bad asset[MalformedURLException]: " + this.mVideoUrl, ErrorType.BAD_ASSET);
                    if (this.mOutputStream == null) {
                        return;
                    }
                    try {
                        this.mOutputStream.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                }
            } catch (Throwable th) {
                if (this.mOutputStream != null) {
                    try {
                        this.mOutputStream.close();
                    } catch (IOException e9) {
                        e9.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e10) {
            e = e10;
            i = 0;
            i2 = 0;
            str2 = null;
        }
    }

    private void handleVideoPreviewLoaded(int i, String str, int i2) {
        Logging.out(LOG_TAG, "downloaded preview! file size: " + this.mVideoFile.length());
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.loopme.common.VideoLoader.1
            @Override // java.lang.Runnable
            public void run() {
                if (VideoLoader.this.mCallback != null) {
                    VideoLoader.this.mCallback.onPreviewLoaded(VideoLoader.this.mShortFileName);
                }
            }
        });
        Logging.out(LOG_TAG, "load rest of file");
        reconnect(i, str, i2, false);
    }

    private void reconnect(int i, String str, int i2, boolean z) {
        if (!this.mStop) {
            Logging.out(LOG_TAG, "reconnect " + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + z);
            if (i == 0) {
                ErrorLog.post("Bad asset[loaded 0 bytes]: " + this.mVideoUrl, ErrorType.BAD_ASSET);
                if (this.mCallback != null) {
                    this.mCallback.onError(new LoopMeError("Error during video loading"));
                    return;
                }
                return;
            }
            try {
                this.mConnection = (HttpURLConnection) new URL(this.mVideoUrl).openConnection();
                this.mConnection.setRequestMethod("GET");
                this.mConnection.setRequestProperty("Range", "bytes=" + i + "-" + i2);
                this.mConnection.setRequestProperty("If-Range", str);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.mConnection.getInputStream());
                FileOutputStream fileOutputStream = new FileOutputStream(this.mVideoFile, true);
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                    i += read;
                }
                bufferedInputStream.close();
                fileOutputStream.close();
                if (z) {
                    handleVideoPreviewLoaded(i, str, i2);
                } else {
                    handleVideoFullDownloaded();
                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                Logging.out(LOG_TAG, "Exception: " + e2.getMessage());
                e2.printStackTrace();
                reconnect(i, str, i2, z);
            }
        }
    }

    private void handleVideoFullDownloaded() {
        this.mIsVideoFullyDownloaded = true;
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.loopme.common.VideoLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (VideoLoader.this.mCallback != null) {
                    VideoLoader.this.mCallback.onFullVideoLoaded(VideoLoader.this.mShortFileName);
                }
            }
        });
    }

    private void preloadVideo(final boolean z) {
        Logging.out(LOG_TAG, "preloadVideo " + z);
        ExecutorHelper.getExecutor().submit(new Runnable() { // from class: com.loopme.common.VideoLoader.3
            @Override // java.lang.Runnable
            public void run() {
                VideoLoader.this.load(VideoLoader.this.mShortFileName, z);
            }
        });
    }

    public void stop() {
        Logging.out(LOG_TAG, "stop()");
        this.mStop = true;
        if (this.mConnection != null) {
            ExecutorHelper.getExecutor().submit(new Runnable() { // from class: com.loopme.common.VideoLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    Logging.out(VideoLoader.LOG_TAG, "disconnect()");
                    VideoLoader.this.mConnection.disconnect();
                }
            });
        }
        if (!this.mIsVideoFullyDownloaded && this.mVideoFile != null && this.mVideoFile.exists()) {
            Logging.out(LOG_TAG, "remove bad file");
            this.mVideoFile.delete();
        }
    }

    private void configGetConnection(String str, int i) {
        this.mConnection.setReadTimeout(20000);
        this.mConnection.setConnectTimeout(20000);
        this.mConnection.setRequestProperty("Range", "bytes=0-" + i);
        this.mConnection.setRequestProperty("If-Range", str);
    }
}
