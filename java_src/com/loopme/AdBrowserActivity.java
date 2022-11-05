package com.loopme;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.Button;
import com.loopme.adbrowser.AdBrowserLayout;
import com.loopme.adbrowser.AdBrowserWebViewClient;
import com.loopme.adbrowser.BrowserWebView;
import com.loopme.common.Base64Drawables;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
import com.loopme.common.Utils;
/* loaded from: classes2.dex */
public final class AdBrowserActivity extends Activity {
    private static final String KEY_URL = "url";
    private static final String LOG_TAG = AdBrowserActivity.class.getSimpleName();
    private BrowserWebView mAdBrowserWebview;
    private Button mBackButton;
    private BaseAd mBaseAd;
    private AdBrowserLayout mLayout;
    private View mProgress;
    private String mUrl;
    private AdBrowserWebViewClient.Listener mWebClientListener;
    private boolean mIsBackFromMarket = false;
    private Base64Drawables mBase64Drawables = new Base64Drawables();

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isValidExtras()) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
            this.mLayout = new AdBrowserLayout(getApplicationContext());
            setContentView(this.mLayout);
            this.mProgress = this.mLayout.getProgressBar();
            this.mBackButton = this.mLayout.getBackButton();
            this.mAdBrowserWebview = this.mLayout.getWebView();
            initWebView(this.mAdBrowserWebview);
            if (bundle != null) {
                this.mAdBrowserWebview.restoreState(bundle);
            } else {
                this.mAdBrowserWebview.loadUrl(this.mUrl);
            }
            initButtonListeners(this.mAdBrowserWebview);
            return;
        }
        finish();
    }

    private boolean isValidExtras() {
        String stringExtra = getIntent().getStringExtra(StaticParams.APPKEY_TAG);
        int intExtra = getIntent().getIntExtra(StaticParams.FORMAT_TAG, 0);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.mUrl = extras.getString("url");
        }
        if (intExtra == 1000) {
            this.mBaseAd = LoopMeAdHolder.getBanner(stringExtra, null);
        } else if (intExtra == 1001) {
            this.mBaseAd = LoopMeAdHolder.getInterstitial(stringExtra, null);
        }
        return this.mBaseAd != null && !TextUtils.isEmpty(this.mUrl);
    }

    @Override // android.app.Activity
    protected final void onPause() {
        super.onPause();
        Logging.out(LOG_TAG, "onPause");
        if (this.mAdBrowserWebview != null) {
            this.mAdBrowserWebview.onPause();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Logging.out(LOG_TAG, " onDestroy");
        if (this.mAdBrowserWebview != null) {
            this.mAdBrowserWebview.clearCache(true);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logging.out(LOG_TAG, "onResume");
        if (this.mIsBackFromMarket) {
            finish();
        }
        this.mIsBackFromMarket = true;
        this.mLayout.getProgressBar().setVisibility(4);
    }

    private void initWebView(BrowserWebView browserWebView) {
        this.mWebClientListener = initAdBrowserClientListener();
        browserWebView.setWebViewClient(new AdBrowserWebViewClient(this.mWebClientListener));
        browserWebView.getSettings().setBuiltInZoomControls(false);
    }

    private AdBrowserWebViewClient.Listener initAdBrowserClientListener() {
        return new AdBrowserWebViewClient.Listener() { // from class: com.loopme.AdBrowserActivity.1
            @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
            public void onReceiveError() {
                AdBrowserActivity.this.finish();
            }

            @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
            public void onPageStarted() {
                AdBrowserActivity.this.mProgress.setVisibility(0);
            }

            @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
            @SuppressLint({"NewApi"})
            public void onPageFinished(boolean z) {
                AdBrowserActivity.this.mProgress.setVisibility(4);
                if (z) {
                    AdBrowserActivity.this.setImage(AdBrowserActivity.this.mBackButton, AdBrowserActivity.this.mBase64Drawables.getBackActive());
                } else {
                    AdBrowserActivity.this.setImage(AdBrowserActivity.this.mBackButton, AdBrowserActivity.this.mBase64Drawables.getBackInactive());
                }
            }

            @Override // com.loopme.adbrowser.AdBrowserWebViewClient.Listener
            public void onLeaveApp() {
                AdBrowserActivity.this.mBaseAd.onAdLeaveApp();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void setImage(Button button, String str) {
        if (Build.VERSION.SDK_INT < 16) {
            button.setBackgroundDrawable(Utils.decodeImage(str));
        } else {
            button.setBackground(Utils.decodeImage(str));
        }
    }

    private void initButtonListeners(final WebView webView) {
        this.mLayout.getBackButton().setOnClickListener(new View.OnClickListener() { // from class: com.loopme.AdBrowserActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (webView.canGoBack()) {
                    AdBrowserActivity.this.mLayout.getProgressBar().setVisibility(0);
                    webView.goBack();
                }
            }
        });
        this.mLayout.getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: com.loopme.AdBrowserActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdBrowserActivity.this.finish();
            }
        });
        this.mLayout.getRefreshButton().setOnClickListener(new View.OnClickListener() { // from class: com.loopme.AdBrowserActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdBrowserActivity.this.mLayout.getProgressBar().setVisibility(0);
                webView.reload();
            }
        });
        this.mLayout.getNativeButton().setOnClickListener(new View.OnClickListener() { // from class: com.loopme.AdBrowserActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String url = webView.getUrl();
                if (url != null) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                    if (AdBrowserActivity.this.getPackageManager().resolveActivity(intent, 65536) != null) {
                        AdBrowserActivity.this.startActivity(intent);
                        AdBrowserActivity.this.mBaseAd.onAdLeaveApp();
                    }
                }
            }
        });
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            if (this.mAdBrowserWebview.canGoBack()) {
                this.mAdBrowserWebview.goBack();
                return true;
            }
            finish();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(Bundle bundle) {
        this.mIsBackFromMarket = false;
        super.onRestoreInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        this.mAdBrowserWebview.saveState(bundle);
        super.onSaveInstanceState(bundle);
    }
}
