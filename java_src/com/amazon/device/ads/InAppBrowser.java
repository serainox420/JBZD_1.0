package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.amazon.device.ads.AdActivity;
import com.amazon.device.ads.LayoutFactory;
import com.amazon.device.ads.ThreadUtils;
import com.amazon.device.ads.WebViewFactory;
import com.google.android.gms.drive.DriveFile;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class InAppBrowser implements AdActivity.AdActivityAdapter {
    protected static final int BUTTON_SIZE_DP = 50;
    private static final String CONTENT_DESCRIPTION_BACK_BUTTON = "inAppBrowserBackButton";
    private static final String CONTENT_DESCRIPTION_BUTTON_LAYOUT = "inAppBrowserButtonLayout";
    private static final String CONTENT_DESCRIPTION_CLOSE_BUTTON = "inAppBrowserCloseButton";
    private static final String CONTENT_DESCRIPTION_FORWARD_BUTTON = "inAppBrowserForwardButton";
    private static final String CONTENT_DESCRIPTION_HORZ_RULE = "inAppBrowserHorizontalRule";
    private static final String CONTENT_DESCRIPTION_MAIN_LAYOUT = "inAppBrowserMainLayout";
    private static final String CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON = "inAppBrowserOpenExternalBrowserButton";
    private static final String CONTENT_DESCRIPTION_REFRESH_BUTTON = "inAppBrowserRefreshButton";
    private static final String CONTENT_DESCRIPTION_RELATIVE_LAYOUT = "inAppBrowserRelativeLayout";
    private static final String CONTENT_DESCRIPTION_WEB_VIEW = "inAppBrowserWebView";
    protected static final int HORIZONTAL_RULE_SIZE_DP = 3;
    protected static final String LOGTAG = InAppBrowser.class.getSimpleName();
    protected static final String SHOW_OPEN_EXTERNAL_BROWSER_BTN = "extra_open_btn";
    protected static final String URL_EXTRA = "extra_url";
    private Activity activity;
    private final Assets assets;
    private ImageButton browserBackButton;
    private ImageButton browserForwardButton;
    private final AtomicBoolean buttonsCreated;
    private ImageButton closeButton;
    private final WebViewFactory.MobileAdsCookieManager cookieManager;
    private final MobileAdsInfoStore infoStore;
    private final LayoutFactory layoutFactory;
    private final MobileAdsLogger logger;
    private ImageButton openExternalBrowserButton;
    private ImageButton refreshButton;
    private final Settings settings;
    private boolean showOpenExternalBrowserButton;
    private final ThreadUtils.ThreadRunner threadRunner;
    private final WebUtils2 webUtils;
    private WebView webView;
    private final WebViewFactory webViewFactory;

    InAppBrowser() {
        this(new WebUtils2(), WebViewFactory.getInstance(), new MobileAdsLoggerFactory(), MobileAdsInfoStore.getInstance(), Settings.getInstance(), Assets.getInstance(), new LayoutFactory(), new WebViewFactory.MobileAdsCookieManager(), ThreadUtils.getThreadRunner());
    }

    InAppBrowser(WebUtils2 webUtils2, WebViewFactory webViewFactory, MobileAdsLoggerFactory mobileAdsLoggerFactory, MobileAdsInfoStore mobileAdsInfoStore, Settings settings, Assets assets, LayoutFactory layoutFactory, WebViewFactory.MobileAdsCookieManager mobileAdsCookieManager, ThreadUtils.ThreadRunner threadRunner) {
        this.buttonsCreated = new AtomicBoolean(false);
        this.webUtils = webUtils2;
        this.webViewFactory = webViewFactory;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.infoStore = mobileAdsInfoStore;
        this.settings = settings;
        this.assets = assets;
        this.layoutFactory = layoutFactory;
        this.cookieManager = mobileAdsCookieManager;
        this.threadRunner = threadRunner;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void setActivity(Activity activity) {
        this.activity = activity;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onCreate() {
        this.activity.getWindow().requestFeature(2);
        this.activity.getWindow().setFeatureInt(2, -1);
        Intent intent = this.activity.getIntent();
        this.showOpenExternalBrowserButton = intent.getBooleanExtra(SHOW_OPEN_EXTERNAL_BROWSER_BTN, false);
        initialize(intent);
        initializeWebView(intent);
        enableCookies();
    }

    @SuppressLint({"InlinedApi"})
    private void initialize(Intent intent) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getMetrics(displayMetrics);
        float f = displayMetrics.density;
        int i = (int) ((50.0f * f) + 0.5f);
        int i2 = (int) ((f * 3.0f) + 0.5f);
        int min = Math.min(displayMetrics.widthPixels / (this.showOpenExternalBrowserButton ? 5 : 4), i * 2);
        ViewGroup createLayout = this.layoutFactory.createLayout(this.activity, LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_BUTTON_LAYOUT);
        createLayout.setId(10280);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i + i2);
        layoutParams.addRule(12);
        createLayout.setLayoutParams(layoutParams);
        createLayout.setBackgroundColor(-986896);
        this.threadRunner.executeAsyncTask(new LoadButtonsTask(intent, createLayout, min, i), new Void[0]);
        View view = new View(this.activity);
        view.setContentDescription(CONTENT_DESCRIPTION_HORZ_RULE);
        view.setBackgroundColor(-3355444);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, i2);
        layoutParams2.addRule(10);
        view.setLayoutParams(layoutParams2);
        createLayout.addView(view);
        this.webView = this.webViewFactory.createWebView(this.activity);
        this.webView.getSettings().setUserAgentString(this.infoStore.getDeviceInfo().getUserAgentString() + "-inAppBrowser");
        this.webView.setContentDescription(CONTENT_DESCRIPTION_WEB_VIEW);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(2, createLayout.getId());
        this.webView.setLayoutParams(layoutParams3);
        ViewGroup createLayout2 = this.layoutFactory.createLayout(this.activity, LayoutFactory.LayoutType.RELATIVE_LAYOUT, CONTENT_DESCRIPTION_RELATIVE_LAYOUT);
        createLayout2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        createLayout2.addView(this.webView);
        createLayout2.addView(createLayout);
        LinearLayout linearLayout = (LinearLayout) this.layoutFactory.createLayout(this.activity, LayoutFactory.LayoutType.LINEAR_LAYOUT, CONTENT_DESCRIPTION_MAIN_LAYOUT);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(createLayout2);
        this.activity.setContentView(linearLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageButton createButton(String str, int i, int i2, int i3, int i4) {
        ImageButton imageButton = new ImageButton(this.activity);
        imageButton.setImageBitmap(BitmapFactory.decodeFile(str));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i3, i4);
        layoutParams.addRule(i, i2);
        layoutParams.addRule(12);
        imageButton.setLayoutParams(layoutParams);
        imageButton.setBackgroundColor(0);
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return imageButton;
    }

    private void initializeWebView(Intent intent) {
        this.webViewFactory.setJavaScriptEnabledForWebView(true, this.webView, LOGTAG);
        this.webView.loadUrl(intent.getStringExtra("extra_url"));
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.amazon.device.ads.InAppBrowser.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                InAppBrowser.this.logger.w("InApp Browser error: %s", str);
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (StringUtils.isNullOrWhiteSpace(str)) {
                    return false;
                }
                String scheme = InAppBrowser.this.webUtils.getScheme(str);
                if (!scheme.equals("http") && !scheme.equals("https")) {
                    return InAppBrowser.this.webUtils.launchActivityForIntentLink(str, InAppBrowser.this.activity);
                }
                return false;
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.amazon.device.ads.InAppBrowser.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                InAppBrowser.this.activity.setTitle("Loading...");
                InAppBrowser.this.activity.setProgress(i * 100);
                if (i == 100) {
                    InAppBrowser.this.activity.setTitle(webView.getUrl());
                }
                InAppBrowser.this.updateNavigationButtons(webView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeButtons(Intent intent) {
        this.browserBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.amazon.device.ads.InAppBrowser.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (InAppBrowser.this.webView.canGoBack()) {
                    InAppBrowser.this.webView.goBack();
                }
            }
        });
        this.browserForwardButton.setOnClickListener(new View.OnClickListener() { // from class: com.amazon.device.ads.InAppBrowser.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (InAppBrowser.this.webView.canGoForward()) {
                    InAppBrowser.this.webView.goForward();
                }
            }
        });
        this.refreshButton.setOnClickListener(new View.OnClickListener() { // from class: com.amazon.device.ads.InAppBrowser.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InAppBrowser.this.webView.reload();
            }
        });
        this.closeButton.setOnClickListener(new View.OnClickListener() { // from class: com.amazon.device.ads.InAppBrowser.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InAppBrowser.this.activity.finish();
            }
        });
        if (this.showOpenExternalBrowserButton) {
            final String stringExtra = intent.getStringExtra("extra_url");
            this.openExternalBrowserButton.setOnClickListener(new View.OnClickListener() { // from class: com.amazon.device.ads.InAppBrowser.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String url = InAppBrowser.this.webView.getUrl();
                    if (url == null) {
                        InAppBrowser.this.logger.w("The current URL is null. Reverting to the original URL for external browser.");
                        url = stringExtra;
                    }
                    InAppBrowser.this.webUtils.launchActivityForIntentLink(url, InAppBrowser.this.webView.getContext());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNavigationButtons(WebView webView) {
        if (this.browserBackButton != null && this.browserForwardButton != null) {
            if (webView.canGoBack()) {
                AndroidTargetUtils.setImageButtonAlpha(this.browserBackButton, 255);
            } else {
                AndroidTargetUtils.setImageButtonAlpha(this.browserBackButton, 102);
            }
            if (webView.canGoForward()) {
                AndroidTargetUtils.setImageButtonAlpha(this.browserForwardButton, 255);
            } else {
                AndroidTargetUtils.setImageButtonAlpha(this.browserForwardButton, 102);
            }
        }
    }

    private void enableCookies() {
        this.cookieManager.createCookieSyncManager(this.activity);
        this.cookieManager.startSync();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onPause() {
        this.logger.d("onPause");
        this.webView.onPause();
        if (this.settings.getBoolean(Settings.SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC, false)) {
            this.webView.pauseTimers();
        }
        this.cookieManager.stopSync();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onResume() {
        this.logger.d("onResume");
        this.webView.onResume();
        if (this.settings.getBoolean(Settings.SETTING_ENABLE_WEBVIEW_PAUSE_LOGIC, false)) {
            this.webView.resumeTimers();
        }
        this.cookieManager.startSync();
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onStop() {
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onDestroy() {
        this.webView.destroy();
        this.activity.finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class LoadButtonsTask extends ThreadUtils.MobileAdsAsyncTask<Void, Void, Void> {
        private final int buttonHeight;
        private final int buttonWidth;
        private final Intent intent;
        private final ViewGroup layout;

        public LoadButtonsTask(Intent intent, ViewGroup viewGroup, int i, int i2) {
            this.intent = intent;
            this.layout = viewGroup;
            this.buttonWidth = i;
            this.buttonHeight = i2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            InAppBrowser.this.browserBackButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.LEFT_ARROW), 9, -1, this.buttonWidth, this.buttonHeight);
            InAppBrowser.this.browserBackButton.setContentDescription(InAppBrowser.CONTENT_DESCRIPTION_BACK_BUTTON);
            InAppBrowser.this.browserBackButton.setId(10537);
            InAppBrowser.this.browserForwardButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.RIGHT_ARROW), 1, InAppBrowser.this.browserBackButton.getId(), this.buttonWidth, this.buttonHeight);
            InAppBrowser.this.browserForwardButton.setContentDescription(InAppBrowser.CONTENT_DESCRIPTION_FORWARD_BUTTON);
            InAppBrowser.this.browserForwardButton.setId(10794);
            InAppBrowser.this.closeButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.CLOSE), 11, -1, this.buttonWidth, this.buttonHeight);
            InAppBrowser.this.closeButton.setContentDescription(InAppBrowser.CONTENT_DESCRIPTION_CLOSE_BUTTON);
            if (InAppBrowser.this.showOpenExternalBrowserButton) {
                InAppBrowser.this.openExternalBrowserButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.OPEN_EXTERNAL_BROWSER), 1, InAppBrowser.this.browserForwardButton.getId(), this.buttonWidth, this.buttonHeight);
                InAppBrowser.this.openExternalBrowserButton.setContentDescription(InAppBrowser.CONTENT_DESCRIPTION_OPEN_EXT_BRWSR_BUTTON);
                InAppBrowser.this.openExternalBrowserButton.setId(10795);
                InAppBrowser.this.refreshButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.REFRESH), 1, InAppBrowser.this.openExternalBrowserButton.getId(), this.buttonWidth, this.buttonHeight);
            } else {
                InAppBrowser.this.refreshButton = InAppBrowser.this.createButton(InAppBrowser.this.assets.getFilePath(Assets.REFRESH), 1, InAppBrowser.this.browserForwardButton.getId(), this.buttonWidth, this.buttonHeight);
            }
            InAppBrowser.this.refreshButton.setContentDescription(InAppBrowser.CONTENT_DESCRIPTION_REFRESH_BUTTON);
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amazon.device.ads.ThreadUtils.MobileAdsAsyncTask, android.os.AsyncTask
        public void onPostExecute(Void r3) {
            this.layout.addView(InAppBrowser.this.browserBackButton);
            this.layout.addView(InAppBrowser.this.browserForwardButton);
            this.layout.addView(InAppBrowser.this.refreshButton);
            this.layout.addView(InAppBrowser.this.closeButton);
            if (InAppBrowser.this.showOpenExternalBrowserButton) {
                this.layout.addView(InAppBrowser.this.openExternalBrowserButton);
            }
            InAppBrowser.this.initializeButtons(this.intent);
            InAppBrowser.this.buttonsCreated.set(true);
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void preOnCreate() {
    }

    /* loaded from: classes.dex */
    public static class InAppBrowserBuilder {
        private static final String LOGTAG = InAppBrowserBuilder.class.getSimpleName();
        private final Assets assets;
        private Context context;
        private final MobileAdsLogger logger;
        private boolean showOpenExternalBrowserButton;
        private String url;

        public InAppBrowserBuilder() {
            this(Assets.getInstance(), new MobileAdsLoggerFactory());
        }

        InAppBrowserBuilder(Assets assets, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
            this.assets = assets;
            this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        }

        public InAppBrowserBuilder withContext(Context context) {
            this.context = context;
            return this;
        }

        public InAppBrowserBuilder withUrl(String str) {
            this.url = str;
            return this;
        }

        public InAppBrowserBuilder withExternalBrowserButton() {
            this.showOpenExternalBrowserButton = true;
            return this;
        }

        public void show() {
            if (this.context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (StringUtils.isNullOrWhiteSpace(this.url)) {
                throw new IllegalArgumentException("Url must not be null or white space");
            }
            if (!this.assets.ensureAssetsCreated()) {
                this.logger.e("Could not load application assets, failed to open URI: %s", this.url);
                return;
            }
            Intent intent = new Intent(this.context, AdActivity.class);
            intent.putExtra("adapter", InAppBrowser.class.getName());
            intent.putExtra("extra_url", this.url);
            intent.putExtra(InAppBrowser.SHOW_OPEN_EXTERNAL_BROWSER_BTN, this.showOpenExternalBrowserButton);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            this.context.startActivity(intent);
        }
    }

    void getMetrics(DisplayMetrics displayMetrics) {
        ((WindowManager) this.activity.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getMetrics(displayMetrics);
        int i = (int) ((displayMetrics.density * 50.0f) + 0.5f);
        int min = Math.min(displayMetrics.widthPixels / (this.showOpenExternalBrowserButton ? 5 : 4), i * 2);
        this.logger.d("Width: " + displayMetrics.widthPixels + " ButtonWidth: " + min);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(min, i);
        if (this.browserBackButton != null) {
            layoutParams.addRule(9);
            layoutParams.addRule(12);
            this.browserBackButton.setLayoutParams(layoutParams);
        }
        if (this.browserForwardButton != null) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(min, i);
            layoutParams2.addRule(1, this.browserBackButton.getId());
            layoutParams2.addRule(12);
            this.browserForwardButton.setLayoutParams(layoutParams2);
        }
        if (this.closeButton != null) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(min, i);
            layoutParams3.addRule(11);
            layoutParams3.addRule(12);
            this.closeButton.setLayoutParams(layoutParams3);
        }
        if (this.openExternalBrowserButton != null) {
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(min, i);
            layoutParams4.addRule(1, this.browserForwardButton.getId());
            layoutParams4.addRule(12);
            this.openExternalBrowserButton.setLayoutParams(layoutParams4);
            if (this.refreshButton != null) {
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(min, i);
                layoutParams5.addRule(1, this.openExternalBrowserButton.getId());
                layoutParams5.addRule(12);
                this.refreshButton.setLayoutParams(layoutParams5);
            }
        } else if (this.refreshButton != null) {
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(min, i);
            layoutParams6.addRule(1, this.browserForwardButton.getId());
            layoutParams6.addRule(12);
            this.refreshButton.setLayoutParams(layoutParams6);
        }
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public boolean onBackPressed() {
        return false;
    }

    @Override // com.amazon.device.ads.AdActivity.AdActivityAdapter
    public void onWindowFocusChanged() {
    }
}
