package com.millennialmedia.internal.video;

import android.animation.Animator;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.AbsoluteLayout;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ToggleButton;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mdotm.android.mraid.MdotMMraidConstants;
import com.millennialmedia.MMLog;
import com.millennialmedia.R;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.MMVideoView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class InlineWebVideoView extends RelativeLayout implements MMVideoView.MMVideoViewListener {
    public static final int PROGRESS_UPDATES_DISABLED = -1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f4196a = InlineWebVideoView.class.getSimpleName();
    private static volatile int b = 100;
    private boolean A;
    private boolean B;
    private WeakReference<MMWebView> c;
    private FrameLayout d;
    private MMVideoView e;
    private ImageView f;
    private InlineVideoControls g;
    private ToggleButton h;
    private Uri i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private long q;
    private String r;
    private boolean s;
    private InlineWebVideoViewAttachListener t;
    private ThreadUtils.ScheduledRunnable u;
    private ViewUtils.ViewabilityWatcher v;
    private InlineWebVideoViewListener w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* loaded from: classes3.dex */
    public interface InlineWebVideoViewAttachListener {
        void attachFailed(InlineWebVideoView inlineWebVideoView);

        void attachSucceeded(InlineWebVideoView inlineWebVideoView);
    }

    /* loaded from: classes3.dex */
    public interface InlineWebVideoViewListener {
        void onClicked();
    }

    /* loaded from: classes3.dex */
    public class InlineVideoControls extends RelativeLayout implements MMVideoView.MediaController {
        private ToggleButton b;
        private ToggleButton c;
        private ProgressBar d;

        public InlineVideoControls(Context context, final MMVideoView mMVideoView, boolean z, boolean z2) {
            super(context);
            setBackgroundColor(getResources().getColor(R.color.mmadsdk_inline_video_controls_background));
            setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                }
            });
            this.b = new ToggleButton(context);
            this.b.setId(R.id.mmadsdk_inline_video_play_pause_button);
            this.b.setTextOn("");
            this.b.setTextOff("");
            this.b.setChecked(z);
            this.b.setBackgroundDrawable(getResources().getDrawable(R.drawable.mmadsdk_play_pause));
            this.b.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InlineWebVideoView.this.d();
                }
            });
            this.b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.3
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    if (mMVideoView != null) {
                        if (z3) {
                            mMVideoView.start();
                        } else {
                            mMVideoView.pause();
                        }
                    }
                }
            });
            Rect b = InlineWebVideoView.this.b(false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(b.width(), b.height());
            layoutParams.addRule(9);
            addView(this.b, layoutParams);
            this.c = new ToggleButton(context);
            this.c.setId(R.id.mmadsdk_inline_video_mute_unmute_button);
            this.c.setTextOn("");
            this.c.setTextOff("");
            this.c.setChecked(z2);
            this.c.setBackgroundDrawable(getResources().getDrawable(R.drawable.mmadsdk_mute_unmute));
            this.c.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    InlineWebVideoView.this.d();
                }
            });
            this.c.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.5
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z3) {
                    if (mMVideoView != null) {
                        if (z3) {
                            mMVideoView.mute();
                            return;
                        }
                        mMVideoView.unmute();
                        AudioManager audioManager = (AudioManager) InlineVideoControls.this.getContext().getSystemService("audio");
                        if (audioManager.getStreamVolume(3) == 0) {
                            audioManager.setStreamVolume(3, audioManager.getStreamMaxVolume(3) / 3, 0);
                        }
                    }
                }
            });
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(b.width(), b.height());
            layoutParams2.addRule(11);
            addView(this.c, layoutParams2);
            this.d = new ProgressBar(context, null, 16842872);
            this.d.setProgressDrawable(getResources().getDrawable(R.drawable.mmadsdk_inline_video_progress_bar));
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, b.height() / 2);
            layoutParams3.addRule(1, R.id.mmadsdk_inline_video_play_pause_button);
            layoutParams3.addRule(0, R.id.mmadsdk_inline_video_mute_unmute_button);
            layoutParams3.addRule(15);
            addView(this.d, layoutParams3);
        }

        public void start() {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.6
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.b.setChecked(true);
                }
            });
        }

        public void pause() {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.7
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.b.setChecked(false);
                }
            });
        }

        public void mute() {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.8
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.c.setChecked(true);
                }
            });
        }

        public void unmute() {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.9
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.c.setChecked(false);
                }
            });
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onProgress(final int i) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.10
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.d.setProgress(i);
                }
            });
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void setDuration(final int i) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.InlineVideoControls.11
                @Override // java.lang.Runnable
                public void run() {
                    InlineVideoControls.this.d.setProgress(0);
                    InlineVideoControls.this.d.setMax(i);
                }
            });
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onStart() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onComplete() {
            this.d.setProgress(this.d.getMax());
            pause();
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onPause() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onMuted() {
        }

        @Override // com.millennialmedia.internal.video.MMVideoView.MediaController
        public void onUnmuted() {
        }

        void a(boolean z) {
            Rect b = InlineWebVideoView.this.b(z);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.c.getLayoutParams();
            layoutParams.width = b.width();
            layoutParams.height = b.height();
            this.c.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.b.getLayoutParams();
            layoutParams2.width = b.width();
            layoutParams2.height = b.height();
            this.b.setLayoutParams(layoutParams2);
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
            layoutParams3.height = b.height() / 2;
            this.d.setLayoutParams(layoutParams3);
        }
    }

    /* loaded from: classes3.dex */
    static class InlineWebViewViewabilityListener implements ViewUtils.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f4224a;

        InlineWebViewViewabilityListener() {
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            InlineWebVideoView inlineWebVideoView = (InlineWebVideoView) view;
            if (!z) {
                if (inlineWebVideoView.e.isPlaying()) {
                    this.f4224a = true;
                    inlineWebVideoView.g.pause();
                }
            } else if (this.f4224a) {
                this.f4224a = false;
                inlineWebVideoView.g.start();
            }
        }
    }

    public InlineWebVideoView(Context context, boolean z, boolean z2, final boolean z3, final boolean z4, int i, String str, InlineWebVideoViewListener inlineWebVideoViewListener) {
        super(new MutableContextWrapper(context));
        this.n = -1;
        this.q = 0L;
        this.s = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.w = inlineWebVideoViewListener;
        MutableContextWrapper mutableContextWrapper = (MutableContextWrapper) getContext();
        this.r = str;
        this.n = i;
        this.o = z3;
        this.p = z4;
        this.v = new ViewUtils.ViewabilityWatcher(this, new InlineWebViewViewabilityListener());
        this.v.startWatching();
        this.d = new FrameLayout(mutableContextWrapper);
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.e = new MMVideoView(mutableContextWrapper, z, z2, null, this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        this.d.addView(this.e, layoutParams);
        StringBuilder append = new StringBuilder().append("MMInlineWebVideoView_");
        int i2 = b;
        b = i2 + 1;
        setTag(append.append(i2).toString());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        this.f = new ImageView(mutableContextWrapper);
        this.f.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.f.setLayoutParams(layoutParams2);
        this.d.addView(this.f);
        addView(this.d, new RelativeLayout.LayoutParams(-1, -1));
        this.g = new InlineVideoControls(mutableContextWrapper, this.e, z, z2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(12);
        if (!z3) {
            this.g.setVisibility(8);
        }
        addView(this.g, layoutParams3);
        this.e.setMediaController(this.g);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                InlineWebVideoView.this.d();
                MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.c.get();
                if (mMWebView != null) {
                    mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), "click");
                }
                if (z3) {
                    InlineWebVideoView.this.g.setAlpha(1.0f);
                    InlineWebVideoView.this.g.setVisibility(0);
                }
                if (z4) {
                    InlineWebVideoView.this.h.setAlpha(1.0f);
                    InlineWebVideoView.this.h.setVisibility(0);
                }
                if (z3 || z4) {
                    InlineWebVideoView.this.c();
                }
            }
        });
        this.h = new ToggleButton(mutableContextWrapper);
        this.h.setTextOff("");
        this.h.setTextOn("");
        this.h.setChecked(false);
        this.h.setBackgroundDrawable(getResources().getDrawable(R.drawable.mmadsdk_expand_collapse));
        this.h.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z5) {
                InlineWebVideoView.this.d();
                if (z5) {
                    InlineWebVideoView.this.b();
                }
            }
        });
        if (!z4) {
            this.h.setVisibility(8);
        }
        Rect b2 = b(false);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(b2.width(), b2.height());
        layoutParams4.addRule(10);
        layoutParams4.addRule(11);
        addView(this.h, layoutParams4);
    }

    public void setAnchorView(MMWebView mMWebView, int i, int i2, int i3, int i4, InlineWebVideoViewAttachListener inlineWebVideoViewAttachListener) {
        if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
            MMLog.e(f4196a, "All position parameters must be greater than or equal to zero.");
            inlineWebVideoViewAttachListener.attachFailed(this);
            return;
        }
        this.c = new WeakReference<>(mMWebView);
        this.t = inlineWebVideoViewAttachListener;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = i4;
        a(false);
        if (this.i != null) {
            this.e.setVideoURI(this.i);
        }
    }

    public void setPlaceholder(final Uri uri) {
        if (this.c != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(uri.toString());
                    if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200 && bitmapFromGetRequest.bitmap != null) {
                        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.c.get();
                                if (mMWebView != null) {
                                    InlineWebVideoView.this.f.setImageBitmap(bitmapFromGetRequest.bitmap);
                                    if (mMWebView.getWidth() - InlineWebVideoView.this.j < InlineWebVideoView.this.l || mMWebView.getHeight() - InlineWebVideoView.this.k < InlineWebVideoView.this.m) {
                                        MMLog.e(InlineWebVideoView.f4196a, "Cannot attach the inline video; it will not fit within the anchor view.");
                                    } else {
                                        InlineWebVideoView.this.a(mMWebView);
                                    }
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public void setVideoURI(Uri uri) {
        this.s = false;
        this.x = false;
        this.y = false;
        this.z = false;
        this.A = false;
        this.B = false;
        this.i = uri;
        if (this.c != null) {
            this.e.setVideoURI(uri);
            MMWebView mMWebView = this.c.get();
            if (mMWebView != null) {
                mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "loading");
            }
        }
    }

    public void start() {
        if (!this.s) {
            this.g.start();
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.start could not complete because of a previous error.");
        }
    }

    public void stop() {
        if (!this.s) {
            this.e.stop();
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.stop could not complete because of a previous error.");
        }
    }

    public void pause() {
        if (!this.s) {
            this.g.pause();
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.pause could not complete because of a previous error.");
        }
    }

    public void seekTo(int i) {
        if (!this.s) {
            this.e.seekTo(i);
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.seekTo could not complete because of a previous error.");
        }
    }

    public void expandToFullScreen() {
        this.h.setChecked(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (!this.s) {
            MMActivity.launch(getContext(), new MMActivity.MMActivityConfig(), new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.4
                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onCreate(final MMActivity mMActivity) {
                    super.onCreate(mMActivity);
                    ViewUtils.removeFromParent(InlineWebVideoView.this);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    InlineWebVideoView.this.h.setOnCheckedChangeListener(null);
                    InlineWebVideoView.this.h.setChecked(true);
                    InlineWebVideoView.this.h.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.4.1
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            if (!z) {
                                mMActivity.finish();
                            }
                        }
                    });
                    InlineWebVideoView.this.a(true);
                    ViewUtils.attachView(mMActivity.getRootView(), InlineWebVideoView.this, layoutParams);
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.c.get();
                    if (mMWebView != null) {
                        mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), "expand");
                    }
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onResume(MMActivity mMActivity) {
                    super.onResume(mMActivity);
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onPause(MMActivity mMActivity) {
                    super.onPause(mMActivity);
                }

                @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
                public void onDestroy(MMActivity mMActivity) {
                    ViewUtils.removeFromParent(InlineWebVideoView.this);
                    AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(InlineWebVideoView.this.l, InlineWebVideoView.this.m, InlineWebVideoView.this.j, InlineWebVideoView.this.k);
                    InlineWebVideoView.this.h.setOnCheckedChangeListener(null);
                    InlineWebVideoView.this.h.setChecked(false);
                    InlineWebVideoView.this.h.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.4.2
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                            if (z) {
                                InlineWebVideoView.this.b();
                            }
                        }
                    });
                    InlineWebVideoView.this.a(false);
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.c.get();
                    if (mMWebView != null) {
                        ViewUtils.attachView(mMWebView, InlineWebVideoView.this, layoutParams);
                        mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), "collapse");
                    }
                    super.onDestroy(mMActivity);
                }
            });
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.expandToFullScreen could not complete because of a previous error.");
        }
    }

    public void triggerTimeUpdate() {
        if (!this.s) {
            MMWebView mMWebView = this.c.get();
            if (mMWebView != null) {
                mMWebView.invokeCallback(this.r, getTag(), "timeUpdate", Integer.valueOf(this.e.getCurrentPosition()));
            }
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.triggerTimeUpdate could not complete because of a previous error.");
        }
    }

    public void mute() {
        if (!this.s) {
            this.g.mute();
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.mute could not complete because of a previous error.");
        }
    }

    public void unmute() {
        if (!this.s) {
            this.g.unmute();
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.unmute could not complete because of a previous error.");
        }
    }

    public void remove() {
        this.e.stop();
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "removed");
        }
        ViewUtils.removeFromParent(this);
    }

    public void reposition(int i, int i2, int i3, int i4) {
        if (!this.s) {
            if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
                MMLog.e(f4196a, "All position parameters must be greater than or equal to zero.");
            } else if (this.c != null) {
                MMWebView mMWebView = this.c.get();
                if (mMWebView != null) {
                    if (mMWebView.getWidth() - i >= i3 && mMWebView.getHeight() - i2 >= i4) {
                        this.l = i3;
                        this.m = i4;
                        this.j = i;
                        this.k = i2;
                        a(false);
                        AbsoluteLayout.LayoutParams layoutParams = new AbsoluteLayout.LayoutParams(i3, i4, i, i2);
                        ViewUtils.removeFromParent(this);
                        ViewUtils.attachView(mMWebView, this, layoutParams);
                        DisplayMetrics displayMetrics = mMWebView.getResources().getDisplayMetrics();
                        mMWebView.invokeCallback(this.r, getTag(), "reposition", Integer.valueOf(a(displayMetrics, i3)), Integer.valueOf(a(displayMetrics, i4)), Integer.valueOf(a(displayMetrics, i)), Integer.valueOf(a(displayMetrics, i2)));
                        return;
                    }
                    MMLog.e(f4196a, "Cannot reposition the inline video as it will not fit within the anchor view.");
                    return;
                }
                MMLog.w(f4196a, "Cannot position the InlineVideoView because the anchor view is gone.");
            } else {
                MMLog.w(f4196a, "Cannot position the InlineVideoView because the anchor view has not been set.");
            }
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView.reposition could not complete because of a previous error.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPrepared(MMVideoView mMVideoView) {
        if (!this.s) {
            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.5
                @Override // java.lang.Runnable
                public void run() {
                    MMWebView mMWebView = (MMWebView) InlineWebVideoView.this.c.get();
                    if (mMWebView != null) {
                        mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "loading");
                        mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), "updateVideoURL", InlineWebVideoView.this.i.toString());
                        mMWebView.invokeCallback(InlineWebVideoView.this.r, InlineWebVideoView.this.getTag(), "durationChange", Integer.valueOf(InlineWebVideoView.this.e.getDuration()));
                        if (mMWebView.getWidth() - InlineWebVideoView.this.j < InlineWebVideoView.this.l || mMWebView.getHeight() - InlineWebVideoView.this.k < InlineWebVideoView.this.m) {
                            MMLog.e(InlineWebVideoView.f4196a, "Cannot attach the inline video; it will not fit within the anchor view.");
                        } else {
                            InlineWebVideoView.this.a(mMWebView);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MMWebView mMWebView) {
        if (getParent() == null) {
            ViewUtils.attachView(mMWebView, this, new AbsoluteLayout.LayoutParams(this.l, this.m, this.j, this.k));
            this.t.attachSucceeded(this);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onReadyToStart(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "readyToStart");
            mMWebView.invokeCallback(this.r, getTag(), "updateVideoURL", this.i.toString());
            mMWebView.invokeCallback(this.r, getTag(), "durationChange", Integer.valueOf(this.e.getDuration()));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStart(MMVideoView mMVideoView) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                ViewUtils.removeFromParent(InlineWebVideoView.this.f);
            }
        });
        c();
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            synchronized (this) {
                if (!this.x) {
                    this.x = true;
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4196a, "InlineWebVideoView[" + getTag() + "]: firing start event");
                    }
                    mMWebView.invokeCallback(this.r, getTag(), "tracking", SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
                }
            }
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "playing");
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineWebVideoView anchor WebView is gone.  Tracking events disabled.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onStop(MMVideoView mMVideoView) {
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.7
            @Override // java.lang.Runnable
            public void run() {
                if (InlineWebVideoView.this.f.getParent() == null) {
                    InlineWebVideoView.this.d.addView(InlineWebVideoView.this.f);
                }
            }
        });
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "stopped");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onPause(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, "paused");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onComplete(MMVideoView mMVideoView) {
        mMVideoView.seekTo(0);
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            synchronized (this) {
                if (!this.B) {
                    this.B = true;
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(f4196a, "InlineVideoView[" + getTag() + "]: firing end event");
                    }
                    mMWebView.invokeCallback(this.r, getTag(), "timeUpdate", Integer.valueOf(this.e.getDuration()));
                    mMWebView.invokeCallback(this.r, getTag(), "tracking", "end");
                }
            }
            mMWebView.invokeCallback(this.r, getTag(), MdotMMraidConstants.EVENT_STATE_CHANGE, SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineVideoView anchor WebView is gone.  Tracking events disabled.");
        }
        ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.8
            @Override // java.lang.Runnable
            public void run() {
                if (InlineWebVideoView.this.f.getParent() == null) {
                    InlineWebVideoView.this.d.addView(InlineWebVideoView.this.f);
                }
            }
        });
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public synchronized void onProgress(MMVideoView mMVideoView, int i) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            int duration = this.e.getDuration() / 4;
            if (!this.y && i >= duration) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4196a, "InlineVideoView[" + getTag() + "]: firing q1 event");
                }
                this.y = true;
                mMWebView.invokeCallback(this.r, getTag(), "tracking", "q1");
            }
            if (!this.z && i >= duration * 2) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4196a, "InlineVideoView[" + getTag() + "]: firing midpoint event");
                }
                this.z = true;
                mMWebView.invokeCallback(this.r, getTag(), "tracking", "q2");
            }
            if (!this.A && i >= duration * 3) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4196a, "InlineVideoView[" + getTag() + "]: firing q3 event");
                }
                this.A = true;
                mMWebView.invokeCallback(this.r, getTag(), "tracking", "q3");
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (this.n != -1 && currentTimeMillis - this.q >= this.n) {
                this.q = currentTimeMillis;
                mMWebView.invokeCallback(this.r, getTag(), "timeUpdate", Integer.valueOf(i));
            }
        } else if (MMLog.isDebugEnabled()) {
            MMLog.d(f4196a, "InlineVideoView anchor WebView is gone.  Tracking events disabled.");
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onSeek(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), "seek", Integer.valueOf(this.e.getCurrentPosition()));
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onMuted(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE, true);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onUnmuted(MMVideoView mMVideoView) {
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE, false);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onError(MMVideoView mMVideoView) {
        this.s = true;
        MMWebView mMWebView = this.c.get();
        if (mMWebView != null) {
            mMWebView.invokeCallback(this.r, getTag(), "error", "Inline video play back failed.");
        }
        if (getParent() == null) {
            this.t.attachFailed(this);
        }
    }

    @Override // com.millennialmedia.internal.video.MMVideoView.MMVideoViewListener
    public void onBufferingUpdate(MMVideoView mMVideoView, int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.p || this.o) {
            if (this.u != null) {
                this.u.cancel();
            }
            this.u = ThreadUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.9
                @Override // java.lang.Runnable
                public void run() {
                    InlineWebVideoView.this.g.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.9.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            InlineWebVideoView.this.g.setVisibility(8);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }
                    }).start();
                    InlineWebVideoView.this.h.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.9.2
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            InlineWebVideoView.this.h.setVisibility(8);
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                        }

                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationRepeat(Animator animator) {
                        }
                    }).start();
                }
            }, 2500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.g.a(z);
        Rect b2 = b(z);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.h.getLayoutParams();
        layoutParams.width = b2.width();
        layoutParams.height = b2.height();
        this.h.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect b(boolean z) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_max_width_height);
        if (z) {
            return new Rect(0, 0, dimensionPixelSize, dimensionPixelSize);
        }
        int max = Math.max(getResources().getDimensionPixelSize(R.dimen.mmadsdk_control_button_min_width_height), Math.min(dimensionPixelSize, this.m / 5));
        return new Rect(0, 0, max, max);
    }

    private int a(DisplayMetrics displayMetrics, int i) {
        return (int) Math.ceil(i / displayMetrics.density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.video.InlineWebVideoView.10
            @Override // java.lang.Runnable
            public void run() {
                if (InlineWebVideoView.this.w != null) {
                    InlineWebVideoView.this.w.onClicked();
                }
            }
        });
    }
}
