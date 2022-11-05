package com.smaato.soma.video;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.VideoView;
import com.google.android.gms.drive.DriveFile;
import com.smaato.soma.exception.VASTViewInitException;
import com.smaato.soma.internal.c.e;
import com.smaato.soma.l;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.util.Vector;
/* compiled from: VASTView.java */
/* loaded from: classes3.dex */
public class c extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener, View.OnTouchListener {
    private static String p = "VASTView";

    /* renamed from: a  reason: collision with root package name */
    Handler f5295a;
    int b;
    private com.smaato.soma.internal.d.c c;
    private a d;
    private long e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private com.smaato.soma.video.a n;
    private b o;
    private boolean q;
    private int r;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: VASTView.java */
    /* loaded from: classes3.dex */
    public interface a {
        void d();
    }

    public b getVastAdListener() {
        return this.o;
    }

    public void setVastAdListener(b bVar) {
        this.o = bVar;
    }

    public boolean a() {
        return this.q;
    }

    public void a(boolean z) {
        this.q = z;
    }

    public void setAutoCloseDuration(int i) {
        this.r = i;
    }

    public int getAutoCloseDuration() {
        return this.r;
    }

    public int getVideoSkipInterval() {
        return this.b;
    }

    public boolean b() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setRewardedVideo(boolean z) {
        this.l = z;
    }

    public com.smaato.soma.video.a getRewardedVideoListener() {
        return this.n;
    }

    public void setRewardedVideoListener(com.smaato.soma.video.a aVar) {
        this.n = aVar;
    }

    public boolean c() {
        return b() && getRewardedVideoListener() != null;
    }

    public a getOnVideoFinishedPlaying() {
        return this.d;
    }

    public void setOnVideoFinishedPlaying(a aVar) {
        this.d = aVar;
    }

    public c(Context context, final com.smaato.soma.internal.d.c cVar, final boolean z, final b bVar, final int i, final boolean z2, final int i2) {
        super(context);
        this.f5295a = new Handler();
        this.e = 0L;
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = false;
        this.l = false;
        this.m = false;
        this.q = false;
        this.r = 3;
        this.b = 15;
        new l<Void>() { // from class: com.smaato.soma.video.c.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                c.this.c = cVar;
                c.this.setAutoCloseDuration(i);
                c.this.setRewardedVideo(z);
                c.this.a(z2);
                if (bVar instanceof com.smaato.soma.video.a) {
                    c.this.setRewardedVideoListener((com.smaato.soma.video.a) bVar);
                } else {
                    c.this.setVastAdListener(bVar);
                    c.this.b = i2;
                }
                c.this.f();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() throws VASTViewInitException {
        try {
            setVideoURI(this.c.b());
            setOnPreparedListener(this);
            setOnCompletionListener(this);
            setOnTouchListener(this);
            setOnErrorListener(this);
            this.e = this.c.d();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new VASTViewInitException(e2);
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        new l<Void>() { // from class: com.smaato.soma.video.c.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        new l<Void>() { // from class: com.smaato.soma.video.c.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                c.this.f5295a.postDelayed(new Runnable() { // from class: com.smaato.soma.video.c.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        long currentPosition = c.this.getCurrentPosition() / 1000;
                        long j = c.this.e / 4;
                        if (currentPosition >= 3 * j && !c.this.h) {
                            new e().execute(c.this.c.c(SASNativeVideoAdElement.TRACKING_EVENT_NAME_THIRD_QUARTILE));
                            c.this.h = true;
                            c.this.f5295a.removeCallbacksAndMessages(null);
                            if (c.this.c()) {
                                c.this.getRewardedVideoListener().d();
                            }
                        } else if (currentPosition >= 2 * j && !c.this.g) {
                            new e().execute(c.this.c.c(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MIDPOINT));
                            c.this.g = true;
                            c.this.f5295a.postDelayed(this, 1000L);
                            if (c.this.c()) {
                                c.this.getRewardedVideoListener().c();
                            }
                        } else if (currentPosition >= j && !c.this.f) {
                            new e().execute(c.this.c.c(SASNativeVideoAdElement.TRACKING_EVENT_NAME_FIRST_QUARTILE));
                            c.this.f = true;
                            c.this.f5295a.postDelayed(this, 1000L);
                            if (c.this.c()) {
                                c.this.getRewardedVideoListener().b();
                            }
                        } else {
                            c.this.f5295a.postDelayed(this, 1000L);
                        }
                    }
                }, 1000L);
                return null;
            }
        }.c();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        new l<Void>() { // from class: com.smaato.soma.video.c.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                c.this.m = false;
                Vector<String> h = c.this.c.h();
                Vector<String> c = c.this.c.c(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
                Vector<String> c2 = c.this.c.c("fullscreen");
                if (!c.this.i) {
                    new e().execute(h);
                    c.this.i = true;
                }
                if (!c.this.j) {
                    new e().execute(c);
                    c.this.j = true;
                }
                if (!c.this.k) {
                    new e().execute(c2);
                    c.this.k = true;
                }
                if (c.this.getRewardedVideoListener() != null) {
                    c.this.getRewardedVideoListener().a();
                }
                c.this.g();
                return null;
            }
        }.c();
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        new l<Void>() { // from class: com.smaato.soma.video.c.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                c.this.m = true;
                new e().execute(c.this.c.c(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE));
                if (c.this.getRewardedVideoListener() != null && c.this.c()) {
                    c.this.getRewardedVideoListener().e();
                }
                if (c.this.d != null) {
                    c.this.d.d();
                    return null;
                }
                return null;
            }
        }.c();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        return new l<Boolean>() { // from class: com.smaato.soma.video.c.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Boolean b() throws Exception {
                new e().execute(c.this.c.e());
                c.this.d.d();
                return false;
            }
        }.c().booleanValue();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        new l<Void>() { // from class: com.smaato.soma.video.c.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (c.this.c.f() != null) {
                    if (c.this.b()) {
                        if (c.this.m) {
                            c.this.d();
                            return null;
                        }
                        return null;
                    }
                    c.this.d();
                    return null;
                }
                return null;
            }
        }.c();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            if (getVastAdListener() != null) {
                getVastAdListener().onWillOpenLandingPage();
            } else if (getRewardedVideoListener() != null) {
                getRewardedVideoListener().onWillOpenLandingPage();
            }
        } catch (Exception e) {
        }
    }

    public boolean d() {
        new l<Void>() { // from class: com.smaato.soma.video.c.8
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                new e().execute(c.this.c.g());
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(c.this.c.f().trim()));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                c.this.getContext().startActivity(intent);
                c.this.h();
                return null;
            }
        }.c();
        return false;
    }

    public void e() {
        this.f5295a.removeCallbacksAndMessages(null);
        pause();
    }

    public com.smaato.soma.internal.d.c getVastAd() {
        return this.c;
    }

    public void setVastAd(com.smaato.soma.internal.d.c cVar) {
        this.c = cVar;
    }
}
