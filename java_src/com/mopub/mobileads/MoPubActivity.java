package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import com.mopub.common.AdReport;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.a;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class MoPubActivity extends com.mopub.mobileads.a {
    private HtmlInterstitialWebView b;

    public static void start(Context context, String str, AdReport adReport, boolean z, String str2, String str3, CreativeOrientation creativeOrientation, long j) {
        try {
            context.startActivity(a(context, str, adReport, z, str2, str3, creativeOrientation, j));
        } catch (ActivityNotFoundException e) {
            Log.d("MoPubActivity", "MoPubActivity not found - did you declare it in AndroidManifest.xml?");
        }
    }

    static Intent a(Context context, String str, AdReport adReport, boolean z, String str2, String str3, CreativeOrientation creativeOrientation, long j) {
        Intent intent = new Intent(context, MoPubActivity.class);
        intent.putExtra(DataKeys.HTML_RESPONSE_BODY_KEY, str);
        intent.putExtra(DataKeys.SCROLLABLE_KEY, z);
        intent.putExtra(DataKeys.CLICKTHROUGH_URL_KEY, str3);
        intent.putExtra(DataKeys.REDIRECT_URL_KEY, str2);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, AdReport adReport, final CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str) {
        HtmlInterstitialWebView create = HtmlInterstitialWebViewFactory.create(context, adReport, customEventInterstitialListener, false, null, null);
        create.b(false);
        create.a();
        create.setWebViewClient(new WebViewClient() { // from class: com.mopub.mobileads.MoPubActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str2) {
                if ("mopub://finishLoad".equals(str2)) {
                    CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialLoaded();
                    return true;
                } else if ("mopub://failLoad".equals(str2)) {
                    CustomEventInterstitial.CustomEventInterstitialListener.this.onInterstitialFailed(null);
                    return true;
                } else {
                    return true;
                }
            }
        });
        create.a(str);
    }

    @Override // com.mopub.mobileads.a
    public View getAdView() {
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra(DataKeys.SCROLLABLE_KEY, false);
        String stringExtra = intent.getStringExtra(DataKeys.REDIRECT_URL_KEY);
        String stringExtra2 = intent.getStringExtra(DataKeys.CLICKTHROUGH_URL_KEY);
        String stringExtra3 = intent.getStringExtra(DataKeys.HTML_RESPONSE_BODY_KEY);
        this.b = HtmlInterstitialWebViewFactory.create(getApplicationContext(), this.f4502a, new a(), booleanExtra, stringExtra, stringExtra2);
        this.b.a(stringExtra3);
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.a, android.app.Activity
    public void onCreate(Bundle bundle) {
        CreativeOrientation creativeOrientation;
        super.onCreate(bundle);
        Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
        if (serializableExtra == null || !(serializableExtra instanceof CreativeOrientation)) {
            creativeOrientation = CreativeOrientation.UNDEFINED;
        } else {
            creativeOrientation = (CreativeOrientation) serializableExtra;
        }
        DeviceUtils.lockOrientation(this, creativeOrientation);
        EventForwardingBroadcastReceiver.a(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.a, android.app.Activity
    public void onDestroy() {
        this.b.loadUrl(a.EnumC0524a.WEB_VIEW_DID_CLOSE.b());
        this.b.destroy();
        EventForwardingBroadcastReceiver.a(this, a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }

    /* loaded from: classes3.dex */
    class a implements CustomEventInterstitial.CustomEventInterstitialListener {
        a() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            MoPubActivity.this.b.loadUrl(a.EnumC0524a.WEB_VIEW_DID_APPEAR.b());
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
            EventForwardingBroadcastReceiver.a(MoPubActivity.this, MoPubActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            MoPubActivity.this.finish();
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            EventForwardingBroadcastReceiver.a(MoPubActivity.this, MoPubActivity.this.a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLeaveApplication() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
        }
    }
}
