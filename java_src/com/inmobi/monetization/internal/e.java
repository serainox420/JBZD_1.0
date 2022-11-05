package com.inmobi.monetization.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.imai.IMAIController;
import com.inmobi.re.container.IMWebView;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* compiled from: TrackerView.java */
/* loaded from: classes2.dex */
class e extends View {

    /* renamed from: a  reason: collision with root package name */
    WebViewClient f3887a;
    private IMWebView b;
    private boolean c;
    private String d;
    private ArrayList<String> e;
    private boolean f;

    public e(Context context, String str, String str2) {
        super(context);
        this.c = false;
        this.e = null;
        this.f = false;
        this.f3887a = new WebViewClient() { // from class: com.inmobi.monetization.internal.e.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str3) {
                Log.internal(Constants.LOG_TAG, "Native ad context code loaded");
                e.this.f = true;
                if (e.this.e != null && !e.this.e.isEmpty()) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < e.this.e.size()) {
                            e.this.b((String) e.this.e.get(i2));
                            i = i2 + 1;
                        } else {
                            e.this.e.clear();
                            e.this.e = null;
                            return;
                        }
                    }
                }
            }
        };
        if (str != null && str2 != null) {
            this.d = str2;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(10);
            setLayoutParams(layoutParams);
            setBackgroundColor(0);
            IMWebView.setIMAIController(IMAIController.class);
            this.b = new IMWebView(context, null, false, false);
            this.b.getSettings().setJavaScriptEnabled(true);
            this.b.getSettings().setCacheMode(2);
            this.b.setWebViewClient(this.f3887a);
            this.b.loadData(str, "text/html", "UTF-8");
            this.e = new ArrayList<>();
            setId(999);
        }
    }

    public void a() {
        if (this.b != null) {
            this.b.destroy();
            this.b = null;
        }
        if (this.e != null) {
            this.e.clear();
            this.e = null;
        }
        this.c = false;
        this.f = false;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0 && !this.c) {
            this.c = true;
            if (this.f) {
                a(b());
            } else if (this.e != null) {
                this.e.add(b());
            }
        }
    }

    private String b() {
        return this.d + "recordEvent(18)";
    }

    private String b(HashMap<String, String> hashMap) {
        StringBuilder sb = new StringBuilder();
        if (hashMap == null || hashMap.isEmpty()) {
            sb.append(this.d + "recordEvent(8)");
            return sb.toString();
        }
        sb.append(this.d + "recordEvent(8, ");
        sb.append(new JSONObject(hashMap).toString());
        sb.append(")");
        return sb.toString();
    }

    public void a(String str) {
        Log.debug(Constants.LOG_TAG, "Handle Impression");
        b(str);
    }

    public void a(HashMap<String, String> hashMap) {
        Log.debug(Constants.LOG_TAG, "Handle Click");
        String b = b(hashMap);
        if (this.f) {
            b(b);
        } else if (this.e != null) {
            this.e.add(b);
        }
    }

    public void b(String str) {
        if (str != null) {
            try {
                if (str.length() < 400) {
                    Log.internal(Constants.LOG_TAG, str);
                }
                if (this.b != null) {
                    String str2 = "javascript:try{" + str + "}catch(e){}";
                    if (Build.VERSION.SDK_INT < 19) {
                        c(str2);
                    } else {
                        d(str2);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void c(String str) {
        this.b.loadUrl(str);
    }

    @TargetApi(19)
    private void d(String str) {
        this.b.evaluateJavascript(str, null);
    }
}
