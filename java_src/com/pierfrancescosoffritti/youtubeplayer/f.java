package com.pierfrancescosoffritti.youtubeplayer;

import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import com.google.firebase.a.a;
import com.pierfrancescosoffritti.youtubeplayer.e;
/* compiled from: YouTubePlayerBridge.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final e f4721a;
    private final Handler b = new Handler(Looper.getMainLooper());

    public f(e eVar) {
        this.f4721a = eVar;
    }

    @JavascriptInterface
    public void onReady() {
        for (e.a aVar : this.f4721a.getListeners()) {
            aVar.b();
        }
    }

    @JavascriptInterface
    public void onStateChange(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.1
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    if ("UNSTARTED".equalsIgnoreCase(str)) {
                        aVar.a(-1);
                    } else if ("ENDED".equalsIgnoreCase(str)) {
                        aVar.a(0);
                    } else if ("PLAYING".equalsIgnoreCase(str)) {
                        aVar.a(1);
                    } else if ("PAUSED".equalsIgnoreCase(str)) {
                        aVar.a(2);
                    } else if ("BUFFERING".equalsIgnoreCase(str)) {
                        aVar.a(3);
                    } else if ("CUED".equalsIgnoreCase(str)) {
                        aVar.a(5);
                    }
                }
            }
        });
    }

    @JavascriptInterface
    public void onPlaybackQualityChange(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.3
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    if ("small".equalsIgnoreCase(str)) {
                        aVar.b(0);
                    } else if (a.b.MEDIUM.equalsIgnoreCase(str)) {
                        aVar.b(1);
                    } else if ("large".equalsIgnoreCase(str)) {
                        aVar.b(2);
                    } else if ("hd720".equalsIgnoreCase(str)) {
                        aVar.b(3);
                    } else if ("hd1080".equalsIgnoreCase(str)) {
                        aVar.b(4);
                    } else if ("highres".equalsIgnoreCase(str)) {
                        aVar.b(5);
                    } else if ("default".equalsIgnoreCase(str)) {
                        aVar.b(-1);
                    }
                }
            }
        });
    }

    @JavascriptInterface
    public void onPlaybackRateChange(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.4
            @Override // java.lang.Runnable
            public void run() {
                double parseDouble = Double.parseDouble(str);
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.a(parseDouble);
                }
            }
        });
    }

    @JavascriptInterface
    public void onError(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.5
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    if ("2".equalsIgnoreCase(str)) {
                        aVar.c(0);
                    } else if ("5".equalsIgnoreCase(str)) {
                        aVar.c(1);
                    } else if ("100".equalsIgnoreCase(str)) {
                        aVar.c(2);
                    } else if ("101".equalsIgnoreCase(str)) {
                        aVar.c(3);
                    } else if ("150".equalsIgnoreCase(str)) {
                        aVar.c(3);
                    }
                }
            }
        });
    }

    @JavascriptInterface
    public void onApiChange() {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.6
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.c();
                }
            }
        });
    }

    @JavascriptInterface
    public void currentSeconds(String str) {
        try {
            final float parseFloat = Float.parseFloat(str);
            this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.7
                @Override // java.lang.Runnable
                public void run() {
                    for (e.a aVar : f.this.f4721a.getListeners()) {
                        aVar.a(parseFloat);
                    }
                }
            });
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }

    @JavascriptInterface
    public void onVideoTitle(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.8
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.b(str);
                }
            }
        });
    }

    @JavascriptInterface
    public void onVideoId(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.9
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.c(str);
                }
            }
        });
    }

    @JavascriptInterface
    public void onVideoDuration(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.10
            @Override // java.lang.Runnable
            public void run() {
                float parseFloat = Float.parseFloat(str);
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.b(parseFloat);
                }
            }
        });
    }

    @JavascriptInterface
    public void onLog(final String str) {
        this.b.post(new Runnable() { // from class: com.pierfrancescosoffritti.youtubeplayer.f.2
            @Override // java.lang.Runnable
            public void run() {
                for (e.a aVar : f.this.f4721a.getListeners()) {
                    aVar.a(str);
                }
            }
        });
    }
}
