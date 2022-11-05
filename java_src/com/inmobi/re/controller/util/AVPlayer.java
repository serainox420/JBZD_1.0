package com.inmobi.re.controller.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.VideoView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class AVPlayer extends VideoView implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    public static final int MINIMAL_LAYOUT_PARAM = 1;
    private static String f = "play";
    private static String g = SASNativeVideoAdElement.TRACKING_EVENT_NAME_PAUSE;
    private static String h = "ended";
    private static int i = -1;
    private static int j = 2;
    private static String k = "Loading. Please Wait..";

    /* renamed from: a  reason: collision with root package name */
    private JSController.PlayerProperties f3976a;
    private AVPlayerListener b;
    private String c;
    private int d;
    private RelativeLayout e;
    private boolean l;
    private boolean m;
    private IMWebView n;
    private Bitmap o;
    private int p;
    public boolean pseudoPause;
    private int q;
    private playerState r;
    private MediaPlayer s;
    private boolean t;
    private ViewGroup u;
    private JSController.Dimensions v;
    private a w;

    /* loaded from: classes2.dex */
    public enum playerState {
        INIT,
        PLAYING,
        PAUSED,
        HIDDEN,
        SHOWING,
        COMPLETED,
        RELEASED
    }

    public JSController.PlayerProperties getPlayProperties() {
        return this.f3976a;
    }

    private AVPlayer(Context context) {
        super(context);
        this.pseudoPause = false;
        this.d = 0;
        this.l = false;
        this.m = false;
        this.o = null;
        this.q = -1;
        this.w = new a(this);
    }

    public AVPlayer(Context context, IMWebView iMWebView) {
        this(context);
        setZOrderOnTop(true);
        this.r = playerState.INIT;
        setDrawingCacheEnabled(true);
        this.n = iMWebView;
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.p = 100;
    }

    public void setPlayData(JSController.PlayerProperties playerProperties, String str) {
        this.f3976a = playerProperties;
        this.c = str;
        if (playerProperties.audioMuted) {
            this.t = true;
        }
        this.c = this.c.trim();
        this.c = a(this.c);
        if (this.o == null) {
            this.o = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
            if (Build.VERSION.SDK_INT >= 8) {
                try {
                    this.o = WrapperFunctions.getVideoBitmap(this.c);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to get video bitmap");
                }
            }
        }
    }

    private void a() {
        if (this.f3976a.showControl()) {
            MediaController mediaController = new MediaController(getContext());
            setMediaController(mediaController);
            mediaController.setAnchorView(this);
        }
    }

    private void b() {
        this.r = playerState.INIT;
        e();
        setVideoPath(this.c);
        a();
        setOnCompletionListener(this);
        setOnErrorListener(this);
        setOnPreparedListener(this);
    }

    private static String a(String str) {
        try {
            byte[] bytes = str.getBytes();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < bytes.length; i2++) {
                if ((bytes[i2] & 128) > 0) {
                    stringBuffer.append("%" + InternalSDKUtil.byteToHex(bytes[i2]));
                } else {
                    stringBuffer.append((char) bytes[i2]);
                }
            }
            return new String(stringBuffer.toString().getBytes(), "ISO-8859-1");
        } catch (Exception e) {
            return null;
        }
    }

    private void c() {
        if (this.r == playerState.SHOWING) {
            this.r = this.m ? playerState.COMPLETED : playerState.PAUSED;
        } else if (this.f3976a.isAutoPlay() && this.r == playerState.INIT) {
            if (this.f3976a.doMute()) {
                mute();
            }
            start();
        }
    }

    public void play() {
        b();
    }

    public void setListener(AVPlayerListener aVPlayerListener) {
        this.b = aVPlayerListener;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onCompletion");
        this.r = playerState.COMPLETED;
        this.m = true;
        b(h);
        i();
        try {
            if (this.f3976a.doLoop()) {
                synchronized (this) {
                    if (!j()) {
                        this.d = 0;
                        start();
                    }
                }
            } else if (this.f3976a.exitOnComplete()) {
                releasePlayer(false);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAvplayer onCompletion exception ", e);
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> Player error : " + i2);
        f();
        releasePlayer(false);
        if (this.b != null) {
            this.b.onError(this);
        }
        int i4 = i;
        if (i2 == 100) {
            i4 = j;
        }
        a(i4);
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.s = mediaPlayer;
        super.seekTo(this.d * 1000);
        if (this.t) {
            try {
                this.s.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to set volume");
            }
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onPrepared");
        f();
        if (this.b != null) {
            this.b.onPrepared(this);
        }
        this.l = true;
        c();
    }

    private void d() {
        try {
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
            ViewGroup viewGroup2 = (ViewGroup) this.u.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.u);
            }
            setBackgroundColor(0);
            setBackgroundDrawable(null);
            setBackGroundLayout(null);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to remove view");
        }
    }

    public void releasePlayer(boolean z) {
        if (this.n != null) {
            this.n.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.controller.util.AVPlayer.1
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return false;
                }
            });
        }
        synchronized (this) {
            if (!k()) {
                this.r = playerState.RELEASED;
                a(z, this.q != -1 ? this.q : Math.round(getCurrentPosition() / 1000));
                i();
                stopPlayback();
                super.setMediaController(null);
                d();
                if (this.b != null) {
                    this.b.onComplete(this);
                    this.b = null;
                }
            }
        }
    }

    private void e() {
        this.e = new RelativeLayout(getContext());
        this.e.setLayoutParams(getLayoutParams());
        this.e.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        TextView textView = new TextView(getContext());
        textView.setText(k);
        textView.setTextColor(-1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.e.addView(textView, layoutParams);
        ((ViewGroup) getParent()).addView(this.e);
    }

    private void f() {
        if (this.e != null) {
            ((ViewGroup) getParent()).removeView(this.e);
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public synchronized void start() {
        if (this.n != null && !m()) {
            this.n.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.re.controller.util.AVPlayer.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return motionEvent.getAction() == 2;
                }
            });
        }
        if (this.r == null || this.r != playerState.PLAYING) {
            seekPlayer(this.d * 1000);
            super.start();
            this.r = playerState.PLAYING;
            this.m = false;
            h();
            Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> start playing");
            if (this.l) {
                b(f);
            }
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public synchronized void pause() {
        if (this.r == null || this.r != playerState.PAUSED) {
            super.pause();
            this.r = playerState.PAUSED;
            i();
            Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> pause");
            b(g);
        }
    }

    private void b(String str) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTrackingEvent('" + str + "','" + this.f3976a.id + "');");
        }
    }

    private void a(int i2) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaErrorEvent('" + this.f3976a.id + "'," + i2 + ");");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, int i3) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaTimeUpdateEvent('" + this.f3976a.id + "'," + i2 + "," + i3 + ");");
        }
    }

    private void a(boolean z, int i2) {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaCloseEvent('" + this.f3976a.id + "'," + z + "," + i2 + ");");
            this.n.mediaPlayerReleased(this);
        }
    }

    private void g() {
        if (this.n != null) {
            this.n.injectJavaScript("window.mraidview.fireMediaVolumeChangeEvent('" + this.f3976a.id + "'," + getVolume() + "," + isMediaMuted() + ");");
        }
    }

    private void h() {
        this.w.sendEmptyMessage(1001);
    }

    private void i() {
        this.w.removeMessages(1001);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<AVPlayer> f3979a;

        public a(AVPlayer aVPlayer) {
            this.f3979a = new WeakReference<>(aVPlayer);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AVPlayer aVPlayer = this.f3979a.get();
            if (aVPlayer != null) {
                switch (message.what) {
                    case 1001:
                        if (aVPlayer.l()) {
                            int round = Math.round(aVPlayer.getCurrentPosition() / 1000);
                            int round2 = Math.round(aVPlayer.getDuration() / 1000);
                            if (aVPlayer.q != round) {
                                aVPlayer.a(round, round2);
                                aVPlayer.q = round;
                                aVPlayer.d = round;
                            }
                            sendEmptyMessageDelayed(1001, 1000L);
                            break;
                        } else {
                            return;
                        }
                }
            }
            super.handleMessage(message);
        }
    }

    public String getPropertyID() {
        return this.f3976a.id;
    }

    public boolean isInlineVideo() {
        return !this.f3976a.isFullScreen();
    }

    private boolean j() {
        return this.r == playerState.PAUSED || this.r == playerState.HIDDEN;
    }

    private boolean k() {
        return this.r == playerState.RELEASED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l() {
        return this.r == playerState.PLAYING;
    }

    public String getMediaURL() {
        return this.c;
    }

    public playerState getState() {
        return this.r;
    }

    private void b(int i2) {
        if (this.s != null && this.t) {
            this.t = false;
        }
        this.p = i2;
        float log = 1.0f - ((float) (Math.log(101 - i2) / Math.log(101.0d)));
        try {
            this.s.setVolume(log, log);
        } catch (Exception e) {
            this.n.raiseError("Player has been released. Cannot set the volume.", "setVolume");
        }
        g();
    }

    public void mute() {
        if (this.s != null && !this.t) {
            this.t = true;
            try {
                this.s.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } catch (Exception e) {
                Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to set volume (mute)");
            }
            g();
        }
    }

    public void unMute() {
        if (this.s != null && this.t) {
            b(this.p);
        }
    }

    public boolean isMediaMuted() {
        return this.t;
    }

    public void setVolume(int i2) {
        if (i2 != this.p && this.r != playerState.RELEASED) {
            b(i2);
        }
    }

    public int getVolume() {
        return this.p;
    }

    public void hide() {
        try {
            setVisibility(4);
            this.u.setVisibility(4);
            this.r = playerState.HIDDEN;
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: unable to hide video");
        }
    }

    public void show() {
        this.r = playerState.SHOWING;
        setVisibility(0);
    }

    public void seekPlayer(int i2) {
        if (i2 <= getDuration()) {
            seekTo(i2);
        }
    }

    public void setBackGroundLayout(ViewGroup viewGroup) {
        this.u = viewGroup;
    }

    public ViewGroup getBackGroundLayout() {
        return this.u;
    }

    public JSController.PlayerProperties getProperties() {
        return this.f3976a;
    }

    public JSController.Dimensions getPlayDimensions() {
        return this.v;
    }

    public void setPlayDimensions(JSController.Dimensions dimensions) {
        this.v = dimensions;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        try {
            super.onWindowVisibilityChanged(i2);
            if (Build.VERSION.SDK_INT < 8) {
                onIMVisibilityChanged(i2 == 0);
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMAVPlayer: onWindowVisibilityChanged: Something went wrong");
        }
    }

    private boolean m() {
        return getLayoutParams().width == 1 && getLayoutParams().height == 1;
    }

    public void onIMVisibilityChanged(boolean z) {
        Log.debug(Constants.RENDERING_LOG_TAG, "AVPlayer-> onIMVisibilityChanged: " + z);
        if (z && !this.pseudoPause) {
            setBackgroundDrawable(new BitmapDrawable(this.o));
        }
        if (z && this.pseudoPause) {
            this.pseudoPause = false;
            play();
        }
        if (!z && this.r == playerState.PLAYING) {
            this.pseudoPause = true;
            pause();
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i2) {
        onIMVisibilityChanged(i2 == 0);
    }

    public boolean getAutoPlay() {
        if (this.f3976a != null) {
            return this.f3976a.autoPlay;
        }
        return false;
    }

    public void setAutoPlay(boolean z) {
        if (this.f3976a != null) {
            this.f3976a.autoPlay = z;
        }
    }

    public boolean isPrepared() {
        return this.l;
    }
}
