package com.smaato.soma.bannerutilities;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.util.Patterns;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.JsResult;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.ClosingVideoChromeFailedException;
import com.smaato.soma.exception.ClosingVideoFailed;
import com.smaato.soma.exception.GooglePlayUrlParsingException;
import com.smaato.soma.exception.StartingVideoFailedException;
import com.smaato.soma.exception.UnableToFindRootLayout;
import com.smaato.soma.exception.UnableToGetVideoView;
import com.smaato.soma.exception.VideoChromeContextFailed;
import com.smaato.soma.exception.VideoRootViewNotFoundException;
import com.smaato.soma.l;
import com.smaato.soma.measurements.FraudesType;
import java.util.ArrayList;
import java.util.List;
/* compiled from: VideoChrome.java */
/* loaded from: classes3.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    com.smaato.soma.bannerutilities.a f4912a;

    public g(com.smaato.soma.bannerutilities.a aVar) {
        this.f4912a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a a() {
        if (Build.VERSION.SDK_INT >= 7) {
            return new b();
        }
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context b() throws VideoChromeContextFailed {
        try {
            return this.f4912a.h();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new VideoChromeContextFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoChrome.java */
    /* loaded from: classes3.dex */
    public class c implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
        private VideoView b = null;
        private FrameLayout c = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c() {
        }

        private FrameLayout a(View view) throws VideoRootViewNotFoundException {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.c.1
                });
                return (FrameLayout) view.getRootView().findViewById(16908290);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new VideoRootViewNotFoundException(e2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String a(String str) {
            return "Opening URL " + str + " in external browser.";
        }

        public void a() throws ClosingVideoFailed {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.c.2
                });
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("VideoSubView", "closeVideo", 1, DebugCategory.DEBUG));
                if (this.b != null) {
                    this.b.stopPlayback();
                    this.c.removeView(this.b);
                    this.b = null;
                }
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new ClosingVideoFailed(e2);
            }
        }

        public void a(View view, String str, final String str2) throws StartingVideoFailedException {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.c.3
                });
                this.b = new VideoView(g.this.b());
                this.c = a(view);
                this.c.addView(this.b);
                this.b.setVideoURI(Uri.parse(str));
                this.b.setOnCompletionListener(this);
                this.b.setOnErrorListener(this);
                this.b.setOnKeyListener(new View.OnKeyListener() { // from class: com.smaato.soma.bannerutilities.g.c.4
                    @Override // android.view.View.OnKeyListener
                    public boolean onKey(final View view2, final int i, final KeyEvent keyEvent) {
                        return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.g.c.4.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Boolean b() throws Exception {
                                if (view2 == null) {
                                    return false;
                                }
                                if (i == 4 && keyEvent.getAction() == 1) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("VideoTest", "Back key pressed", 1, DebugCategory.DEBUG));
                                    c.this.a();
                                    return true;
                                }
                                return false;
                            }
                        }.c().booleanValue();
                    }
                });
                this.b.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.smaato.soma.bannerutilities.g.c.5
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public void onPrepared(final MediaPlayer mediaPlayer) {
                        new l<Void>() { // from class: com.smaato.soma.bannerutilities.g.c.5.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                mediaPlayer.start();
                                return null;
                            }
                        }.c();
                    }
                });
                view.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.bannerutilities.g.c.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        new l<Void>() { // from class: com.smaato.soma.bannerutilities.g.c.6.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner Client", c.this.a(str2), 1, DebugCategory.DEBUG));
                                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                                intent.addFlags(DriveFile.MODE_READ_ONLY);
                                g.this.b().getApplicationContext().startActivity(intent);
                                return null;
                            }
                        }.c();
                    }
                });
                this.b.setOnTouchListener(new View.OnTouchListener() { // from class: com.smaato.soma.bannerutilities.g.c.7
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, final MotionEvent motionEvent) {
                        return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.g.c.7.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Boolean b() throws Exception {
                                if (motionEvent.getAction() == 1) {
                                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner Client", c.this.a(str2), 1, DebugCategory.DEBUG));
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2));
                                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                                    g.this.b().getApplicationContext().startActivity(intent);
                                }
                                return false;
                            }
                        }.c().booleanValue();
                    }
                });
                this.b.requestFocus();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new StartingVideoFailedException(e2);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.g.c.8
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    c.this.a();
                    return false;
                }
            }.c().booleanValue();
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            new l<Void>() { // from class: com.smaato.soma.bannerutilities.g.c.9
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    c.this.a();
                    return null;
                }
            }.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoChrome.java */
    /* loaded from: classes3.dex */
    public class a extends WebChromeClient {

        /* renamed from: a  reason: collision with root package name */
        public h f4913a = null;

        a() {
        }

        public void a(h hVar) {
            this.f4913a = hVar;
        }

        public void a() throws ClosingVideoChromeFailedException {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoChrome.java */
    /* loaded from: classes3.dex */
    public class b extends a implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
        private WebChromeClient.CustomViewCallback d;
        private VideoView e;
        private FrameLayout f;

        b() {
            super();
            this.d = null;
            this.e = null;
            this.f = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FrameLayout a(View view) throws UnableToFindRootLayout {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.b.1
                });
                return (FrameLayout) view.getRootView().findViewById(16908290);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnableToFindRootLayout(e2);
            }
        }

        @Override // com.smaato.soma.bannerutilities.g.a
        public void a() throws ClosingVideoChromeFailedException {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.b.2
                });
                if (this.e != null) {
                    com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("VideoChromeClient", "closeVideo", 1, DebugCategory.DEBUG));
                    this.e.stopPlayback();
                    this.f.removeView(this.e);
                    this.d.onCustomViewHidden();
                    this.e = null;
                }
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new ClosingVideoChromeFailedException(e2);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.b.3
            });
            super.onShowCustomView(view, customViewCallback);
            new AnonymousClass4(customViewCallback, view, this).c();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: VideoChrome.java */
        /* renamed from: com.smaato.soma.bannerutilities.g$b$4  reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass4 extends l<Void> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ WebChromeClient.CustomViewCallback f4917a;
            final /* synthetic */ View b;
            final /* synthetic */ b c;

            AnonymousClass4(WebChromeClient.CustomViewCallback customViewCallback, View view, b bVar) {
                this.f4917a = customViewCallback;
                this.b = view;
                this.c = bVar;
            }

            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Banner Client", "onShowCustomView()", 1, DebugCategory.ERROR));
                b.this.d = this.f4917a;
                if (this.b instanceof FrameLayout) {
                    FrameLayout frameLayout = (FrameLayout) this.b;
                    if (frameLayout.getFocusedChild() instanceof VideoView) {
                        b.this.e = (VideoView) frameLayout.getFocusedChild();
                        frameLayout.removeView(b.this.e);
                        b.this.f = b.this.a(b.this.b());
                        b.this.f.addView(b.this.e);
                        b.this.e.setOnCompletionListener(this.c);
                        b.this.e.setOnErrorListener(this.c);
                        b.this.e.setOnKeyListener(new View.OnKeyListener() { // from class: com.smaato.soma.bannerutilities.g.b.4.1
                            @Override // android.view.View.OnKeyListener
                            public boolean onKey(final View view, final int i, final KeyEvent keyEvent) {
                                return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.g.b.4.1.1
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Boolean b() throws Exception {
                                        if (view == null) {
                                            return false;
                                        }
                                        if (i == 4 && keyEvent.getAction() == 1) {
                                            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("VideoTest", "Back key pressed", 1, DebugCategory.DEBUG));
                                            b.this.a();
                                            return true;
                                        }
                                        return false;
                                    }
                                }.c().booleanValue();
                            }
                        });
                        b.this.e.start();
                        return null;
                    }
                    return null;
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public View b() throws UnableToGetVideoView {
            try {
                return g.this.f4912a.e();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new UnableToGetVideoView(e2);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            new l<Void>() { // from class: com.smaato.soma.bannerutilities.g.b.5
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    b.this.a();
                    return null;
                }
            }.c();
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            return new l<Boolean>() { // from class: com.smaato.soma.bannerutilities.g.b.6
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Boolean b() throws Exception {
                    b.this.f.removeView(b.this.e);
                    b.this.d.onCustomViewHidden();
                    return false;
                }
            }.c().booleanValue();
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b("Javascript", "JSAlert " + str2, 1, DebugCategory.INFO));
            return super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onCloseWindow(WebView webView) {
            super.onCloseWindow(webView);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            if (this.f4913a != null) {
                this.f4913a.a(str);
            }
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(final WebView webView, final int i) {
            super.onProgressChanged(webView, i);
            new l<Void>() { // from class: com.smaato.soma.bannerutilities.g.b.7
                @Override // com.smaato.soma.l
                /* renamed from: a */
                public Void b() throws Exception {
                    if (b.this.f4913a != null) {
                        b.this.f4913a.a(webView, i);
                    }
                    if (i == 100) {
                        if (((com.smaato.soma.internal.e.a) webView).a()) {
                            boolean a2 = b.this.a(webView.getUrl(), webView);
                            if (b.this.f4913a != null) {
                                b.this.f4913a.b(a2);
                                return null;
                            }
                            return null;
                        } else if (webView.getUrl() != null && !webView.getUrl().equals("about:blank")) {
                            if (b.this.a(webView.getUrl()) || b.this.b(webView.getUrl()) || webView.getUrl().startsWith("intent:")) {
                                try {
                                    ((com.smaato.soma.internal.e.a) webView).a(FraudesType.AUTO_REDIRECT, webView.getUrl(), b.this.a(webView));
                                    return null;
                                } catch (Exception e) {
                                    return null;
                                }
                            }
                            return null;
                        } else {
                            return null;
                        }
                    }
                    return null;
                }
            }.c();
        }

        public List<String> a(WebView webView) {
            if (webView != null) {
                try {
                    WebBackForwardList copyBackForwardList = ((com.smaato.soma.internal.e.a) webView).copyBackForwardList();
                    if (copyBackForwardList == null || copyBackForwardList.getSize() <= 0) {
                        return null;
                    }
                    ArrayList arrayList = new ArrayList();
                    for (int i = 0; i < copyBackForwardList.getSize(); i++) {
                        String originalUrl = copyBackForwardList.getItemAtIndex(i).getOriginalUrl();
                        String url = copyBackForwardList.getItemAtIndex(i).getUrl();
                        if (originalUrl != null) {
                            arrayList.add(originalUrl);
                        }
                        if (url != null) {
                            if (originalUrl == null) {
                                arrayList.add(url);
                            } else if (originalUrl != null && !originalUrl.equals(url)) {
                                arrayList.add(url);
                            }
                        }
                    }
                    return arrayList;
                } catch (Exception e) {
                }
            }
            return null;
        }

        public boolean a(String str, WebView webView) throws GooglePlayUrlParsingException {
            try {
                com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.bannerutilities.g.b.8
                });
                if (str == null) {
                    return false;
                }
                if (a(str)) {
                    StringBuffer stringBuffer = new StringBuffer("market://details?");
                    stringBuffer.append(str.split("details\\?")[1]);
                    g.this.b().getApplicationContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(stringBuffer.toString())).setFlags(335544320));
                    g.this.f4912a.n();
                    return true;
                } else if (b(str)) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    g.this.b().getApplicationContext().startActivity(intent);
                    return true;
                } else if (str != null && str.startsWith("intent:")) {
                    if (!d(str)) {
                        return false;
                    }
                    g.this.f4912a.n();
                    return true;
                } else if (!c(str)) {
                    return false;
                } else {
                    try {
                        if (com.smaato.soma.bannerutilities.b.a().b() || str.equalsIgnoreCase("about:blank")) {
                            return true;
                        }
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        com.smaato.soma.bannerutilities.b.a().a(true);
                        if (g.this.b().getPackageManager().resolveActivity(intent2, 0) != null) {
                            intent2.addFlags(DriveFile.MODE_READ_ONLY);
                            g.this.b().getApplicationContext().startActivity(intent2);
                            g.this.f4912a.n();
                            return true;
                        }
                        String str2 = null;
                        WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
                        if (copyBackForwardList != null && copyBackForwardList.getCurrentIndex() > 0) {
                            str2 = copyBackForwardList.getItemAtIndex(copyBackForwardList.getCurrentIndex()).getOriginalUrl();
                        }
                        if (str2 != null) {
                            g.this.b().getApplicationContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)).setFlags(335544320));
                        }
                        g.this.f4912a.n();
                        return false;
                    } catch (Exception e) {
                        return false;
                    }
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new GooglePlayUrlParsingException(e3);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(String str) {
            return (str.contains("play.google.com") || (str.contains("market://") && str.contains("details?"))) && !com.smaato.soma.bannerutilities.b.a().b();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(String str) {
            return str.contains("tel:") || str.contains("mailto:") || str.contains("maps:") || str.contains("sms:");
        }

        private boolean c(String str) {
            try {
                return !Patterns.WEB_URL.matcher(str).matches();
            } catch (Exception e) {
                return false;
            }
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0078 -> B:24:0x0031). Please submit an issue!!! */
        private boolean d(String str) {
            boolean z = true;
            try {
                Intent flags = Intent.parseUri(str, 1).setFlags(335544320);
                if (flags != null && flags.getPackage() != null && g.this.b().getPackageManager().getLaunchIntentForPackage(flags.getPackage()) != null) {
                    g.this.b().startActivity(flags);
                } else if (flags.getStringExtra("browser_fallback_url") != null) {
                    g.this.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(flags.getStringExtra("browser_fallback_url"))).setFlags(335544320));
                } else {
                    if (flags.getData() != null) {
                        g.this.b().startActivity(new Intent("android.intent.action.VIEW", flags.getData()).setFlags(335544320));
                    }
                    z = false;
                }
            } catch (Exception e) {
                try {
                    g.this.b().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)).setFlags(335544320));
                } catch (Exception e2) {
                }
            }
            return z;
        }
    }
}
