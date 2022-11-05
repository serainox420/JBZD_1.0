package com.video.adsdk.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.webkit.WebView;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.drive.DriveFile;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.video.adsdk.VideoAdSDKListener;
import com.video.adsdk.interfaces.ADRequestPreparedAction;
import com.video.adsdk.interfaces.FileDownloader;
import com.video.adsdk.interfaces.JavascriptBridge;
import com.video.adsdk.interfaces.JavascriptBridgeListener;
import com.video.adsdk.interfaces.PrefetcherListener;
import com.video.adsdk.interfaces.VideoBridge;
import com.video.adsdk.interfaces.VideoBridgeListener;
import com.video.adsdk.interfaces.checker.DeviceIdBundle;
import com.video.adsdk.internal.checker.ADConnectivityChecker;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class VideoAdSDKControllerUsingActivity implements JavascriptBridgeListener, PrefetcherListener, VideoBridgeListener {
    public static final VideoAdSDKControllerUsingActivity Instance = new VideoAdSDKControllerUsingActivity();
    private static final int RUN_ON_UI_THREAD = 1;
    private Context applicationContext;
    private ADVideoFile currentFile;
    private ADRequest currentRequest;
    private View embeddedView;
    private FileDownloader fileDownloader;
    private JavascriptBridge javascriptBridge;
    private VideoBridge videoBridge;
    private Prefetcher videoPrefetcher;
    private VideoAdSDKListener listener = null;
    private String publisherId = null;
    private final Map<String, String> params = new HashMap();
    private Boolean m_isShowSkipVisible = false;
    private boolean isVideoReadyToPlay = false;
    private boolean isMovieClicked = false;
    private boolean isPlayingAdvertising = false;
    private ADWifiMonitor wifiMonitor = null;
    private boolean wiFiOnly = true;
    Handler uiHandler = new Handler(Looper.getMainLooper()) { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((Runnable) message.obj).run();
                    return;
                default:
                    return;
            }
        }
    };
    int stateSendToJavascriptWithSecondOneAlready = 0;
    private String videoUrl = null;

    private VideoAdSDKControllerUsingActivity() {
    }

    public JavascriptBridge getJavascriptBridge() {
        return this.javascriptBridge;
    }

    public Prefetcher getPrefetcher() {
        return this.videoPrefetcher;
    }

    public VideoBridge getVideoBridge() {
        return this.videoBridge;
    }

    public void startLoadingAdvertisingURL() {
        setupJavascriptBridge();
        if (registeredWithPublisherId()) {
            if (isFakeNeeded()) {
                if (this.listener != null) {
                    this.listener.onAdvertisingIsReadyToPlay();
                }
            } else if (this.isPlayingAdvertising) {
                if (this.listener != null) {
                    this.listener.onAdvertisingNotAvailable();
                }
            } else {
                this.isPlayingAdvertising = true;
                this.isVideoReadyToPlay = false;
                if (this.videoBridge != null) {
                    this.videoBridge.removeWebView();
                }
                this.videoBridge = new ADVideoView(this.applicationContext);
                this.videoBridge.setFileDownloader(this.fileDownloader);
                this.videoBridge.addListener(this);
                WebView webView = this.javascriptBridge.getWebView();
                if (webView.getParent() != null) {
                    ((ViewGroup) webView.getParent()).removeAllViews();
                }
                this.videoBridge.setWebview(this.javascriptBridge.getWebView());
                if (this.m_isShowSkipVisible.booleanValue()) {
                    onShowSkip();
                }
                createADRequest(false);
            }
        }
    }

    public void startLoadingPrefetchingURL() {
        setupJavascriptBridge();
        if (registeredWithPublisherId()) {
            if (isFakeNeeded()) {
                if (this.listener != null) {
                    this.listener.onAdvertisingEventTracked("prefetch");
                    this.listener.onAdvertisingPrefetchingDidComplete();
                    this.listener.onAdvertisingEventTracked("prefetched");
                    return;
                }
                return;
            }
            createADRequest(true);
        }
    }

    private void createADRequest(final boolean z) {
        ADRequest.createRequest(this.applicationContext, this.publisherId, new ADRequestPreparedAction() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.2
            @Override // com.video.adsdk.interfaces.ADRequestPreparedAction
            public void onADRequestPrepared(ADRequest aDRequest) {
                VideoAdSDKControllerUsingActivity.this.currentRequest = aDRequest;
                VideoAdSDKControllerUsingActivity.this.runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoAdSDKControllerUsingActivity.this.currentRequest.setCustomParameters(VideoAdSDKControllerUsingActivity.this.params);
                        String urlForPrefetching = z ? VideoAdSDKControllerUsingActivity.this.currentRequest.getUrlForPrefetching(1) : VideoAdSDKControllerUsingActivity.this.currentRequest.getUrlForPlay();
                        if (urlForPrefetching != null) {
                            VideoAdSDKControllerUsingActivity.this.javascriptBridge.loadUrl(urlForPrefetching);
                        } else {
                            Log.e("VIDEO_AD_SDK", "No URL to load. No advertising ID");
                        }
                    }
                });
            }
        });
    }

    public boolean setUserAttribute(String str, String str2) {
        this.params.put(str, str2);
        if (this.javascriptBridge != null) {
            getJavascriptBridge().setParam(str, str2);
            return true;
        }
        return true;
    }

    public boolean registerWithPublisherID(Context context, String str, VideoAdSDKListener videoAdSDKListener, boolean z) {
        this.applicationContext = context;
        this.publisherId = str;
        this.listener = videoAdSDKListener;
        this.isPlayingAdvertising = false;
        setupWifiMonitor();
        setupPrefetcher(z);
        return true;
    }

    private void setupWifiMonitor() {
        unregisterReceiver(this.wifiMonitor);
        this.wifiMonitor = new ADWifiMonitor(new ADConnectivityChecker(this.applicationContext));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.supplicant.STATE_CHANGE");
        try {
            this.applicationContext.registerReceiver(this.wifiMonitor, intentFilter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                this.applicationContext.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    private void setupJavascriptBridge() {
        if (this.javascriptBridge != null) {
            this.javascriptBridge.cancel();
        }
        this.javascriptBridge = new ADJavascriptBridge(this.applicationContext);
        this.javascriptBridge.addListener(this);
    }

    private void setupPrefetcher(boolean z) {
        this.fileDownloader = new ADFileDownloader(this.applicationContext, z);
        if (this.videoPrefetcher != null) {
            this.videoPrefetcher.stopPrefetching();
        }
        this.videoPrefetcher = new Prefetcher();
        this.videoPrefetcher.setWiFiOnly(this.wiFiOnly);
        this.videoPrefetcher.setWifiMonitor(this.wifiMonitor);
        this.videoPrefetcher.setFileDownloader(this.fileDownloader);
        this.videoPrefetcher.addPrefetcherListener(this);
    }

    public void movieClick() {
        this.javascriptBridge.movieClick();
        if (this.listener != null) {
            this.listener.onAdvertisingClicked();
        }
    }

    public void setIsPlayingAdvertising(boolean z) {
        this.isPlayingAdvertising = z;
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPlayMovie(String str) {
        if (str == null || str == "") {
            advertisingFailedToLoad(new Exception("Invalid url: null"));
            return;
        }
        this.stateSendToJavascriptWithSecondOneAlready = 0;
        try {
            this.currentFile = new ADVideoFile(str, System.currentTimeMillis(), true);
            if (this.currentFile.isPrefetchedIn(getLocalDirectory())) {
                Log.d("VIDEO_AD_SDK", "File already prefetched");
                runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VideoAdSDKControllerUsingActivity.this.videoBridge != null) {
                            try {
                                VideoAdSDKControllerUsingActivity.this.videoBridge.setUrl(VideoAdSDKControllerUsingActivity.this.getLocalDirectory() + VideoAdSDKControllerUsingActivity.this.currentFile.getFilename());
                            } catch (IOException e) {
                                e.printStackTrace();
                                VideoAdSDKControllerUsingActivity.this.advertisingFailedToLoad(e);
                            }
                            VideoAdSDKControllerUsingActivity.this.videoBridge.play();
                        }
                    }
                });
            } else {
                this.videoPrefetcher.prefetchFile(this.currentFile);
            }
        } catch (MalformedURLException e) {
            advertisingNotAvailable(e.getMessage());
            e.printStackTrace();
        } catch (IOException e2) {
            advertisingFailedToLoad(e2);
            e2.printStackTrace();
        }
        if (str == null || str == "") {
            advertisingFailedToLoad(new Exception("Invalid url: null"));
        } else {
            this.stateSendToJavascriptWithSecondOneAlready = 0;
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onDisplay() {
        if (this.listener != null) {
            this.listener.onAdvertisingIsReadyToPlay();
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPrefetchURL(String str, long j) {
        try {
            this.videoPrefetcher.prefetchFile(new ADVideoFile(str, 1000 * j, false));
        } catch (MalformedURLException e) {
            advertisingNotAvailable(e.getMessage());
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onOpenURLInBrowser(String str, boolean z) {
        Intent intent;
        this.isMovieClicked = true;
        try {
            if (z) {
                intent = new Intent(this.applicationContext, BrowserActivity.class);
                intent.putExtra("url", str);
            } else {
                intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            }
            if (intent != null) {
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                this.applicationContext.startActivity(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    Boolean isShowSkipVisible() {
        return this.m_isShowSkipVisible;
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onShowSkip() {
        this.m_isShowSkipVisible = true;
        if (this.videoBridge != null) {
            ((View) this.videoBridge).post(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.4
                @Override // java.lang.Runnable
                public void run() {
                    VideoAdSDKControllerUsingActivity.this.videoBridge.showSkip();
                }
            });
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onTrack(String str) {
        if (this.listener != null) {
            this.listener.onAdvertisingEventTracked(str);
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageStartingLoad(String str) {
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageError(int i, String str, String str2) {
        advertisingFailedToLoad(new Exception(i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2));
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageTimeOut(String str, String str2) {
        advertisingTimedOut(str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2);
    }

    private boolean registeredWithPublisherId() {
        return this.publisherId != null;
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingDidComplete() {
        this.javascriptBridge.prefetchingComplete();
        if (this.listener != null) {
            this.listener.onAdvertisingPrefetchingDidComplete();
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onPageLoaded(String str) {
        for (String str2 : this.params.keySet()) {
            getJavascriptBridge().setParam(str2, this.params.get(str2));
        }
        DeviceIdBundle deviceIdBundle = this.currentRequest.getDeviceIdBundle();
        if (deviceIdBundle.getMAC() != null) {
            getJavascriptBridge().setParam("did1", deviceIdBundle.getMAC());
        }
        if (deviceIdBundle.getMacSHA1() != null) {
            getJavascriptBridge().setParam("did2", deviceIdBundle.getMacSHA1());
        }
        if (deviceIdBundle.getAdvertisingId() != null) {
            getJavascriptBridge().setParam("did3", deviceIdBundle.getAdvertisingId().getId());
        }
        if (deviceIdBundle.getOpenUDID() != null) {
            getJavascriptBridge().setParam("did5", deviceIdBundle.getOpenUDID());
        }
        if (deviceIdBundle.getAndroidId() != null) {
            getJavascriptBridge().setParam("did6", deviceIdBundle.getAndroidId());
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoIsReadyToPlay(VideoBridge.MovieState movieState, int i) {
        this.isVideoReadyToPlay = true;
        if (this.listener != null) {
            this.listener.onAdvertisingIsReadyToPlay();
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onFinish(int i) {
        if (i < 0) {
            advertisingNotAvailable(String.valueOf(i));
        }
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoIsComplete() {
        this.javascriptBridge.finalReturn(1);
    }

    public boolean isVideoPlaying() {
        return this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_PLAYING_SKIP || this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP || this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_PAUSED || this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_RESUMED || this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_BUFFERING || this.videoBridge.getCurrentMovieState() == VideoBridge.MovieState.MOVIESTATE_STARTED;
    }

    public boolean isClosableByUI() {
        return this.videoBridge.getCurrentMovieState() != VideoBridge.MovieState.MOVIESTATE_PLAYING_NO_SKIP || this.videoBridge.isClosableByUI();
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoReportsCurrentState(final VideoBridge.MovieState movieState, final long j) {
        ((View) this.videoBridge).post(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.5
            @Override // java.lang.Runnable
            public void run() {
                VideoAdSDKControllerUsingActivity.this.getJavascriptBridge().clearView();
                if (j == 1) {
                    VideoAdSDKControllerUsingActivity.this.stateSendToJavascriptWithSecondOneAlready++;
                    if (VideoAdSDKControllerUsingActivity.this.stateSendToJavascriptWithSecondOneAlready > 1) {
                        return;
                    }
                }
                VideoAdSDKControllerUsingActivity.this.getJavascriptBridge().moviePulse(movieState, j);
            }
        });
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onSkipButtonClicked() {
        this.videoPrefetcher.deleteExpiredFiles();
        getJavascriptBridge().moviePulse(VideoBridge.MovieState.MOVIESTATE_STOPPED_BY_USER, getVideoBridge().getCurrentSecond());
        this.javascriptBridge.finalReturn(1);
    }

    @Override // com.video.adsdk.interfaces.VideoBridgeListener
    public void onVideoPlaybackError(int i, int i2) {
        String format = String.format("Error: (%d, %d)", Integer.valueOf(i), Integer.valueOf(i2));
        this.videoBridge.shutdown();
        advertisingFailedToLoad(new Exception(format));
        this.javascriptBridge.troubleshoot(format, -1);
    }

    public void displayAdvertising() {
        this.isMovieClicked = false;
        if (registeredWithPublisherId()) {
            if (this.listener != null) {
                this.listener.onAdvertisingWillShow();
            }
            if (isFakeNeeded()) {
                Intent intent = new Intent(this.applicationContext, ADActivity.class);
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                intent.putExtra(ADActivity.PARAM_USE_FAKE, true);
                this.applicationContext.startActivity(intent);
            } else if (isViewEmbed()) {
                new EmbedViewController().displayAdvertising();
            } else {
                Intent intent2 = new Intent(this.applicationContext, ADActivity.class);
                intent2.setFlags(DriveFile.MODE_READ_ONLY);
                intent2.putExtra(ADActivity.PARAM_USE_FAKE, false);
                this.applicationContext.startActivity(intent2);
            }
        }
    }

    public boolean wasMovieClicked() {
        return this.isMovieClicked;
    }

    public void advertisingDidHide() {
        this.isMovieClicked = false;
        this.isPlayingAdvertising = false;
        if (this.listener != null) {
            this.listener.onAdvertisingDidHide();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void advertisingFailedToLoad(Exception exc) {
        this.isPlayingAdvertising = false;
        if (this.listener != null) {
            this.listener.onAdvertisingFailedToLoad(exc);
        }
        Tracker.sendMessage(13, exc.getMessage(), this.videoUrl, this.currentFile != null ? this.currentFile.getUrl() : null, this.currentRequest.getUrlForPlay());
    }

    private void advertisingNotAvailable(String str) {
        this.isPlayingAdvertising = false;
        if (this.listener != null) {
            this.listener.onAdvertisingNotAvailable();
        }
        Tracker.sendMessage(12, "Adveresting is not available: " + str, this.videoUrl, this.currentFile != null ? this.currentFile.getUrl() : null, this.currentRequest.getUrlForPlay());
    }

    private void advertisingTimedOut(String str) {
        this.isPlayingAdvertising = false;
        if (this.listener != null) {
            this.listener.onAdvertisingTimedOut();
        }
        Tracker.sendMessage(11, str, this.videoUrl, this.currentFile != null ? this.currentFile.getUrl() : null, this.currentRequest.getUrlForPlay());
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingStarted() {
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchedFile(ADVideoFile aDVideoFile) {
        this.currentFile = aDVideoFile;
        if (aDVideoFile.shouldPlayAfterPrefetching()) {
            try {
                if (this.videoBridge != null) {
                    this.videoBridge.setUrl(Instance.getLocalDirectory() + aDVideoFile.getFilename());
                    runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.6
                        @Override // java.lang.Runnable
                        public void run() {
                            VideoAdSDKControllerUsingActivity.this.videoBridge.play();
                        }
                    });
                }
            } catch (IOException e) {
                Instance.advertisingFailedToLoad(e);
                e.printStackTrace();
            }
        }
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onProgress(double d) {
        if (this.listener != null) {
            this.listener.onPrefetcherProgress(d);
        }
    }

    @Override // com.video.adsdk.interfaces.PrefetcherListener
    public void onPrefetchingFailed() {
        runOnUiThread(new Runnable() { // from class: com.video.adsdk.internal.VideoAdSDKControllerUsingActivity.7
            @Override // java.lang.Runnable
            public void run() {
                VideoAdSDKControllerUsingActivity.this.javascriptBridge.cancel();
            }
        });
        advertisingNotAvailable("prefetching failed");
    }

    public void runOnUiThread(Runnable runnable) {
        this.uiHandler.obtainMessage(1, runnable).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getLocalDirectory() throws IOException {
        return this.fileDownloader.getTargetDirectoryPath();
    }

    public void clearCache() {
        if (this.fileDownloader != null) {
            this.fileDownloader.deleteAllFiles();
        }
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onSetBackgroundColor(int i) {
        if (this.videoBridge != null) {
            this.videoBridge.setBackgroundColor(i);
        }
    }

    public boolean isFakeNeeded() {
        try {
            if (Build.FINGERPRINT.startsWith("generic")) {
                if (Build.VERSION.SDK_INT == 10) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void raiseFakeVideoPlayEvents(boolean z) {
        if (this.listener != null) {
            if (!z) {
                this.listener.onAdvertisingEventTracked("impression");
                this.listener.onAdvertisingEventTracked(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE);
                this.listener.onAdvertisingEventTracked(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT);
                this.listener.onAdvertisingEventTracked(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE);
                return;
            }
            this.listener.onAdvertisingEventTracked(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
        }
    }

    public boolean isCorrectVersion() {
        return Build.VERSION.SDK_INT > 7;
    }

    @Override // com.video.adsdk.interfaces.JavascriptBridgeListener
    public void onShowDialog(String str, JsResult jsResult) {
    }

    public ADVideoFile getCurrentFile() {
        return this.currentFile;
    }

    public void enableEmbedView(View view) {
        this.embeddedView = view;
    }

    public void disableEmbedView() {
        this.embeddedView = null;
    }

    public boolean isViewEmbed() {
        return this.embeddedView != null;
    }

    public View getEmbeddedView() {
        return this.embeddedView;
    }

    public void setWiFiOnly(boolean z) {
        this.wiFiOnly = z;
        if (this.videoPrefetcher != null) {
            this.videoPrefetcher.setWiFiOnly(z);
        }
    }

    public boolean isWiFiOnly() {
        return this.wiFiOnly;
    }

    public boolean registerWithPublisherID(Context context, String str, String str2, VideoAdSDKListener videoAdSDKListener, boolean z) {
        this.applicationContext = context;
        this.publisherId = str;
        this.listener = videoAdSDKListener;
        this.videoUrl = str2;
        this.isPlayingAdvertising = false;
        setupWifiMonitor();
        setupPrefetcher(z);
        return true;
    }
}
