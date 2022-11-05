package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.widget.VideoView;
import com.facebook.common.util.UriUtil;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.io.IOException;
/* loaded from: classes2.dex */
public class gw extends VideoView {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2753a = gw.class.getSimpleName();
    private static int h = 0;
    public Uri b;
    public int c;
    public b d;
    boolean e;
    public boolean f;
    MediaPlayer.OnPreparedListener g;
    private a i;
    private float j;
    private int k;
    private int l;
    private int m;
    private int n;
    private AudioManager o;
    private MediaPlayer p;
    private MediaPlayer.OnCompletionListener q;
    private MediaPlayer.OnErrorListener r;
    private final kh<ls> s;

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i, int i2);

        void a(String str);

        void a(String str, float f, float f2);

        void a(String str, int i, int i2);

        void b(String str);

        void d(int i);

        void e(int i);

        void m();
    }

    /* loaded from: classes2.dex */
    public enum b {
        STATE_UNKNOWN,
        STATE_INIT,
        STATE_PREPARED,
        STATE_PLAYING,
        STATE_PAUSED,
        STATE_PLAYBACK_COMPLETED,
        STATE_SUSPEND,
        STATE_ERROR
    }

    public gw(Context context, a aVar) {
        super(context);
        this.j = BitmapDescriptorFactory.HUE_RED;
        this.b = null;
        this.c = 0;
        this.k = 0;
        this.l = 0;
        this.m = -1;
        this.n = -1;
        this.d = b.STATE_UNKNOWN;
        this.o = null;
        this.p = null;
        this.e = false;
        this.f = false;
        this.g = new MediaPlayer.OnPreparedListener() { // from class: com.flurry.sdk.gw.1
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                km.a(5, gw.f2753a, "OnPreparedListener: " + gw.this.b);
                gw.this.d = b.STATE_PREPARED;
                int i = gw.this.c;
                gw.this.p = mediaPlayer;
                gw.this.o = (AudioManager) gw.this.getContext().getSystemService("audio");
                int unused = gw.h = gw.this.o.getStreamVolume(3);
                if (gw.this.e) {
                    gw.this.a();
                } else {
                    gw.this.b();
                }
                if (i > 3) {
                    gw.this.seekTo(i);
                } else {
                    gw.this.seekTo(3);
                }
                if (gw.this.i != null && gw.this.b != null) {
                    gw.this.i.a(gw.this.b.toString());
                }
            }
        };
        this.q = new MediaPlayer.OnCompletionListener() { // from class: com.flurry.sdk.gw.2
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                gw.this.d = b.STATE_PLAYBACK_COMPLETED;
                if (gw.this.i != null) {
                    gw.this.i.b(gw.this.b.toString());
                }
            }
        };
        this.r = new MediaPlayer.OnErrorListener() { // from class: com.flurry.sdk.gw.3
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                km.a(5, gw.f2753a, "Error: " + gw.this.b + " framework_err " + i + " impl_err " + i2);
                gw.this.d = b.STATE_ERROR;
                if (gw.this.i != null) {
                    a aVar2 = gw.this.i;
                    String uri = gw.this.b.toString();
                    int i3 = bb.kVideoPlaybackError.z;
                    aVar2.a(uri, i, i2);
                    return true;
                }
                return true;
            }
        };
        this.s = new kh<ls>() { // from class: com.flurry.sdk.gw.4
            @Override // com.flurry.sdk.kh
            public final /* synthetic */ void a(ls lsVar) {
                if (gw.this.isPlaying() && gw.this.b != null) {
                    try {
                        int duration = gw.this.getDuration();
                        gw.this.k = gw.this.getCurrentPosition();
                        if (duration >= 0 && gw.this.i != null) {
                            if (gw.this.k - gw.this.j > 200.0f || gw.this.j <= 300.0f) {
                                gw.this.j = gw.this.k;
                                gw.this.i.a(gw.this.b.toString(), duration, gw.this.k);
                            }
                        }
                    } catch (Exception e) {
                        km.a(gw.f2753a, "Video view progress error: " + e.getMessage());
                    }
                }
            }
        };
        this.i = aVar;
        this.o = (AudioManager) getContext().getSystemService("audio");
        if (this.o != null) {
            this.l = this.o.getStreamVolume(3);
        }
        this.d = b.STATE_INIT;
        this.i = aVar;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        requestLayout();
        lt.a().a(this.s);
        if (getHolder() == null) {
            return;
        }
        getHolder().setType(3);
    }

    @Override // android.widget.VideoView
    public void setVideoPath(String str) {
        super.setVideoPath(str);
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void pause() {
        super.pause();
        this.d = b.STATE_PAUSED;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        this.d = b.STATE_PLAYING;
    }

    @Override // android.widget.VideoView
    public void resume() {
        super.resume();
        this.d = b.STATE_PLAYING;
    }

    @Override // android.widget.VideoView
    public void suspend() {
        super.suspend();
        this.d = b.STATE_SUSPEND;
    }

    public final void a() {
        if (this.p != null) {
            h = this.o.getStreamVolume(3);
            this.p.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        this.e = true;
    }

    public final void b() {
        int streamVolume;
        if (this.o != null && (streamVolume = this.o.getStreamVolume(3)) > 0) {
            h = streamVolume;
        }
        if (this.p != null) {
            this.p.setVolume(1.0f, 1.0f);
        }
        this.e = false;
    }

    public int getVolume() {
        return this.o != null ? this.o.getStreamVolume(3) : h;
    }

    public final boolean c() {
        return (this.d != null) & this.d.equals(b.STATE_PLAYBACK_COMPLETED);
    }

    public final boolean d() {
        return (this.d != null) & this.d.equals(b.STATE_PAUSED);
    }

    public int getVideoLength() {
        return getDuration();
    }

    public int getOffsetStartTime() {
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        setFocusable(false);
        setFocusableInTouchMode(false);
        if (getContext() != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE);
            getContext().sendBroadcast(intent);
        }
        pause();
        this.p = null;
        lt.a().b(this.s);
    }

    public final void f() {
        pause();
        e();
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            if (this.b == null) {
                return;
            }
            setOnPreparedListener(this.g);
            setOnCompletionListener(this.q);
            setOnErrorListener(this.r);
            pause();
            if ((this.b == null || this.b.getScheme() == null || this.b.getScheme().equalsIgnoreCase(UriUtil.LOCAL_FILE_SCHEME)) ? false : true) {
                setVideoURI(this.b);
            } else {
                setVideoPath(this.b.getPath());
            }
            requestFocus();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        if (this.k != Integer.MIN_VALUE) {
            this.i.e(this.k);
        }
        super.onDetachedFromWindow();
        pause();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z && this.k != Integer.MIN_VALUE) {
            this.i.d(this.k);
            this.i.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void finalize() throws Throwable {
        super.finalize();
        lt.a().b(this.s);
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return super.isPlaying();
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        try {
            int currentPosition = super.getCurrentPosition();
            if (currentPosition != 0) {
                return currentPosition;
            }
            return Integer.MIN_VALUE;
        } catch (Exception e) {
            km.a(f2753a, "MediaPlayer current position issue: " + e.getMessage());
            return Integer.MIN_VALUE;
        }
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.i != null && size != this.m && size2 != this.n) {
            this.m = size;
            this.n = size2;
            this.i.a(size, size2);
        }
    }

    @Override // android.widget.VideoView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f = true;
        return super.onTouchEvent(motionEvent);
    }
}
