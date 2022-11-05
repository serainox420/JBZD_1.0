package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AudienceNetworkActivity;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.util.Utils;
import com.mopub.common.util.VersionCode;
import com.mopub.network.Networking;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: VastWebView.java */
/* loaded from: classes3.dex */
public class m extends BaseWebView {
    a b;

    /* compiled from: VastWebView.java */
    /* loaded from: classes3.dex */
    interface a {
        void onVastWebViewClick();
    }

    m(Context context) {
        super(context);
        b();
        getSettings().setJavaScriptEnabled(true);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) {
            b(true);
        }
        setBackgroundColor(0);
        setOnTouchListener(new b());
        setId((int) Utils.generateUniqueId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(a aVar) {
        this.b = aVar;
    }

    private void b() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
        setScrollBarStyle(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static m a(Context context, l lVar) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(lVar);
        m mVar = new m(context);
        lVar.initializeWebView(mVar);
        return mVar;
    }

    /* compiled from: VastWebView.java */
    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {
        private boolean b;

        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.b = true;
                    break;
                case 1:
                    if (this.b) {
                        this.b = false;
                        if (m.this.b != null) {
                            m.this.b.onVastWebViewClick();
                            break;
                        }
                    }
                    break;
            }
            return false;
        }
    }
}
