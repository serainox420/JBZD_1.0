package com.amazon.device.ads;

import com.amazon.device.ads.AdWebViewClient;
import com.amazon.device.ads.ThreadUtils;
import com.amazon.device.ads.WebRequest;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdUrlLoader {
    private static final String LOGTAG = AdUrlLoader.class.getSimpleName();
    private final AdControlAccessor adControlAccessor;
    private final AdWebViewClient adWebViewClient;
    private final DeviceInfo deviceInfo;
    private final MobileAdsLogger logger;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebRequest.WebRequestFactory webRequestFactory;
    private final WebUtils2 webUtils;

    public AdUrlLoader(ThreadUtils.ThreadRunner threadRunner, AdWebViewClient adWebViewClient, WebRequest.WebRequestFactory webRequestFactory, AdControlAccessor adControlAccessor, WebUtils2 webUtils2, MobileAdsLoggerFactory mobileAdsLoggerFactory, DeviceInfo deviceInfo) {
        this.threadRunner = threadRunner;
        this.adWebViewClient = adWebViewClient;
        this.webRequestFactory = webRequestFactory;
        this.adControlAccessor = adControlAccessor;
        this.webUtils = webUtils2;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.deviceInfo = deviceInfo;
    }

    public void putUrlExecutorInAdWebViewClient(String str, AdWebViewClient.UrlExecutor urlExecutor) {
        this.adWebViewClient.putUrlExecutor(str, urlExecutor);
    }

    public void setAdWebViewClientListener(AdWebViewClient.AdWebViewClientListener adWebViewClientListener) {
        this.adWebViewClient.setListener(adWebViewClientListener);
    }

    public AdWebViewClient getAdWebViewClient() {
        return this.adWebViewClient;
    }

    public void loadUrl(final String str, final boolean z, final PreloadCallback preloadCallback) {
        String scheme = this.webUtils.getScheme(str);
        if (scheme.equals("http") || scheme.equals("https")) {
            this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdUrlLoader.1
                @Override // java.lang.Runnable
                public void run() {
                    AdUrlLoader.this.loadUrlInThread(str, z, preloadCallback);
                }
            }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.BACKGROUND_THREAD);
        } else {
            openUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadUrlInThread(final String str, final boolean z, final PreloadCallback preloadCallback) {
        WebRequest createWebRequest = this.webRequestFactory.createWebRequest();
        createWebRequest.setExternalLogTag(LOGTAG);
        createWebRequest.enableLogUrl(true);
        createWebRequest.setUrlString(str);
        createWebRequest.putHeader("User-Agent", this.deviceInfo.getUserAgentString());
        WebRequest.WebResponse webResponse = null;
        try {
            webResponse = createWebRequest.makeCall();
        } catch (WebRequest.WebRequestException e) {
            this.logger.e("Could not load URL (%s) into AdContainer: %s", str, e.getMessage());
        }
        if (webResponse != null) {
            final String readAsString = webResponse.getResponseReader().readAsString();
            if (readAsString != null) {
                this.threadRunner.execute(new Runnable() { // from class: com.amazon.device.ads.AdUrlLoader.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AdUrlLoader.this.adControlAccessor.loadHtml(str, readAsString, z, preloadCallback);
                    }
                }, ThreadUtils.ExecutionStyle.RUN_ASAP, ThreadUtils.ExecutionThread.MAIN_THREAD);
            } else {
                this.logger.e("Could not load URL (%s) into AdContainer.", str);
            }
        }
    }

    public void openUrl(String str) {
        this.adWebViewClient.openUrl(str);
    }
}
