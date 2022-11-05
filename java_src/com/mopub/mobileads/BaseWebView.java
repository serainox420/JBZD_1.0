package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.cast.CastStatusCodes;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.VersionCode;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes.dex */
public class BaseWebView extends WebView {
    private static boolean b = false;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f4415a;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        b(false);
        b();
        WebViews.setDisableJSChromeClient(this);
        if (!b) {
            a(getContext());
            b = true;
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f4415a = true;
        Views.removeFromParent(this);
        removeAllViews();
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        if (!VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2)) {
            if (z) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            } else {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    private void b() {
        getSettings().setAllowFileAccess(false);
        if (Build.VERSION.SDK_INT >= 11) {
            getSettings().setAllowContentAccess(false);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
    }

    private void a(Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", "text/html", "UTF-8", null);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.type = CastStatusCodes.APPLICATION_NOT_RUNNING;
            layoutParams.flags = 16777240;
            layoutParams.format = -2;
            layoutParams.gravity = 8388659;
            ((WindowManager) context.getSystemService("window")).addView(webView, layoutParams);
        }
    }

    @VisibleForTesting
    @Deprecated
    void setIsDestroyed(boolean z) {
        this.f4415a = z;
    }
}
