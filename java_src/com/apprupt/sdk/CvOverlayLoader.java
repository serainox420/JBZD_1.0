package com.apprupt.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import java.util.ArrayList;
/* loaded from: classes.dex */
class CvOverlayLoader {

    /* renamed from: a  reason: collision with root package name */
    public static ArrayList<WebView> f1880a = new ArrayList<>();
    private Context b;
    private WebView c;
    private CvLauncher d;
    private boolean e = true;
    private boolean f;

    public CvOverlayLoader(Context context, final boolean z) {
        this.b = context;
        this.d = new CvLauncher(this.b);
        this.f = z;
        WebViewClient webViewClient = new WebViewClient() { // from class: com.apprupt.sdk.CvOverlayLoader.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!CvOverlayLoader.this.d.a(str, CvAdType.IN_PLACE)) {
                    CvOverlayLoader.this.e = false;
                } else {
                    webView.loadUrl(str);
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (CvOverlayLoader.this.e && !z) {
                    CvOverlayLoader.this.a();
                }
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                Logger.a("OVERLAY").d("Overlay error: " + ((Object) webResourceError.getDescription()), " (URL:", webResourceRequest.getUrl().toString() + ")");
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                Logger.a("OVERLAY").d("Overlay error: " + str);
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            }
        };
        this.c = new CvWebView(this.b);
        this.c.setWebViewClient(webViewClient);
    }

    public void a(String str) {
        if (this.f) {
            a();
        }
        this.c.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        f1880a.add(this.c);
        Intent intent = new Intent(this.b, CvOverlayActivity.class);
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        this.b.startActivity(intent);
    }
}
