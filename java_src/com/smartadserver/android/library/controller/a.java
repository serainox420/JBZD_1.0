package com.smartadserver.android.library.controller;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.smartadserver.android.library.SASInterstitialView;
import com.smartadserver.android.library.controller.mraid.e;
import com.smartadserver.android.library.controller.mraid.f;
import com.smartadserver.android.library.exception.SASAdCachingException;
import com.smartadserver.android.library.exception.SASAdDisplayException;
import com.smartadserver.android.library.exception.SASNoAdToDeliverException;
import com.smartadserver.android.library.exception.SASNoAdToDeliverFromCacheException;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.model.SASNativeParallaxAdElement;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import com.smartadserver.android.library.preview.SASPreviewHandlerActivity;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.d;
import java.security.NoSuchAlgorithmException;
import org.json.JSONObject;
/* compiled from: SASAdViewController.java */
/* loaded from: classes3.dex */
public class a {
    private static final String d = a.class.getSimpleName();
    private static String g = "https://www.saspreview.com/current/app/apppreview?iid=%s&timestamp=%s&s=%s";

    /* renamed from: a  reason: collision with root package name */
    public com.smartadserver.android.library.controller.mraid.a f5393a;
    public e b;
    public f c;
    private SASAdView e;
    private int f;

    public a(SASAdView sASAdView) {
        this.e = sASAdView;
        g();
    }

    private void g() {
        com.smartadserver.android.library.g.c.a(d, "create MRAID controller");
        this.f5393a = new com.smartadserver.android.library.controller.mraid.a(this.e);
        if (this.e.k != null) {
            this.b = new e(this.e);
            this.c = new f(this.e);
            this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.e.k.a(a.this.f5393a, com.smartadserver.android.library.controller.mraid.a.c);
                    a.this.e.k.a(a.this.b, e.f5418a);
                    a.this.e.k.a(a.this.c, f.f5419a);
                    a.this.e.l.a(a.this.f5393a, com.smartadserver.android.library.controller.mraid.a.c);
                    a.this.e.l.a(a.this.b, e.f5418a);
                    a.this.e.l.a(a.this.c, f.f5419a);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SASAdViewController.java */
    /* renamed from: com.smartadserver.android.library.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0581a implements SASAdView.g {

        /* renamed from: a  reason: collision with root package name */
        SASAdView.a f5399a;
        boolean b;
        long c;

        public C0581a(SASAdView.a aVar, boolean z, long j) {
            this.f5399a = aVar;
            this.b = z;
            this.c = j;
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.a
        public void adLoadingCompleted(SASAdElement sASAdElement) {
            boolean z;
            boolean z2;
            SASAdDisplayException e;
            boolean z3 = false;
            a.this.e.n = sASAdElement;
            a.this.e.setCloseOnclick(sASAdElement.isCloseOnClick());
            int closeButtonAppearanceDelay = sASAdElement.getCloseButtonAppearanceDelay();
            if (closeButtonAppearanceDelay >= 0) {
                a.this.e.setCloseButtonAppearanceDelay(closeButtonAppearanceDelay);
            }
            a.this.e.setDisplayCloseAppearanceCountDown(sASAdElement.isDisplayCloseAppearanceCountDown());
            SASNoAdToDeliverException sASNoAdToDeliverException = null;
            boolean z4 = sASAdElement.getHtmlContents() != null || (sASAdElement instanceof SASNativeVideoAdElement) || (sASAdElement instanceof SASNativeParallaxAdElement);
            boolean b = a.this.e.f.b();
            if (sASAdElement.getCandidateMediationAds() == null || !b) {
                z = z4;
                z2 = false;
            } else {
                long currentTimeMillis = this.c - System.currentTimeMillis();
                com.smartadserver.android.library.g.c.a(a.d, "remainingTime for mediation " + currentTimeMillis);
                com.smartadserver.android.library.model.a a2 = a.this.e.m.a(sASAdElement.getCandidateMediationAds(), currentTimeMillis);
                sASAdElement.setSelectedMediationAd(a2);
                if (a2 != null) {
                    a.this.a(a2);
                    z = false;
                    z2 = true;
                } else {
                    sASNoAdToDeliverException = new SASNoAdToDeliverException("No mediation ad available. Details: " + a.this.e.m.b());
                    z = z4;
                    z2 = false;
                }
            }
            if (z) {
                if (sASAdElement instanceof SASNativeVideoAdElement) {
                    try {
                        long currentTimeMillis2 = this.c - System.currentTimeMillis();
                        com.smartadserver.android.library.g.c.a(a.d, "remainingTime for native video " + currentTimeMillis2);
                        a.this.e.a((SASNativeVideoAdElement) sASAdElement, currentTimeMillis2);
                        a.this.f5393a.setState("default");
                        e = sASNoAdToDeliverException;
                        z3 = true;
                    } catch (SASAdDisplayException e2) {
                        e = e2;
                    }
                } else if (sASAdElement instanceof SASNativeParallaxAdElement) {
                    if (a.this.e instanceof SASInterstitialView) {
                        z3 = z2;
                        e = new SASAdDisplayException("Parallax format is not compatible with SASInterstitialView");
                    } else if (Build.VERSION.SDK_INT >= 11) {
                        a.this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.a.a.1
                            @Override // java.lang.Runnable
                            public void run() {
                                a.this.e.a(true);
                            }
                        });
                        a.this.f5393a.setState("default");
                        e = sASNoAdToDeliverException;
                        z3 = true;
                    } else {
                        z3 = z2;
                        e = new SASAdDisplayException("Parallax format is not supported on Android versions prior to 3.0 (Honeycomb)");
                    }
                } else {
                    if (!this.b) {
                        sASAdElement.setPrefetchable(false);
                    }
                    z3 = a.this.a(sASAdElement);
                    e = !z3 ? new SASAdDisplayException("Ad was not properly displayed") : sASNoAdToDeliverException;
                }
                if (z3) {
                    String[] impUrls = sASAdElement.getImpUrls();
                    if (impUrls.length != 0) {
                        a.this.e.a(impUrls);
                    }
                    if (sASAdElement.getViewabilityPixels() != null) {
                        a.this.e.a(sASAdElement.getViewabilityPixels());
                    }
                }
            } else {
                z3 = z2;
                e = sASNoAdToDeliverException;
            }
            com.smartadserver.android.library.g.c.a(a.d, "Display ad finished");
            if (z3) {
                if (this.f5399a != null) {
                    try {
                        this.f5399a.adLoadingCompleted((SASAdElement) sASAdElement.clone());
                    } catch (CloneNotSupportedException e3) {
                        this.f5399a.adLoadingCompleted(sASAdElement);
                    }
                }
                a.this.d();
                if (a.this.e.getCurrentLoaderView() != null) {
                    a.this.e.b(a.this.e.getCurrentLoaderView());
                    return;
                }
                return;
            }
            b(e);
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.a
        public void adLoadingFailed(Exception exc) {
            b(exc);
        }

        private void b(Exception exc) {
            a.this.d();
            if (a.this.e.getCurrentLoaderView() != null) {
                a.this.e.b(a.this.e.getCurrentLoaderView());
            }
            if (exc != null) {
                com.smartadserver.android.library.g.c.a(a.d, "adElementLoadFail: " + exc.toString());
                if (this.f5399a != null) {
                    this.f5399a.adLoadingFailed(exc);
                }
            }
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.g
        public void a(SASAdElement sASAdElement) {
            if (this.f5399a instanceof SASAdView.g) {
                ((SASAdView.g) this.f5399a).a(sASAdElement);
            }
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.g
        public void a(Exception exc) {
            if (this.f5399a instanceof SASAdView.g) {
                ((SASAdView.g) this.f5399a).a(exc);
            }
        }
    }

    public void a(final int i, final String str, final int i2, final String str2, boolean z, final SASAdView.a aVar, int i3, JSONObject jSONObject, boolean z2) {
        this.f5393a.setState("loading");
        if (z2) {
            Context applicationContext = this.e.getContext().getApplicationContext();
            final C0581a c0581a = new C0581a(aVar, z2, i3 + System.currentTimeMillis());
            try {
                final com.smartadserver.android.library.d.a a2 = com.smartadserver.android.library.d.a.a(applicationContext.getApplicationContext());
                final SASAdElement b = a2.b(i, str, i2, str2);
                if (b != null && (com.smartadserver.android.library.g.c.e(this.e.getContext()) || !b.isNeedsDataConnection())) {
                    Runnable runnable = new Runnable() { // from class: com.smartadserver.android.library.controller.a.2
                        @Override // java.lang.Runnable
                        public void run() {
                            c0581a.adLoadingCompleted(b);
                        }
                    };
                    if (com.smartadserver.android.library.g.c.d()) {
                        new Thread(runnable).start();
                    } else {
                        runnable.run();
                    }
                } else {
                    c0581a.adLoadingFailed(new SASNoAdToDeliverFromCacheException("No ad to deliver from cache with requested parameters"));
                }
                this.e.f.a(i, str, i2, str2, z, new SASAdView.a() { // from class: com.smartadserver.android.library.controller.a.3
                    @Override // com.smartadserver.android.library.ui.SASAdView.a
                    public void adLoadingFailed(Exception exc) {
                        if (exc instanceof SASNoAdToDeliverException) {
                            try {
                                a2.a(i, str, i2, str2);
                            } catch (SASAdCachingException e) {
                                com.smartadserver.android.library.g.c.a(e.getMessage());
                            }
                        }
                        if (aVar instanceof SASAdView.g) {
                            ((SASAdView.g) aVar).a(exc);
                        }
                        com.smartadserver.android.library.g.c.a("Prefetch failed: " + exc.getMessage());
                        com.smartadserver.android.library.g.c.a("adLoadingFailed for prefetch ad, load Ad can be processed on this AdView");
                        a.this.d();
                    }

                    @Override // com.smartadserver.android.library.ui.SASAdView.a
                    public void adLoadingCompleted(SASAdElement sASAdElement) {
                        if (sASAdElement.isPrefetchable() && sASAdElement.getInsertionId() != 0) {
                            try {
                                a2.a(i, str, i2, str2, sASAdElement);
                                com.smartadserver.android.library.g.c.a("adLoadingCompleted for prefetch ad, load Ad can be processed on this AdView");
                                a.this.d();
                                com.smartadserver.android.library.g.c.a("Successfully cached ad for url:" + sASAdElement.getScriptUrl());
                                if (com.smartadserver.android.library.g.c.f5436a) {
                                    a.this.a(a.this.e.getContext());
                                }
                                if (aVar instanceof SASAdView.g) {
                                    ((SASAdView.g) aVar).a(sASAdElement);
                                }
                            } catch (SASAdCachingException e) {
                                adLoadingFailed(e);
                            }
                        } else if (!sASAdElement.isPrefetchable()) {
                            adLoadingFailed(new SASAdCachingException("Ad does not support prefetching"));
                        } else if (sASAdElement.getInsertionId() == 0) {
                            adLoadingFailed(new SASAdCachingException("Prefechable Ad does not have a valid insertionID"));
                        }
                    }
                }, i3, jSONObject);
                return;
            } catch (SASAdCachingException e) {
                c0581a.adLoadingFailed(e);
                com.smartadserver.android.library.g.c.a(e.getMessage());
                return;
            }
        }
        Context applicationContext2 = this.e.getContext().getApplicationContext();
        SASPreviewHandlerActivity.PreviewConfig a3 = SASPreviewHandlerActivity.a(applicationContext2, str, Integer.toString(i2), str2);
        if (this.e.a(a3)) {
            String str3 = "" + a3.previewUrlExpirationDate;
            String str4 = "";
            try {
                str4 = com.smartadserver.android.library.g.c.d("" + a3.insertionId + str3 + "monrevecestdevendredescocktailssuruneplagegrecque");
            } catch (NoSuchAlgorithmException e2) {
            }
            str = String.format(g, Integer.valueOf(a3.insertionId), str3, str4);
        } else if (a3 != null) {
            a3.insertionId = -1;
            SASPreviewHandlerActivity.a(applicationContext2, a3);
        }
        this.e.f.a(i, str, i2, str2, z, new C0581a(aVar, false, System.currentTimeMillis() + i3), i3, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.smartadserver.android.library.model.a aVar) {
        this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.a.4
            @Override // java.lang.Runnable
            public void run() {
                a.this.e.setMediationView(aVar.e().a());
            }
        });
        if (aVar != null) {
            String c = aVar.c();
            if (c != null && c.length() > 0) {
                this.e.a(new String[]{c});
            }
            if (aVar.d() != null) {
                this.e.a(aVar.d());
            }
        }
    }

    public void a(Context context) {
        try {
            Uri defaultUri = RingtoneManager.getDefaultUri(2);
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(context, defaultUri);
            if (((AudioManager) context.getSystemService("audio")).getStreamVolume(2) != 0) {
                mediaPlayer.setAudioStreamType(2);
                mediaPlayer.prepare();
                mediaPlayer.start();
            }
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d9, code lost:
        if (r4.b() != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(final SASAdElement sASAdElement) {
        boolean z = false;
        com.smartadserver.android.library.g.c.a(d, "displayAd: " + sASAdElement.getHtmlContents());
        String a2 = com.smartadserver.android.library.controller.mraid.a.a(sASAdElement.getHtmlContents());
        if (sASAdElement.isTransferTouchEvents()) {
            a2 = com.smartadserver.android.library.controller.mraid.a.b(a2);
        }
        String str = com.smartadserver.android.library.controller.mraid.a.b;
        if (sASAdElement.isPrefetchable()) {
            str = str.substring(str.lastIndexOf("/") + 1);
        } else if (com.smartadserver.android.library.g.c.f5436a) {
            str = str + "?" + com.smartadserver.android.library.g.c.e();
        }
        final String replace = a2.replace("\"mraid.js\"", "\"" + str + "\"");
        com.smartadserver.android.library.g.c.a(d, "displayAd: script, with mraid bridge inside script " + replace);
        sASAdElement.setHtmlContents(replace);
        this.f5393a.a();
        this.f5393a.setExpandUseCustomCloseProperty(sASAdElement.getCloseButtonPosition() == -1);
        if (this.b != null) {
            this.b.a();
        }
        if (this.c != null) {
            this.c.b(sASAdElement.getCloseButtonPosition());
        }
        c cVar = this.e.i;
        b bVar = this.e.j;
        final d dVar = this.e.k;
        synchronized (bVar) {
            cVar.a();
            bVar.a();
            this.e.a(new Runnable() { // from class: com.smartadserver.android.library.controller.a.5
                @Override // java.lang.Runnable
                public void run() {
                    String baseUrl = sASAdElement.getBaseUrl();
                    if (baseUrl == null) {
                        baseUrl = SASAdView.getBaseUrl();
                    }
                    dVar.a(baseUrl, replace, "text/html", "UTF-8", null);
                }
            });
            try {
                bVar.wait(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                com.smartadserver.android.library.g.c.a(d, "Wait finished");
                if (cVar.b()) {
                }
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        return z;
        z = true;
        return z;
    }

    public void a() {
        com.smartadserver.android.library.g.c.a(d, "enableListeners");
        if (this.b != null) {
            this.b.e();
        }
    }

    public void b() {
        com.smartadserver.android.library.g.c.a(d, "disableListeners");
        if (this.b != null) {
            this.b.d();
        }
    }

    public boolean c() {
        return this.f > 0;
    }

    public void a(int i) {
        this.f = i;
    }

    public void d() {
        this.f--;
        if (this.f < 0) {
            this.f = 0;
        }
        com.smartadserver.android.library.g.c.a(d, "pendingLoadAdCount:" + this.f);
    }

    public void e() {
    }
}
