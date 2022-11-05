package com.millennialmedia.internal.video;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.moat.analytics.mobile.aol.MoatFactory;
import com.moat.analytics.mobile.aol.NativeVideoTracker;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class MMVideoView extends RelativeLayout implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4245a = MMVideoView.class.getSimpleName();
    private Uri b;
    private int c;
    private int d;
    private MediaPlayer e;
    private VideoSurfaceView f;
    private SurfaceHolder g;
    private ThreadUtils.ScheduledRunnable h;
    private boolean i;
    private int j;
    private MMVideoViewListener k;
    private MediaController l;
    private MoatFactory m;
    private NativeVideoTracker n;
    private Map<String, String> o;
    private volatile int p;
    private volatile int q;
    private SurfaceHolder.Callback r;

    /* loaded from: classes3.dex */
    public interface MMVideoViewListener {
        void onBufferingUpdate(MMVideoView mMVideoView, int i);

        void onComplete(MMVideoView mMVideoView);

        void onError(MMVideoView mMVideoView);

        void onMuted(MMVideoView mMVideoView);

        void onPause(MMVideoView mMVideoView);

        void onPrepared(MMVideoView mMVideoView);

        void onProgress(MMVideoView mMVideoView, int i);

        void onReadyToStart(MMVideoView mMVideoView);

        void onSeek(MMVideoView mMVideoView);

        void onStart(MMVideoView mMVideoView);

        void onStop(MMVideoView mMVideoView);

        void onUnmuted(MMVideoView mMVideoView);
    }

    /* loaded from: classes3.dex */
    public interface MediaController {
        void onComplete();

        void onMuted();

        void onPause();

        void onProgress(int i);

        void onStart();

        void onUnmuted();

        void setDuration(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class MMVideoViewInfo extends View.BaseSavedState {
        public static final Parcelable.Creator<MMVideoViewInfo> CREATOR = new Parcelable.Creator<MMVideoViewInfo>() { // from class: com.millennialmedia.internal.video.MMVideoView.MMVideoViewInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            /* renamed from: createFromParcel */
            public MMVideoViewInfo mo548createFromParcel(Parcel parcel) {
                return new MMVideoViewInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            /* renamed from: newArray */
            public MMVideoViewInfo[] mo549newArray(int i) {
                return new MMVideoViewInfo[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        int f4268a;
        int b;
        int c;
        boolean d;
        String e;

        public MMVideoViewInfo(Parcelable parcelable) {
            super(parcelable);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private MMVideoViewInfo(Parcel parcel) {
            super(parcel);
            boolean z = true;
            this.f4268a = parcel.readInt();
            this.b = parcel.readInt();
            this.c = parcel.readInt();
            this.d = parcel.readInt() != 1 ? false : z;
            this.e = parcel.readString();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4268a);
            parcel.writeInt(this.b);
            parcel.writeInt(this.c);
            parcel.writeInt(this.d ? 1 : 0);
            parcel.writeString(this.e);
        }
    }

    /* loaded from: classes3.dex */
    private class VideoSurfaceView extends SurfaceView {
        VideoSurfaceView(Context context) {
            super(context);
        }

        @Override // android.view.SurfaceView, android.view.View
        protected void onMeasure(int i, int i2) {
            int defaultSize = getDefaultSize(MMVideoView.this.c, i);
            int defaultSize2 = getDefaultSize(MMVideoView.this.d, i2);
            if (MMVideoView.this.c > 0 && MMVideoView.this.d > 0) {
                int mode = View.MeasureSpec.getMode(i);
                int size = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                defaultSize2 = View.MeasureSpec.getSize(i2);
                if (mode == 1073741824 && mode2 == 1073741824) {
                    if (MMVideoView.this.c * defaultSize2 < MMVideoView.this.d * size) {
                        defaultSize = (MMVideoView.this.c * defaultSize2) / MMVideoView.this.d;
                    } else if (MMVideoView.this.c * defaultSize2 > MMVideoView.this.d * size) {
                        defaultSize2 = (MMVideoView.this.d * size) / MMVideoView.this.c;
                        defaultSize = size;
                    } else {
                        defaultSize = size;
                    }
                } else if (mode == 1073741824) {
                    int i3 = (MMVideoView.this.d * size) / MMVideoView.this.c;
                    if (mode2 != Integer.MIN_VALUE || i3 <= defaultSize2) {
                        defaultSize2 = i3;
                        defaultSize = size;
                    } else {
                        defaultSize = size;
                    }
                } else if (mode2 == 1073741824) {
                    defaultSize = (MMVideoView.this.c * defaultSize2) / MMVideoView.this.d;
                    if (mode == Integer.MIN_VALUE && defaultSize > size) {
                        defaultSize = size;
                    }
                } else {
                    int i4 = MMVideoView.this.c;
                    int i5 = MMVideoView.this.d;
                    if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                        defaultSize2 = i5;
                        defaultSize = i4;
                    } else {
                        defaultSize = (MMVideoView.this.c * defaultSize2) / MMVideoView.this.d;
                    }
                    if (mode == Integer.MIN_VALUE && defaultSize > size) {
                        defaultSize2 = (MMVideoView.this.d * size) / MMVideoView.this.c;
                        defaultSize = size;
                    }
                }
            }
            setMeasuredDimension(defaultSize, defaultSize2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ProgressRunnable implements Runnable {
        private ProgressRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this) {
                if (MMVideoView.this.q != 4) {
                    MMVideoView.this.h = null;
                } else {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.ProgressRunnable.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMVideoView.this.k != null) {
                                MMVideoView.this.k.onProgress(MMVideoView.this, MMVideoView.this.getCurrentPosition());
                            }
                            if (MMVideoView.this.l != null) {
                                MMVideoView.this.l.onProgress(MMVideoView.this.getCurrentPosition());
                            }
                            MMVideoView.this.h = ThreadUtils.runOnWorkerThreadDelayed(new ProgressRunnable(), 100L);
                        }
                    });
                }
            }
        }
    }

    public MMVideoView(Context context, boolean z, boolean z2, Map<String, String> map, MMVideoViewListener mMVideoViewListener) {
        super(new MutableContextWrapper(context));
        this.j = 0;
        this.q = 0;
        this.r = new SurfaceHolder.Callback() { // from class: com.millennialmedia.internal.video.MMVideoView.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                MMVideoView.this.g = surfaceHolder;
                if (MMVideoView.this.e != null) {
                    MMVideoView.this.e.setDisplay(MMVideoView.this.g);
                }
                if (MMVideoView.this.q == 2) {
                    MMVideoView.this.a();
                    MMVideoView.this.q = 3;
                    if (MMVideoView.this.c != 0 && MMVideoView.this.d != 0) {
                        MMVideoView.this.g.setFixedSize(MMVideoView.this.c, MMVideoView.this.d);
                    }
                    if (MMVideoView.this.k != null && MMVideoView.this.p != 4) {
                        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MMVideoView.this.k.onReadyToStart(MMVideoView.this);
                            }
                        });
                    }
                    if (MMVideoView.this.p == 4) {
                        MMVideoView.this.start();
                    }
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (MMVideoView.this.e != null && MMVideoView.this.p == 4) {
                    MMVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                MMVideoView.this.g = null;
                if (MMVideoView.this.e != null) {
                    MMVideoView.this.e.setDisplay(null);
                }
            }
        };
        if (map == null) {
            this.o = Collections.emptyMap();
        } else {
            this.o = map;
        }
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.i = z2;
        this.k = mMVideoViewListener;
        if (z) {
            this.p = 4;
        }
        setBackgroundColor(getResources().getColor(17170444));
        this.f = new VideoSurfaceView(mutableContextWrapper);
        this.f.getHolder().addCallback(this.r);
        this.f.getHolder().setType(3);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView(this.f, layoutParams);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MMVideoViewInfo mMVideoViewInfo = (MMVideoViewInfo) parcelable;
        super.onRestoreInstanceState(mMVideoViewInfo.getSuperState());
        this.p = mMVideoViewInfo.b;
        this.j = mMVideoViewInfo.c;
        this.i = mMVideoViewInfo.d;
        if (mMVideoViewInfo.f4268a == 4 || mMVideoViewInfo.b == 4) {
            start();
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        MMVideoViewInfo mMVideoViewInfo = new MMVideoViewInfo(super.onSaveInstanceState());
        mMVideoViewInfo.f4268a = this.q;
        mMVideoViewInfo.b = this.p;
        mMVideoViewInfo.c = getCurrentPosition();
        mMVideoViewInfo.d = this.i;
        mMVideoViewInfo.e = this.b.toString();
        return mMVideoViewInfo;
    }

    public void setVideoURI(Uri uri) {
        this.b = uri;
        if (uri != null) {
            if (this.h != null) {
                synchronized (this.h) {
                    this.h.cancel();
                    this.q = 0;
                }
            }
            if (this.e != null) {
                this.e.setDisplay(null);
                this.e.reset();
                this.e.release();
                this.q = 0;
            }
            this.e = new MediaPlayer();
            if (this.g != null) {
                this.e.setDisplay(this.g);
            }
            this.e.setOnPreparedListener(this);
            this.e.setOnCompletionListener(this);
            this.e.setOnErrorListener(this);
            this.e.setOnBufferingUpdateListener(this);
            this.e.setOnSeekCompleteListener(this);
            this.e.setOnInfoListener(this);
            this.e.setOnVideoSizeChangedListener(this);
            try {
                this.e.setDataSource(getContext(), uri, (Map<String, String>) null);
                this.q = 1;
                this.e.prepareAsync();
            } catch (IOException e) {
                MMLog.e(f4245a, "An error occurred preparing the VideoPlayer.", e);
                this.q = 7;
                this.p = 7;
                if (this.k != null) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.2
                        @Override // java.lang.Runnable
                        public void run() {
                            MMVideoView.this.k.onError(MMVideoView.this);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
        if (!this.i) {
            audioManager.requestAudioFocus(null, 3, 3);
        } else {
            audioManager.abandonAudioFocus(null);
        }
    }

    private void b() {
        ((AudioManager) getContext().getSystemService("audio")).abandonAudioFocus(null);
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setMediaController(MediaController mediaController) {
        this.l = mediaController;
    }

    public void restart() {
        if (Build.VERSION.SDK_INT <= 21) {
            if (this.b != null) {
                setVideoURI(this.b);
            } else {
                return;
            }
        } else {
            seekTo(0);
        }
        start();
    }

    public void start() {
        if (c() && this.q != 4) {
            if (this.i) {
                mute();
            }
            if (this.j != 0) {
                this.e.seekTo(this.j);
                this.j = 0;
            }
            if (!this.o.isEmpty() && this.m != null && this.n == null) {
                this.n = this.m.createNativeVideoTracker("millennialmedianativeapp775281030677");
                this.n.trackVideoAd(this.o, this.e, this);
                MMLog.v(f4245a, "Moat video tracking enabled.");
            }
            this.e.start();
            this.q = 4;
            this.p = 4;
            if (this.k != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.3
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.k.onStart(MMVideoView.this);
                    }
                });
            }
            if (this.l != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.l.onStart();
                    }
                });
            }
            if (this.h != null) {
                this.h.cancel();
            }
            this.h = ThreadUtils.runOnWorkerThreadDelayed(new ProgressRunnable(), 100L);
            return;
        }
        this.p = 4;
    }

    public void stop() {
        b();
        if (c()) {
            if (this.e.isPlaying() || this.q == 5) {
                this.e.stop();
                if (this.k != null) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.5
                        @Override // java.lang.Runnable
                        public void run() {
                            MMVideoView.this.k.onStop(MMVideoView.this);
                        }
                    });
                }
                this.q = 0;
                this.p = 0;
            }
        }
    }

    public void pause() {
        if (c() && this.e.isPlaying()) {
            this.e.pause();
            if (this.k != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.6
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.k.onPause(MMVideoView.this);
                    }
                });
            }
            if (this.l != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.7
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.l.onPause();
                    }
                });
            }
            this.q = 5;
            this.p = 5;
        }
    }

    public void seekTo(int i) {
        if (c()) {
            this.e.seekTo(i);
            this.j = 0;
            return;
        }
        this.j = i;
    }

    public void mute() {
        this.i = true;
        this.e.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        a();
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.8
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onMuted(MMVideoView.this);
                }
            });
        }
        if (this.l != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.9
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.l.onMuted();
                }
            });
        }
    }

    public void unmute() {
        this.i = false;
        this.e.setVolume(1.0f, 1.0f);
        a();
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.10
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onUnmuted(MMVideoView.this);
                }
            });
        }
        if (this.l != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.11
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.l.onUnmuted();
                }
            });
        }
    }

    public int getCurrentPosition() {
        if (c()) {
            return this.e.getCurrentPosition();
        }
        return -1;
    }

    public int getDuration() {
        if (c() || this.q == 2) {
            return this.e.getDuration();
        }
        return -1;
    }

    public void setVideoViewListener(MMVideoViewListener mMVideoViewListener) {
        this.k = mMVideoViewListener;
    }

    public boolean isPlaying() {
        return c() && this.e.isPlaying();
    }

    public void videoSkipped() {
        if (this.n != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", "AdSkipped");
            this.n.dispatchEvent(hashMap);
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.q = 6;
        this.p = 6;
        if (this.n != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("type", "AdVideoComplete");
            this.n.dispatchEvent(hashMap);
        }
        if (this.h != null) {
            this.h.cancel();
            this.h = null;
        }
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.12
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onProgress(MMVideoView.this, MMVideoView.this.getDuration());
                    MMVideoView.this.k.onComplete(MMVideoView.this);
                }
            });
        }
        if (this.l != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.13
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.l.onComplete();
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.q = 7;
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.14
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onError(MMVideoView.this);
                }
            });
            return true;
        }
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        if (this.g != null) {
            a();
            this.q = 3;
            if (this.p == 4) {
                if (this.k != null) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.15
                        @Override // java.lang.Runnable
                        public void run() {
                            MMVideoView.this.k.onPrepared(MMVideoView.this);
                        }
                    });
                }
                start();
            } else if (this.k != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.16
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.k.onReadyToStart(MMVideoView.this);
                    }
                });
            }
        } else {
            this.q = 2;
            if (this.k != null) {
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.17
                    @Override // java.lang.Runnable
                    public void run() {
                        MMVideoView.this.k.onPrepared(MMVideoView.this);
                    }
                });
            }
        }
        if (this.l != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.18
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.l.setDuration(MMVideoView.this.getDuration());
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, final int i) {
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.19
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onBufferingUpdate(MMVideoView.this, i);
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        if (this.k != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.20
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.k.onSeek(MMVideoView.this);
                }
            });
        }
        if (this.l != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.MMVideoView.21
                @Override // java.lang.Runnable
                public void run() {
                    MMVideoView.this.l.onProgress(MMVideoView.this.getCurrentPosition());
                }
            });
        }
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        if (i2 != 0 && i != 0) {
            this.c = i;
            this.d = i2;
            if (this.g != null) {
                this.g.setFixedSize(this.c, this.d);
                requestLayout();
            }
        }
    }

    private boolean c() {
        return (this.q == 0 || this.q == 1 || this.q == 2 || this.q == 7) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        if (!this.o.isEmpty()) {
            Activity activityForView = ViewUtils.getActivityForView(this);
            if (activityForView != null) {
                this.m = MoatFactory.create(activityForView);
            } else {
                MMLog.w(f4245a, "Cannot determine the activity context. Moat video tracking disabled.");
            }
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4245a, "Moat ad identifiers were not provided. Moat video tracking disabled.");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }
}
