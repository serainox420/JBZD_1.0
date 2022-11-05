package com.pierfrancescosoffritti.youtubeplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;
import pl.jbzd.R;
/* compiled from: YouTubePlayer.java */
/* loaded from: classes3.dex */
public class e extends WebView {

    /* renamed from: a  reason: collision with root package name */
    private Set<a> f4714a;
    private final Handler b;

    /* compiled from: YouTubePlayer.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a(double d);

        void a(float f);

        void a(int i);

        void a(String str);

        void b();

        void b(float f);

        void b(int i);

        void b(String str);

        void c();

        void c(int i);

        void c(String str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public e(Context context) {
        this(context, null);
    }

    protected e(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected e(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = new Handler(Looper.getMainLooper());
        this.f4714a = new HashSet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
    public void a(a aVar) {
        if (aVar != null) {
            this.f4714a.add(aVar);
        }
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setCacheMode(2);
        addJavascriptInterface(new f(this), "YouTubePlayerBridge");
        loadDataWithBaseURL("https://www.youtube.com", getVideoPlayerHTML(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        setWebChromeClient(new WebChromeClient() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.1
            @Override // android.webkit.WebChromeClient
            public Bitmap getDefaultVideoPoster() {
                Bitmap bitmap = null;
                try {
                    bitmap = super.getDefaultVideoPoster();
                } catch (Exception e) {
                }
                if (bitmap == null) {
                    return Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
                }
                return bitmap;
            }
        });
    }

    private String getVideoPlayerHTML() {
        try {
            InputStream openRawResource = getResources().openRawResource(R.raw.player);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(openRawResource, AudienceNetworkActivity.WEBVIEW_ENCODING));
            StringBuilder sb = new StringBuilder("");
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append(readLine).append("\n");
                } else {
                    openRawResource.close();
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final String str, final float f) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.loadUrl("javascript:loadVideo('" + str + "', " + f + ")");
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(final String str, final float f) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.loadUrl("javascript:cueVideo('" + str + "', " + f + ")");
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.loadUrl("javascript:playVideo()");
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.loadUrl("javascript:pauseVideo()");
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final int i) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.e.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    e.this.loadUrl("javascript:seekTo(" + i + ")");
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Set<a> getListeners() {
        return this.f4714a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean b(a aVar) {
        return this.f4714a.add(aVar);
    }
}
