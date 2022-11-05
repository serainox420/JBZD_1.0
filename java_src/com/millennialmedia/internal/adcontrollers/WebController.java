package com.millennialmedia.internal.adcontrollers;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class WebController extends AdController {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4151a = WebController.class.getSimpleName();
    private static final String[] b = {"<SCRIPT", "<IMG", "<HTML", "<BODY", "<HEAD", "<A", "<DIV", "<SPAN", "<P", "<H1", "<H2", "<H3", "<H4", "<H5", "<H6", "<IFRAME"};
    private WebControllerListener c;
    private volatile MMWebView d;
    private volatile SizableStateManager e;

    /* loaded from: classes3.dex */
    public interface WebControllerListener {
        void attachFailed();

        void attachSucceeded();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();

        void onResize(int i, int i2);

        void onResized(int i, int i2, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class WebControllerOptions {
        public final boolean enableEnhancedAdControl;
        public final boolean enableMoat;
        public final boolean isInterstitial;
        public final boolean isTwoPart;

        public WebControllerOptions(boolean z, boolean z2, boolean z3) {
            this(z, z2, z3, false);
        }

        public WebControllerOptions(boolean z, boolean z2, boolean z3, boolean z4) {
            this.isInterstitial = z;
            this.enableMoat = z2;
            this.enableEnhancedAdControl = z3;
            this.isTwoPart = z4;
        }
    }

    public WebController() {
    }

    public WebController(WebControllerListener webControllerListener) {
        this.c = webControllerListener;
    }

    public void init(final Context context, final String str, final AdMetadata adMetadata, final WebControllerOptions webControllerOptions) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.1
            @Override // java.lang.Runnable
            public void run() {
                WebController.this.d = WebController.this.a(context, webControllerOptions, adMetadata, WebController.this.c);
                WebController.this.d.setContent(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MMWebView c() {
        if (this.d == null) {
            MMLog.e(f4151a, "MMWebView has not been created.");
            return null;
        }
        return this.d;
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        if (str == null) {
            return false;
        }
        try {
            new JSONObject(str);
            return false;
        } catch (JSONException e) {
            String upperCase = str.toUpperCase();
            for (String str2 : b) {
                if (upperCase.contains(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void attach(final RelativeLayout relativeLayout, final RelativeLayout.LayoutParams layoutParams) {
        if (relativeLayout == null) {
            this.c.attachFailed();
            return;
        }
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebController.this.c.onClicked();
            }
        });
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.3
            @Override // java.lang.Runnable
            public void run() {
                MMWebView c = WebController.this.c();
                if (c == null) {
                    MMLog.e(WebController.f4151a, "MMWebView instance is null, unable to attach");
                    WebController.this.c.attachFailed();
                    return;
                }
                ViewUtils.attachView(relativeLayout, c, layoutParams);
                WebController.this.c.attachSucceeded();
            }
        });
    }

    public void showExpanded(final MMActivity.MMActivityConfig mMActivityConfig) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.4
            @Override // java.lang.Runnable
            public void run() {
                MMWebView c = WebController.this.c();
                if (c == null) {
                    MMLog.e(WebController.f4151a, "MMWebView instance is null, unable to expand");
                    WebController.this.c.attachFailed();
                    return;
                }
                SizableStateManager a2 = WebController.this.a();
                SizableStateManager.ExpandParams expandParams = new SizableStateManager.ExpandParams();
                expandParams.width = -1;
                expandParams.height = -1;
                expandParams.showCloseIndicator = true;
                expandParams.orientation = -1;
                if (!a2.expand(c, expandParams, mMActivityConfig)) {
                    WebController.this.c.attachFailed();
                }
            }
        });
    }

    SizableStateManager a() {
        if (this.e == null) {
            this.e = new SizableStateManager(new SizableStateManager.SizableListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.5
                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onResizing(int i, int i2) {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateResizing();
                        WebController.this.c.onResize(i, i2);
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onResized(int i, int i2) {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateResized();
                        WebController.this.c.onResized(i, i2, false);
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onUnresizing(int i, int i2) {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateResizing();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onUnresized(int i, int i2) {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateUnresized();
                        WebController.this.c.onResized(i, i2, true);
                        WebController.this.e = null;
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpanding() {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateResizing();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpanded() {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateExpanded();
                        WebController.this.c.onExpanded();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onCollapsing() {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateResizing();
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onCollapsed() {
                    MMWebView c = WebController.this.c();
                    if (c != null) {
                        c.setStateCollapsed();
                        WebController.this.c.onCollapsed();
                        WebController.this.e = null;
                    }
                }

                @Override // com.millennialmedia.internal.SizableStateManager.SizableListener
                public void onExpandFailed() {
                    WebController.this.c.attachFailed();
                }
            });
        }
        return this.e;
    }

    MMWebView a(Context context, final WebControllerOptions webControllerOptions, final AdMetadata adMetadata, final WebControllerListener webControllerListener) {
        boolean z = adMetadata != null && adMetadata.isTransparent() && webControllerOptions.isInterstitial;
        final WeakReference weakReference = new WeakReference(context);
        return new MMWebView(context, new MMWebView.MMWebViewOptions(webControllerOptions.isInterstitial, z, webControllerOptions.enableMoat, webControllerOptions.enableEnhancedAdControl), new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.WebController.6
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
                if (!webControllerOptions.isTwoPart) {
                    webControllerListener.initSucceeded();
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onReady() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
                if (!webControllerOptions.isTwoPart) {
                    webControllerListener.initFailed();
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                webControllerListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                webControllerListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
                if (WebController.this.e != null) {
                    WebController.this.e.close();
                }
                MMWebView c = WebController.this.c();
                if (c != null) {
                    c.setBackgroundColor(-1);
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                boolean z2;
                MMWebView c = WebController.this.c();
                if (c == null) {
                    MMLog.e(WebController.f4151a, "MMWebView instance is null, unable to expand");
                    return false;
                }
                SizableStateManager a2 = WebController.this.a();
                if (TextUtils.isEmpty(expandParams.url)) {
                    z2 = !webControllerOptions.isInterstitial;
                } else {
                    Context context2 = (Context) weakReference.get();
                    if (context2 == null) {
                        MMLog.e(WebController.f4151a, "Context is no longer valid, unable to expand");
                        return false;
                    }
                    MMWebView a3 = WebController.this.a(context2, new WebControllerOptions(false, webControllerOptions.enableMoat, webControllerOptions.enableEnhancedAdControl, true), adMetadata, webControllerListener);
                    a3.setTwoPartExpand();
                    a3.setVisibility(4);
                    WebController.this.a(a3, expandParams);
                    c = a3;
                    z2 = false;
                }
                if (adMetadata != null && adMetadata.isTransparent()) {
                    c.setBackgroundColor(0);
                    expandParams.transparent = true;
                }
                return a2.expand(c, expandParams, z2);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                MMWebView c = WebController.this.c();
                if (c == null) {
                    MMLog.e(WebController.f4151a, "MMWebView instance is null, unable to resize");
                    return false;
                }
                return WebController.this.a().resize(c, resizeParams);
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void showCloseIndicator(boolean z2) {
                if (WebController.this.e != null) {
                    WebController.this.e.showCloseIndicator(z2);
                }
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void setOrientation(int i) {
                if (WebController.this.e != null) {
                    WebController.this.e.setOrientation(i);
                }
            }
        });
    }

    void a(MMWebView mMWebView, final SizableStateManager.ExpandParams expandParams) {
        final WeakReference weakReference = new WeakReference(this.e);
        final WeakReference weakReference2 = new WeakReference(mMWebView);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.7
            @Override // java.lang.Runnable
            public void run() {
                WebController.this.e.showLoadingSpinner(expandParams);
                final HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(expandParams.url);
                ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.7.1
                    @Override // java.lang.Runnable
                    public void run() {
                        MMWebView mMWebView2 = (MMWebView) weakReference2.get();
                        if (mMWebView2 == null) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(WebController.f4151a, "Expanded web view is no longer valid");
                                return;
                            }
                            return;
                        }
                        SizableStateManager sizableStateManager = (SizableStateManager) weakReference.get();
                        if (sizableStateManager == null) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(WebController.f4151a, "Sizing container is no longer valid");
                            }
                        } else if (!sizableStateManager.isExpanded()) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(WebController.f4151a, "Sizing container has been collapsed");
                            }
                        } else {
                            sizableStateManager.hideLoadingSpinner(expandParams);
                            if (contentFromGetRequest == null || contentFromGetRequest.code != 200 || contentFromGetRequest.content == null) {
                                MMLog.e(WebController.f4151a, "Unable to retrieve expanded content");
                                sizableStateManager.showCloseIndicator(true);
                            } else {
                                mMWebView2.setContent(contentFromGetRequest.content);
                            }
                            mMWebView2.setVisibility(0);
                        }
                    }
                });
            }
        });
    }

    public void shutdown() {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.WebController.8
            @Override // java.lang.Runnable
            public void run() {
                MMWebView c = WebController.this.c();
                if (c != null) {
                    c.shutdown();
                    WebController.this.d = null;
                }
            }
        });
    }
}
