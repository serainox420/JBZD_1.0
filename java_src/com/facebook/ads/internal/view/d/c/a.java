package com.facebook.ads.internal.view.d.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.MediaController;
import com.facebook.ads.AdSettings;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.trackselection.AdaptiveVideoTrackSelection;
import com.google.android.exoplayer2.upstream.i;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.v;
@TargetApi(14)
/* loaded from: classes.dex */
public class a extends TextureView implements TextureView.SurfaceTextureListener, c, d.a, m.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2316a = a.class.getSimpleName();
    private Uri b;
    private String c;
    private e d;
    private Handler e;
    private Surface f;
    private m g;
    private MediaController h;
    private d i;
    private d j;
    private View k;
    private boolean l;
    private boolean m;
    private long n;
    private long o;
    private long p;
    private int q;
    private int r;
    private float s;
    private int t;

    public a(Context context) {
        super(context);
        this.i = d.IDLE;
        this.j = d.IDLE;
        this.l = false;
        this.m = false;
        this.s = 1.0f;
        this.t = -1;
        this.e = new Handler();
    }

    private void c() {
        i iVar = new i();
        this.g = com.google.android.exoplayer2.e.a(getContext(), new com.google.android.exoplayer2.b.c(this.e, new AdaptiveVideoTrackSelection.Factory(iVar)), new com.google.android.exoplayer2.c());
        this.g.a((m.b) this);
        this.g.a((d.a) this);
        this.g.a(false);
        if (this.m) {
            this.h = new MediaController(getContext());
            this.h.setAnchorView(this.k == null ? this : this.k);
            this.h.setMediaPlayer(new MediaController.MediaPlayerControl() { // from class: com.facebook.ads.internal.view.d.c.a.1
                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canPause() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canSeekBackward() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean canSeekForward() {
                    return true;
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getAudioSessionId() {
                    return a.this.g.m();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getBufferPercentage() {
                    return a.this.g.l();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getCurrentPosition() {
                    return a.this.getCurrentPosition();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public int getDuration() {
                    return a.this.getDuration();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public boolean isPlaying() {
                    return a.this.g.b();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void pause() {
                    a.this.pause();
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void seekTo(int i) {
                    a.this.seekTo(i);
                }

                @Override // android.widget.MediaController.MediaPlayerControl
                public void start() {
                    a.this.start();
                }
            });
            this.h.setEnabled(true);
        }
        if (this.c == null || this.c.length() <= 0 || AdSettings.isTestMode(getContext())) {
            this.g.a(new com.google.android.exoplayer2.source.e(this.b, new k(getContext(), v.a(getContext(), "ads"), iVar), new com.google.android.exoplayer2.extractor.c(), null, null));
        }
        setVideoState(d.PREPARING);
        if (isAvailable()) {
            onSurfaceTextureAvailable(getSurfaceTexture(), 0, 0);
        }
    }

    private void d() {
        if (this.f != null) {
            this.f.release();
            this.f = null;
        }
        if (this.g != null) {
            this.g.e();
            this.g = null;
        }
        this.h = null;
        this.l = false;
        setVideoState(d.IDLE);
    }

    private void setVideoState(d dVar) {
        if (dVar != this.i) {
            this.i = dVar;
            if (this.i == d.STARTED) {
                this.l = true;
            }
            if (this.d == null) {
                return;
            }
            this.d.a(dVar);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a() {
        setVideoState(d.PLAYBACK_COMPLETED);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void a(boolean z) {
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void b() {
        setVideoState(d.IDLE);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getCurrentPosition() {
        if (this.g != null) {
            return (int) this.g.j();
        }
        return 0;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public int getDuration() {
        if (this.g == null) {
            return 0;
        }
        return (int) this.g.i();
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public long getInitialBufferTime() {
        return this.o;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public d getState() {
        return this.i;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public d getTargetState() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public float getVolume() {
        return this.s;
    }

    @Override // com.google.android.exoplayer2.d.a
    public void onLoadingChanged(boolean z) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.q, i);
        int defaultSize2 = getDefaultSize(this.r, i2);
        if (this.q > 0 && this.r > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            defaultSize2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.q * defaultSize2 < this.r * size) {
                    defaultSize = (this.q * defaultSize2) / this.r;
                } else if (this.q * defaultSize2 > this.r * size) {
                    defaultSize2 = (this.r * size) / this.q;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                int i3 = (this.r * size) / this.q;
                if (mode2 != Integer.MIN_VALUE || i3 <= defaultSize2) {
                    defaultSize2 = i3;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.q * defaultSize2) / this.r;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i4 = this.q;
                int i5 = this.r;
                if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                    defaultSize2 = i5;
                    defaultSize = i4;
                } else {
                    defaultSize = (this.q * defaultSize2) / this.r;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.r * size) / this.q;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // com.google.android.exoplayer2.d.a
    public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        setVideoState(d.ERROR);
        exoPlaybackException.printStackTrace();
        com.facebook.ads.internal.util.d.a(com.facebook.ads.internal.util.c.a(exoPlaybackException, "[ExoPlayer] Error during playback of ExoPlayer"));
    }

    @Override // com.google.android.exoplayer2.d.a
    public void onPlayerStateChanged(boolean z, int i) {
        switch (i) {
            case 1:
                setVideoState(d.IDLE);
                return;
            case 2:
                if (this.t < 0) {
                    return;
                }
                int i2 = this.t;
                this.t = -1;
                this.d.a(i2, getCurrentPosition());
                return;
            case 3:
                if (this.n != 0) {
                    this.o = System.currentTimeMillis() - this.n;
                }
                setRequestedVolume(this.s);
                if (this.p > 0 && this.p < this.g.i()) {
                    this.g.a(this.p);
                    this.p = 0L;
                }
                if (this.g.j() != 0 && !z && this.l) {
                    setVideoState(d.PAUSED);
                    return;
                } else if (z || this.i == d.PLAYBACK_COMPLETED) {
                    return;
                } else {
                    setVideoState(d.PREPARED);
                    if (this.j != d.STARTED) {
                        return;
                    }
                    start();
                    this.j = d.IDLE;
                    return;
                }
            case 4:
                if (z) {
                    setVideoState(d.PLAYBACK_COMPLETED);
                }
                if (this.g != null) {
                    this.g.a(false);
                    if (!z) {
                        this.g.c();
                    }
                }
                this.l = false;
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.exoplayer2.d.a
    public void onPositionDiscontinuity() {
    }

    @Override // com.google.android.exoplayer2.m.b
    public void onRenderedFirstFrame() {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f = new Surface(surfaceTexture);
        if (this.f == null) {
            this.f = new Surface(surfaceTexture);
        }
        if (this.g == null) {
            return;
        }
        this.g.a(this.f);
        if (this.i != d.PAUSED || this.j == d.PAUSED) {
            return;
        }
        start();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        if (this.f != null) {
            this.f.release();
            this.f = null;
            this.g.a((Surface) null);
        }
        this.j = this.m ? d.STARTED : this.i;
        pause();
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // com.google.android.exoplayer2.d.a
    public void onTimelineChanged(n nVar, Object obj) {
    }

    @Override // com.google.android.exoplayer2.m.b
    public void onVideoSizeChanged(int i, int i2, int i3, float f) {
        this.q = i;
        this.r = i2;
        if (this.q == 0 || this.r == 0) {
            return;
        }
        requestLayout();
    }

    public void onVideoTracksDisabled() {
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void pause() {
        if (this.g != null) {
            this.g.a(false);
        } else {
            setVideoState(d.IDLE);
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void seekTo(int i) {
        if (this.g == null) {
            this.p = i;
            return;
        }
        this.t = getCurrentPosition();
        this.g.a(i);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setControlsAnchorView(View view) {
        this.k = view;
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (a.this.h != null && motionEvent.getAction() == 1) {
                    if (a.this.h.isShowing()) {
                        a.this.h.hide();
                    } else {
                        a.this.h.show();
                    }
                }
                return true;
            }
        });
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setFullScreen(boolean z) {
        this.m = z;
        if (z) {
            setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.d.c.a.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (a.this.h != null && motionEvent.getAction() == 1) {
                        if (a.this.h.isShowing()) {
                            a.this.h.hide();
                        } else {
                            a.this.h.show();
                        }
                    }
                    return true;
                }
            });
        }
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setRequestedVolume(float f) {
        this.s = f;
        if (this.g == null || this.i == d.PREPARING || this.i == d.IDLE) {
            return;
        }
        this.g.a(f);
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoMPD(String str) {
        this.c = str;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setVideoStateChangeListener(e eVar) {
        this.d = eVar;
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void setup(Uri uri) {
        if (this.g != null && this.i != d.PLAYBACK_COMPLETED) {
            d();
        }
        this.b = uri;
        setSurfaceTextureListener(this);
        c();
    }

    @Override // com.facebook.ads.internal.view.d.c.c
    public void start() {
        Log.d("TEST", "Start");
        this.j = d.STARTED;
        if (this.g == null) {
            setup(this.b);
        } else if (this.i != d.PREPARED && this.i != d.PAUSED && this.i != d.PLAYBACK_COMPLETED) {
        } else {
            this.g.a(true);
            setVideoState(d.STARTED);
        }
    }
}
