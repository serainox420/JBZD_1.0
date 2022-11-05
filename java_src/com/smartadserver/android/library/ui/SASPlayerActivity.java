package com.smartadserver.android.library.ui;

import android.app.Activity;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.controller.mraid.SASMRAIDVideoConfig;
/* loaded from: classes3.dex */
public class SASPlayerActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    View.OnClickListener f5530a = new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SASPlayerActivity.this.g.stopPlayback();
            SASPlayerActivity.this.finish();
        }
    };
    View.OnClickListener b = new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SASPlayerActivity.this.g.isPlaying()) {
                SASPlayerActivity.this.e();
            } else {
                SASPlayerActivity.this.d();
            }
        }
    };
    View.OnClickListener c = new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (SASPlayerActivity.this.g.c()) {
                SASPlayerActivity.this.g.b();
                if (SASPlayerActivity.this.i != null) {
                    SASPlayerActivity.this.i.setImageBitmap(com.smartadserver.android.library.f.a.g);
                    return;
                }
                return;
            }
            SASPlayerActivity.this.g.a();
            if (SASPlayerActivity.this.i != null) {
                SASPlayerActivity.this.i.setImageBitmap(com.smartadserver.android.library.f.a.f);
            }
        }
    };
    public MediaPlayer.OnCompletionListener d = new MediaPlayer.OnCompletionListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.7
        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (SASPlayerActivity.this.h != null) {
                SASPlayerActivity.this.h.setImageBitmap(com.smartadserver.android.library.f.a.d);
            }
            if (!SASPlayerActivity.this.j.f()) {
                if (SASPlayerActivity.this.j.c()) {
                    SASPlayerActivity.this.d();
                    return;
                }
                return;
            }
            SASPlayerActivity.this.finish();
        }
    };
    private RelativeLayout e;
    private RelativeLayout.LayoutParams f;
    private SASVideoView g;
    private ImageView h;
    private ImageView i;
    private SASMRAIDVideoConfig j;
    private ProgressBar k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        Bundle extras = getIntent().getExtras();
        this.q = extras.getBoolean("isCloseButtonVisible");
        this.e = new RelativeLayout(this) { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.1
            @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
            protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
                super.onLayout(z, i, i2, i3, i4);
                if (SASPlayerActivity.this.g != null) {
                    SASPlayerActivity.this.f();
                    SASPlayerActivity.this.g.a(SASPlayerActivity.this.n, SASPlayerActivity.this.o, SASPlayerActivity.this.l, SASPlayerActivity.this.m);
                }
            }
        };
        this.e.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.e.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.j = (SASMRAIDVideoConfig) extras.getParcelable("videoConfig");
        this.g = new SASVideoView(this);
        this.g.setVideoPath(this.j.g());
        this.g.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                SASPlayerActivity.this.finish();
                return true;
            }
        });
        this.g.setOnCompletionListener(this.d);
        this.g.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.smartadserver.android.library.ui.SASPlayerActivity.3
            @Override // android.media.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                com.smartadserver.android.library.g.c.a("SASPlayerActivity", "onPrepared");
                SASPlayerActivity.this.k.setVisibility(8);
                SASPlayerActivity.this.c();
            }
        });
        AudioManager audioManager = (AudioManager) getSystemService("audio");
        if (this.j.a() || audioManager.getRingerMode() != 2) {
            this.g.a();
        }
        this.f = new RelativeLayout.LayoutParams(-1, -1);
        this.f.addRule(13);
        this.e.addView(this.g, this.f);
        setContentView(this.e);
        f();
        this.k = this.g.a(this, this.e);
        this.k.setVisibility(8);
        b();
        if (this.q) {
            a();
        }
    }

    private void a() {
        ImageView a2 = SASVideoView.a(getBaseContext(), com.smartadserver.android.library.f.a.h, 11, 10);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) a2.getLayoutParams();
        this.e.addView(a2);
        a2.setOnClickListener(this.f5530a);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.p = this.g.getCurrentPosition();
        this.g.stopPlayback();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.k.setVisibility(0);
        if (this.j.b()) {
            d();
        } else {
            e();
        }
        this.g.seekTo(this.p);
    }

    private void b() {
        if (this.j.d()) {
            this.h = this.g.a(this, this.e, this.b);
        }
        if (this.j.a() || this.j.d()) {
            this.i = this.g.b(this, this.e, this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.j.b()) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.h != null) {
            this.h.setImageBitmap(com.smartadserver.android.library.f.a.e);
        }
        this.g.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.h != null) {
            this.h.setImageBitmap(com.smartadserver.android.library.f.a.d);
        }
        this.g.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        if (((float) width) / ((float) height) < this.j.h()) {
            this.l = width;
            this.m = (int) (this.l / this.j.h());
            this.n = 0;
        } else {
            this.m = height;
            this.l = (int) (this.m * this.j.h());
            this.n = (width - this.l) / 2;
        }
        this.o = (height - this.m) / 2;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.g.getCurrentVolume() == 0) {
            this.g.setMutedVolume(5);
            if (this.i != null) {
                this.i.setImageBitmap(com.smartadserver.android.library.f.a.g);
            }
        } else {
            this.g.setMutedVolume(-1);
            if (this.i != null) {
                this.i.setImageBitmap(com.smartadserver.android.library.f.a.f);
            }
        }
        return super.onKeyUp(i, keyEvent);
    }
}
