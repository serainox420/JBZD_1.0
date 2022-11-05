package com.smartadserver.android.library.controller.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.inmobi.re.controller.JSController;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.SASPlayerActivity;
import com.smartadserver.android.library.ui.SASVideoView;
import java.util.ArrayList;
/* compiled from: SASMRAIDVideoController.java */
/* loaded from: classes.dex */
public class f implements SASVideoView.a {

    /* renamed from: a  reason: collision with root package name */
    public static String f5419a = "mraidvideo";
    private SASAdView h;
    private RelativeLayout i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int[] o;
    private boolean p;
    private SASVideoView q;
    private ImageView r;
    private ImageView s;
    private ProgressBar t;
    private SASMRAIDVideoConfig u;
    private Handler w;
    private int y;
    private int z;
    private boolean v = false;
    private boolean x = false;
    public MediaPlayer.OnCompletionListener b = new MediaPlayer.OnCompletionListener() { // from class: com.smartadserver.android.library.controller.mraid.f.2
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            f.this.i();
            if (!f.this.u.f()) {
                if (f.this.u.c()) {
                    f.this.a(false);
                    return;
                } else if (f.this.r != null) {
                    f.this.r.setImageBitmap(com.smartadserver.android.library.f.a.d);
                    return;
                } else {
                    f.this.b();
                    return;
                }
            }
            f.this.b();
        }
    };
    public MediaPlayer.OnErrorListener c = new MediaPlayer.OnErrorListener() { // from class: com.smartadserver.android.library.controller.mraid.f.3
        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            f.this.a("Cannot play movie!");
            f.this.i();
            if (f.this.t != null) {
                f.this.t.setVisibility(8);
            }
            f.this.b();
            return true;
        }
    };
    public MediaPlayer.OnPreparedListener d = new MediaPlayer.OnPreparedListener() { // from class: com.smartadserver.android.library.controller.mraid.f.4
        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            f.this.t.setVisibility(8);
        }
    };
    final Runnable e = new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.f.5
        @Override // java.lang.Runnable
        public void run() {
            if (f.this.o() && f.this.q.getCurrentPosition() != 0) {
                f.this.y = f.this.q.getCurrentPosition();
            }
            if (f.this.x) {
                f.this.x = false;
            } else {
                f.this.w.postDelayed(this, 100L);
            }
        }
    };
    View.OnClickListener f = new View.OnClickListener() { // from class: com.smartadserver.android.library.controller.mraid.f.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (f.this.q.isPlaying()) {
                f.this.m();
                return;
            }
            f.this.j();
            f.this.a(false);
        }
    };
    View.OnClickListener g = new View.OnClickListener() { // from class: com.smartadserver.android.library.controller.mraid.f.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (f.this.q.c()) {
                f.this.q.b();
                f.this.s.setImageBitmap(com.smartadserver.android.library.f.a.g);
            } else {
                f.this.q.a();
                f.this.s.setImageBitmap(com.smartadserver.android.library.f.a.f);
            }
            f.this.a(f.this.q.getCurrentVolume());
        }
    };

    public f(SASAdView sASAdView) {
        this.h = sASAdView;
        this.i = new RelativeLayout(this.h.getContext());
    }

    @JavascriptInterface
    public void playVideoInNativePlayer(String str) {
        boolean z = true;
        Context context = this.h.getContext();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse(str), "video/mp4");
        AudioManager audioManager = (AudioManager) this.h.getContext().getSystemService("audio");
        if (audioManager.getRingerMode() == 2 || audioManager.isMusicActive()) {
            z = false;
        }
        if (context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0) {
            if (z) {
                audioManager.setStreamVolume(3, 0, 0);
            }
            context.startActivity(intent);
            return;
        }
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setDataSource(str);
            mediaPlayer.prepare();
            int videoWidth = mediaPlayer.getVideoWidth();
            int videoHeight = mediaPlayer.getVideoHeight();
            mediaPlayer.release();
            playVideo(str, z, true, true, false, new int[]{0, 0, videoWidth, videoHeight, 0}, "fullscreen", JSController.EXIT);
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void playVideo(String str, boolean z, boolean z2, boolean z3, boolean z4, int[] iArr, String str2, String str3) {
        boolean z5;
        com.smartadserver.android.library.g.c.a("SASMRAIDVideoController", "playVideo: url: " + str + " audioMuted: " + z + " autoPlay: " + z2 + " controls: " + z3 + " loop: " + z4 + " x: " + iArr[0] + " y: " + iArr[1] + " width: " + iArr[2] + " height: " + iArr[3] + " sasPosition: " + iArr[4] + " startStyle: " + str2 + " stopStyle: " + str3);
        this.o = iArr;
        g();
        this.u = new SASMRAIDVideoConfig(str, this.k, this.l, z, z2, z4, z3, str2, str3);
        if (!URLUtil.isValidUrl(str)) {
            a("Invalid url!");
            return;
        }
        com.smartadserver.android.library.g.c.a("SASMRAIDVideoController", "request create video view with params:" + this.m + "," + this.n + "," + this.k + "," + this.l);
        if (this.u.e()) {
            try {
                Intent intent = new Intent(this.h.getContext(), SASPlayerActivity.class);
                Bundle bundle = new Bundle();
                bundle.putParcelable("videoConfig", this.u);
                bundle.putInt("closeButtonPosition", this.z);
                bundle.putBoolean("isCloseButtonVisible", this.h.r());
                intent.putExtras(bundle);
                this.h.getContext().startActivity(intent);
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                z5 = true;
            } catch (ActivityNotFoundException e2) {
                com.smartadserver.android.library.g.c.b(e2.getMessage());
            }
            if (z5) {
                this.h.a(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.f.1
                    @Override // java.lang.Runnable
                    public void run() {
                        f.this.q = f.this.n();
                        AudioManager audioManager = (AudioManager) f.this.h.getContext().getSystemService("audio");
                        if (f.this.u.a() || audioManager.getRingerMode() != 2) {
                            f.this.q.a();
                        }
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(f.this.k, f.this.l);
                        layoutParams.setMargins(f.this.m, f.this.n, 0, 0);
                        com.smartadserver.android.library.g.c.a("SASMRAIDVideoController", "create video view with params:" + f.this.m + "," + f.this.n + "," + f.this.k + "," + f.this.l);
                        try {
                            MediaPlayer mediaPlayer = new MediaPlayer();
                            mediaPlayer.setDataSource(f.this.u.g());
                            mediaPlayer.release();
                            f.this.q.setVideoPath(f.this.u.g());
                            f.this.q.setOnPreparedListener(f.this.d);
                            f.this.q.setOnErrorListener(f.this.c);
                            f.this.q.setOnCompletionListener(f.this.b);
                            if (f.this.h.k != null) {
                                f.this.h.k.removeView(f.this.i);
                                int i = -1;
                                if (f.this.o.length >= 6 && f.this.o[5] == 0) {
                                    i = 0;
                                }
                                f.this.h.k.addView(f.this.i, i, layoutParams);
                            }
                            f.this.q.setLayoutParams(new RelativeLayout.LayoutParams(f.this.k, f.this.l));
                            f.this.q.setZOrderOnTop(SASAdView.h());
                            f.this.i.addView(f.this.q);
                            f.this.f();
                            f.this.d();
                            f.this.e();
                            f.this.q.a(0, 0, f.this.k, f.this.l);
                        } catch (Exception e3) {
                            f.this.c.onError(null, 0, 0);
                        }
                    }
                });
                return;
            }
            return;
        }
        z5 = false;
        if (z5) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.t = this.q.a(this.h.getContext(), this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.u.b()) {
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.u.d()) {
            this.r = this.q.a(this.h.getContext(), this.i, this.f);
        }
        if (this.u.a() || this.u.d()) {
            this.s = this.q.b(this.h.getContext(), this.i, this.g);
        }
    }

    private void g() {
        int i = 1;
        this.k = c(this.o[2]);
        this.l = c(this.o[3]);
        int[] neededPadding = this.h.getNeededPadding();
        int width = this.h.getWidth() - (neededPadding[0] + neededPadding[2]);
        int height = this.h.getHeight() - (neededPadding[3] + neededPadding[1]);
        float f = this.k / this.l;
        boolean z = ((float) width) / ((float) height) < f;
        if (this.o[4] != -1) {
            this.j = this.o[4];
            if (z) {
                this.k = width;
                this.l = (int) (this.k / f);
                this.m = 0;
            } else {
                this.l = height;
                this.k = (int) (this.l * f);
                this.m = (width - this.k) / 2;
            }
            int i2 = this.j;
            if (com.smartadserver.android.library.g.c.i(this.h.getContext()) != 0) {
                i = i2;
            }
            switch (i) {
                case 0:
                    this.n = 0;
                    return;
                case 1:
                    this.n = (height - this.l) / 2;
                    return;
                case 2:
                    this.n = height - this.l;
                    return;
                default:
                    return;
            }
        } else if (this.o[0] != -1) {
            this.n = c(this.o[0]);
            this.m = c(this.o[1]);
        }
    }

    private void h() {
        this.h.a("sas_mediaStarted", (ArrayList<String>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.h.a("sas_mediaEnded", (ArrayList<String>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.h.a("sas_mediaPlay", (ArrayList<String>) null);
    }

    private void k() {
        this.h.a("sas_mediaPause", (ArrayList<String>) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f) {
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(String.valueOf(f));
        this.h.a("sas_mediaVolumeChanged", arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.h.a(str, "sas_mediaError");
    }

    private void l() {
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        if (this.r != null) {
            this.r.setImageBitmap(com.smartadserver.android.library.f.a.e);
        }
        this.q.start();
        this.w.post(this.e);
        if (z) {
            this.t.setVisibility(0);
        } else {
            this.t.setVisibility(8);
        }
        if (!this.p) {
            h();
            this.p = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.r != null) {
            this.r.setImageBitmap(com.smartadserver.android.library.f.a.d);
        }
        k();
        this.q.pause();
        this.x = true;
    }

    public void a() {
        if (o()) {
            g();
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.i.getLayoutParams();
            layoutParams.width = this.k;
            layoutParams.height = this.l;
            layoutParams.setMargins(this.m, this.n, 0, 0);
            this.q.a(0, 0, this.k, this.l);
        }
    }

    private int c(int i) {
        return com.smartadserver.android.library.g.c.a(i, this.h.getResources());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SASVideoView n() {
        if (o()) {
            this.q.d();
        }
        this.q = new SASVideoView(this.h.getContext());
        this.q.setOnVideoViewVisibilityChangedListener(this);
        this.v = false;
        this.w = new Handler();
        return this.q;
    }

    public void b() {
        this.x = true;
        if (o()) {
            this.h.a(new Runnable() { // from class: com.smartadserver.android.library.controller.mraid.f.8
                @Override // java.lang.Runnable
                public void run() {
                    if (f.this.r != null) {
                        f.this.i.removeView(f.this.r);
                    }
                    if (f.this.s != null) {
                        f.this.i.removeView(f.this.s);
                    }
                    if (f.this.t != null) {
                        f.this.i.removeView(f.this.t);
                    }
                    f.this.q.d();
                }
            });
        }
    }

    @Override // com.smartadserver.android.library.ui.SASVideoView.a
    public void a(int i) {
        if (i == 8) {
            this.v = true;
            this.x = true;
        } else if (i == 0 && this.v) {
            this.v = false;
            this.q.seekTo(this.y);
            if (this.u.b()) {
                l();
            } else {
                m();
            }
        }
    }

    public void b(int i) {
        this.z = i;
    }

    public void c() {
        if (o()) {
            int currentVolume = this.q.getCurrentVolume();
            a(currentVolume);
            if (currentVolume == 0) {
                this.q.setMutedVolume(5);
                if (this.s != null) {
                    this.s.setImageBitmap(com.smartadserver.android.library.f.a.f);
                    return;
                }
                return;
            }
            this.q.setMutedVolume(-1);
            if (this.s != null) {
                this.s.setImageBitmap(com.smartadserver.android.library.f.a.g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean o() {
        return this.q != null;
    }
}
