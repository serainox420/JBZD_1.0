package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.VersionCode;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.network.Networking;
/* loaded from: classes3.dex */
public class BaseHtmlWebView extends BaseWebView implements ViewGestureDetector.UserClickListener {
    private final ViewGestureDetector b;
    private boolean c;

    public BaseHtmlWebView(Context context, AdReport adReport) {
        super(context);
        b();
        getSettings().setJavaScriptEnabled(true);
        this.b = new ViewGestureDetector(context, this, adReport);
        this.b.setUserClickListener(this);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            b(true);
        }
        setBackgroundColor(0);
    }

    public void init(boolean z) {
        a(z);
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (str != null) {
            MoPubLog.d("Loading url: " + str);
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
            }
        }
    }

    private void b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
    }

    void a(final boolean z) {
        setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mobileads.BaseHtmlWebView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                BaseHtmlWebView.this.b.sendTouchEvent(motionEvent);
                return motionEvent.getAction() == 2 && !z;
            }
        });
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onUserClick() {
        this.c = true;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public void onResetUserClick() {
        this.c = false;
    }

    @Override // com.mopub.mobileads.ViewGestureDetector.UserClickListener
    public boolean wasClicked() {
        return this.c;
    }
}
