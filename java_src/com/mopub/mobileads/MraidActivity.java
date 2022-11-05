package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.a;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;
import com.mopub.network.Networking;
/* loaded from: classes3.dex */
public class MraidActivity extends a {
    private MraidController b;
    private MraidWebViewDebugListener c;

    public static void preRenderHtml(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str) {
        a(customEventInterstitialListener, str, new BaseWebView(context));
    }

    @VisibleForTesting
    static void a(final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str, BaseWebView baseWebView) {
        baseWebView.b(false);
        baseWebView.a();
        baseWebView.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.MraidActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str2) {
                CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialLoaded();
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str2, String str3) {
                super.onReceivedError(webView, i, str2, str3);
                CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        });
        baseWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", "UTF-8", null);
    }

    public static void start(Context context, AdReport adReport, String str, long j) {
        try {
            context.startActivity(a(context, adReport, str, j));
        } catch (ActivityNotFoundException e) {
            Log.d("MraidInterstitial", "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }

    @VisibleForTesting
    protected static Intent a(Context context, AdReport adReport, String str, long j) {
        Intent intent = new Intent(context, MraidActivity.class);
        intent.putExtra(DataKeys.HTML_RESPONSE_BODY_KEY, str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        return intent;
    }

    @Override // com.mopub.mobileads.a
    public View getAdView() {
        String stringExtra = getIntent().getStringExtra(DataKeys.HTML_RESPONSE_BODY_KEY);
        if (stringExtra == null) {
            MoPubLog.w("MraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        }
        this.b = new MraidController(this, this.f4502a, PlacementType.INTERSTITIAL);
        this.b.setDebugListener(this.c);
        this.b.setMraidListener(new MraidController.MraidListener() { // from class: com.mopub.mobileads.MraidActivity.2
            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onLoaded(View view) {
                MraidActivity.this.b.loadJavascript(a.EnumC0524a.WEB_VIEW_DID_APPEAR.a());
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onFailedToLoad() {
                MoPubLog.d("MraidActivity failed to load. Finishing the activity");
                EventForwardingBroadcastReceiver.a(MraidActivity.this, MraidActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onClose() {
                MraidActivity.this.b.loadJavascript(a.EnumC0524a.WEB_VIEW_DID_CLOSE.a());
                MraidActivity.this.finish();
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onExpand() {
            }

            @Override // com.mopub.mraid.MraidController.MraidListener
            public void onOpen() {
                EventForwardingBroadcastReceiver.a(MraidActivity.this, MraidActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
            }
        });
        this.b.setUseCustomCloseListener(new MraidController.UseCustomCloseListener() { // from class: com.mopub.mobileads.MraidActivity.3
            @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
            public void useCustomCloseChanged(boolean z) {
                if (z) {
                    MraidActivity.this.c();
                } else {
                    MraidActivity.this.b();
                }
            }
        });
        this.b.loadContent(stringExtra);
        return this.b.getAdContainer();
    }

    @Override // com.mopub.mobileads.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventForwardingBroadcastReceiver.a(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
        if (Build.VERSION.SDK_INT >= 14) {
            getWindow().setFlags(16777216, 16777216);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (this.b != null) {
            this.b.pause(isFinishing());
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.b != null) {
            this.b.resume();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.a, android.app.Activity
    public void onDestroy() {
        if (this.b != null) {
            this.b.destroy();
        }
        EventForwardingBroadcastReceiver.a(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }

    @VisibleForTesting
    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.c = mraidWebViewDebugListener;
        if (this.b != null) {
            this.b.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
