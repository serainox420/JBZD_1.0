package com.millennialmedia.internal.adcontrollers;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import com.amazon.device.ads.WebRequest;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdContainer;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.VASTParser;
import com.millennialmedia.internal.video.VASTVideoView;
import com.millennialmedia.internal.video.VPAIDWebView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VASTVideoController extends AdController {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4141a = VASTVideoController.class.getSimpleName();
    private VASTVideoControllerListener b;
    private ViewGroup c;
    private VASTParser.InLineAd d;
    private List<VASTParser.WrapperAd> e;
    private List<String> f;

    /* loaded from: classes3.dex */
    public interface VASTVideoControllerListener {
        void attachFailed();

        void attachSucceeded();

        void close();

        void initFailed();

        void initSucceeded();

        void onClick();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);
    }

    /* loaded from: classes3.dex */
    public interface VideoViewActions {
        boolean onBackPressed();

        void shutdown();

        void updateLayout();
    }

    public VASTVideoController() {
    }

    public VASTVideoController(VASTVideoControllerListener vASTVideoControllerListener) {
        this.b = vASTVideoControllerListener;
    }

    public void init(final Context context, final String str) {
        this.e = new ArrayList();
        this.f = new ArrayList();
        if (!EnvironmentUtils.isExternalStorageWritable()) {
            MMLog.w(f4141a, "External storage is not writeable.  Unable to load VAST video interstitial.");
            this.b.initFailed();
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VASTVideoController.this.a(str);
                    if (VASTVideoController.this.d == null) {
                        MMLog.e(VASTVideoController.f4141a, "VAST content did not produce a valid InLineAd instance.");
                        VASTVideoController.this.b();
                        VASTVideoController.this.b.initFailed();
                    } else if (VASTVideoController.this.d.impressions.isEmpty()) {
                        MMLog.e(VASTVideoController.f4141a, "InLineAd must contain at least one Impression URL.");
                        VASTVideoController.this.b();
                        VASTVideoController.this.b.initFailed();
                    } else {
                        if (VASTVideoController.this.e != null) {
                            for (VASTParser.WrapperAd wrapperAd : VASTVideoController.this.e) {
                                if (wrapperAd.impressions.isEmpty()) {
                                    MMLog.e(VASTVideoController.f4141a, "WrapperAd must contain at least one Impression URL.");
                                    VASTVideoController.this.b();
                                    VASTVideoController.this.b.initFailed();
                                    break;
                                }
                            }
                        }
                        if (VASTVideoController.isVPAID(VASTVideoController.this.d)) {
                            VASTVideoController.this.createVPAIDWebView(context);
                        } else {
                            VASTVideoController.this.createVASTVideoView(context);
                        }
                    }
                } catch (IOException e) {
                    MMLog.e(VASTVideoController.f4141a, "VAST XML I/O error.", e);
                    VASTVideoController.this.b();
                    VASTVideoController.this.b.initFailed();
                } catch (XmlPullParserException e2) {
                    MMLog.e(VASTVideoController.f4141a, "VAST XML Parsing error.", e2);
                    VASTVideoController.this.b();
                    VASTVideoController.this.b.initFailed();
                }
            }
        });
    }

    public void createVPAIDWebView(final Context context) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.2
            @Override // java.lang.Runnable
            public void run() {
                VPAIDWebView vPAIDWebView = new VPAIDWebView(new MutableContextWrapper(context), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.2.1
                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onLoaded() {
                        VASTVideoController.this.b.initSucceeded();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onFailed() {
                        VASTVideoController.this.b.initFailed();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onReady() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onClicked() {
                        VASTVideoController.this.b.onClick();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onAdLeftApplication() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean expand(SizableStateManager.ExpandParams expandParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void close() {
                        VASTVideoController.this.b.close();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void showCloseIndicator(boolean z) {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void setOrientation(int i) {
                    }
                });
                vPAIDWebView.setTag("mmVpaidWebView");
                VASTVideoController.this.c = vPAIDWebView;
                vPAIDWebView.setVastDocuments(VASTVideoController.this.f);
            }
        });
    }

    public void createVASTVideoView(final Context context) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.3
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoController.this.c = new VASTVideoView(new MutableContextWrapper(context), VASTVideoController.this.d, VASTVideoController.this.e, new VASTVideoView.VASTVideoViewListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.3.1
                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onLoaded() {
                        VASTVideoController.this.b.initSucceeded();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onFailed() {
                        VASTVideoController.this.b();
                        VASTVideoController.this.b.initFailed();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onClicked() {
                        VASTVideoController.this.b.onClick();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                        VASTVideoController.this.b.onIncentiveEarned(xIncentiveEvent);
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void close() {
                        VASTVideoController.this.b.close();
                    }
                });
                VASTVideoController.this.c.setTag("mmVastVideoView");
            }
        });
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        if (Utils.isEmpty(str)) {
            return false;
        }
        String upperCase = str.toUpperCase();
        int indexOf = upperCase.indexOf("<VAST");
        int indexOf2 = upperCase.indexOf("<AD");
        return indexOf >= 0 && indexOf < indexOf2 && indexOf2 < upperCase.indexOf("</VAST>");
    }

    public void attach(MMActivity mMActivity) {
        ViewGroup rootView = mMActivity.getRootView();
        if (rootView == null) {
            this.b.attachFailed();
            return;
        }
        Context context = rootView.getContext();
        if (!(context instanceof Activity)) {
            this.b.attachFailed();
            return;
        }
        final AdContainer adContainer = new AdContainer((Activity) context, null);
        adContainer.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoController.this.b.onClick();
            }
        });
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.5
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.c == null) {
                    MMLog.e(VASTVideoController.f4141a, "videoView instance is null, unable to attach");
                    VASTVideoController.this.b.attachFailed();
                    return;
                }
                VASTVideoController.this.c.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                ViewUtils.attachView(adContainer, VASTVideoController.this.c);
                if (VASTVideoController.this.c instanceof VideoViewActions) {
                    ((VideoViewActions) VASTVideoController.this.c).updateLayout();
                }
                VASTVideoController.this.b.attachSucceeded();
            }
        });
        ViewUtils.attachView(rootView, adContainer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) throws XmlPullParserException, IOException {
        this.f.add(str);
        VASTParser.Ad parse = VASTParser.parse(str);
        if (parse == null) {
            b();
            this.b.initFailed();
        } else if (parse instanceof VASTParser.InLineAd) {
            this.d = (VASTParser.InLineAd) parse;
        } else if (parse instanceof VASTParser.WrapperAd) {
            VASTParser.WrapperAd wrapperAd = (VASTParser.WrapperAd) parse;
            this.e.add(wrapperAd);
            if (this.e.size() <= 3 && wrapperAd.adTagURI != null && !wrapperAd.adTagURI.isEmpty()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4141a, "Requesting VAST tag URI = " + wrapperAd.adTagURI);
                }
                HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(wrapperAd.adTagURI);
                if (contentFromGetRequest.code == 200) {
                    a(contentFromGetRequest.content);
                    return;
                } else {
                    MMLog.e(f4141a, "Received HTTP status code = " + contentFromGetRequest.code + " when processing ad tag URI = " + wrapperAd.adTagURI);
                    return;
                }
            }
            MMLog.e(f4141a, "VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.6
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.d != null && !Utils.isEmpty(VASTVideoController.this.d.error)) {
                    HttpUtils.getContentFromGetRequest(VASTVideoController.this.d.error);
                }
                if (VASTVideoController.this.e != null) {
                    for (VASTParser.WrapperAd wrapperAd : VASTVideoController.this.e) {
                        if (!Utils.isEmpty(wrapperAd.error)) {
                            HttpUtils.getContentFromGetRequest(wrapperAd.error);
                        }
                    }
                }
            }
        });
    }

    public void shutdown() {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.7
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.c instanceof VideoViewActions) {
                    ((VideoViewActions) VASTVideoController.this.c).shutdown();
                    VASTVideoController.this.c = null;
                }
            }
        });
    }

    public boolean onBackPressed() {
        if (this.c instanceof VideoViewActions) {
            return ((VideoViewActions) this.c).onBackPressed();
        }
        return true;
    }

    private static boolean b(String str) {
        return WebRequest.CONTENT_TYPE_JAVASCRIPT.equalsIgnoreCase(str) || "application/x-javascript".equalsIgnoreCase(str) || "text/javascript".equalsIgnoreCase(str);
    }

    public static boolean isVPAID(VASTParser.InLineAd inLineAd) {
        if (inLineAd.creatives != null) {
            for (VASTParser.Creative creative : inLineAd.creatives) {
                if (creative.linearAd != null && creative.linearAd.mediaFiles != null) {
                    for (VASTParser.MediaFile mediaFile : creative.linearAd.mediaFiles) {
                        if ("VPAID".equalsIgnoreCase(mediaFile.apiFramework) && b(mediaFile.contentType)) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(f4141a, "Detected VPAID video content");
                            }
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }
}
