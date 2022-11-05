package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.R;
import com.google.android.exoplayer2.b.f;
import com.google.android.exoplayer2.b.g;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.m;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.text.b;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.ui.PlaybackControlView;
import java.util.List;
@TargetApi(16)
/* loaded from: classes2.dex */
public final class SimpleExoPlayerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final AspectRatioFrameLayout f3463a;
    private final View b;
    private final View c;
    private final ImageView d;
    private final SubtitleView e;
    private final PlaybackControlView f;
    private final a g;
    private final FrameLayout h;
    private m i;
    private boolean j;
    private boolean k;
    private Bitmap l;
    private int m;

    public SimpleExoPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimpleExoPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7 = R.layout.exo_simple_player_view;
        if (attributeSet == null) {
            i2 = i7;
            z = true;
            i3 = 0;
            z2 = true;
            i4 = 1;
            i5 = 0;
            i6 = 5000;
        } else {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SimpleExoPlayerView, 0, 0);
            try {
                int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SimpleExoPlayerView_player_layout_id, i7);
                boolean z3 = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_use_artwork, true);
                int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.SimpleExoPlayerView_default_artwork, 0);
                boolean z4 = obtainStyledAttributes.getBoolean(R.styleable.SimpleExoPlayerView_use_controller, true);
                int i8 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_surface_type, 1);
                int i9 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_resize_mode, 0);
                int i10 = obtainStyledAttributes.getInt(R.styleable.SimpleExoPlayerView_show_timeout, 5000);
                obtainStyledAttributes.recycle();
                i2 = resourceId;
                z = z3;
                i3 = resourceId2;
                z2 = z4;
                i4 = i8;
                i5 = i9;
                i6 = i10;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
        LayoutInflater.from(context).inflate(i2, this);
        this.g = new a();
        setDescendantFocusability(262144);
        this.f3463a = (AspectRatioFrameLayout) findViewById(R.id.exo_content_frame);
        if (this.f3463a != null) {
            a(this.f3463a, i5);
        }
        this.b = findViewById(R.id.exo_shutter);
        if (this.f3463a != null && i4 != 0) {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            this.c = i4 == 2 ? new TextureView(context) : new SurfaceView(context);
            this.c.setLayoutParams(layoutParams);
            this.f3463a.addView(this.c, 0);
        } else {
            this.c = null;
        }
        this.h = (FrameLayout) findViewById(R.id.exo_overlay);
        this.d = (ImageView) findViewById(R.id.exo_artwork);
        this.k = z && this.d != null;
        if (i3 != 0) {
            this.l = BitmapFactory.decodeResource(context.getResources(), i3);
        }
        this.e = (SubtitleView) findViewById(R.id.exo_subtitles);
        if (this.e != null) {
            this.e.b();
            this.e.a();
        }
        View findViewById = findViewById(R.id.exo_controller_placeholder);
        if (findViewById != null) {
            this.f = new PlaybackControlView(context, attributeSet);
            this.f.setLayoutParams(findViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById);
            viewGroup.removeView(findViewById);
            viewGroup.addView(this.f, indexOfChild);
        } else {
            this.f = null;
        }
        this.m = this.f == null ? 0 : i6;
        this.j = z2 && this.f != null;
        a();
    }

    public m getPlayer() {
        return this.i;
    }

    public void setPlayer(m mVar) {
        if (this.i != mVar) {
            if (this.i != null) {
                this.i.a((j.a) null);
                this.i.a((m.b) null);
                this.i.b(this.g);
                this.i.a((Surface) null);
            }
            this.i = mVar;
            if (this.j) {
                this.f.setPlayer(mVar);
            }
            if (this.b != null) {
                this.b.setVisibility(0);
            }
            if (mVar != null) {
                if (this.c instanceof TextureView) {
                    mVar.a((TextureView) this.c);
                } else if (this.c instanceof SurfaceView) {
                    mVar.a((SurfaceView) this.c);
                }
                mVar.a((m.b) this.g);
                mVar.a((d.a) this.g);
                mVar.a((j.a) this.g);
                a(false);
                b();
                return;
            }
            a();
            c();
        }
    }

    public void setResizeMode(int i) {
        com.google.android.exoplayer2.util.a.b(this.f3463a != null);
        this.f3463a.setResizeMode(i);
    }

    public boolean getUseArtwork() {
        return this.k;
    }

    public void setUseArtwork(boolean z) {
        com.google.android.exoplayer2.util.a.b(!z || this.d != null);
        if (this.k != z) {
            this.k = z;
            b();
        }
    }

    public Bitmap getDefaultArtwork() {
        return this.l;
    }

    public void setDefaultArtwork(Bitmap bitmap) {
        if (this.l != bitmap) {
            this.l = bitmap;
            b();
        }
    }

    public boolean getUseController() {
        return this.j;
    }

    public void setUseController(boolean z) {
        com.google.android.exoplayer2.util.a.b(!z || this.f != null);
        if (this.j != z) {
            this.j = z;
            if (z) {
                this.f.setPlayer(this.i);
            } else if (this.f != null) {
                this.f.b();
                this.f.setPlayer(null);
            }
        }
    }

    public void a() {
        if (this.f != null) {
            this.f.b();
        }
    }

    public int getControllerShowTimeoutMs() {
        return this.m;
    }

    public void setControllerShowTimeoutMs(int i) {
        com.google.android.exoplayer2.util.a.b(this.f != null);
        this.m = i;
    }

    public void setControllerVisibilityListener(PlaybackControlView.c cVar) {
        com.google.android.exoplayer2.util.a.b(this.f != null);
        this.f.setVisibilityListener(cVar);
    }

    public void setSeekDispatcher(PlaybackControlView.b bVar) {
        com.google.android.exoplayer2.util.a.b(this.f != null);
        this.f.setSeekDispatcher(bVar);
    }

    public void setRewindIncrementMs(int i) {
        com.google.android.exoplayer2.util.a.b(this.f != null);
        this.f.setRewindIncrementMs(i);
    }

    public void setFastForwardIncrementMs(int i) {
        com.google.android.exoplayer2.util.a.b(this.f != null);
        this.f.setFastForwardIncrementMs(i);
    }

    public View getVideoSurfaceView() {
        return this.c;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.h;
    }

    public SubtitleView getSubtitleView() {
        return this.e;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.j || this.i == null || motionEvent.getActionMasked() != 0) {
            return false;
        }
        if (this.f.c()) {
            this.f.b();
            return true;
        }
        a(true);
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!this.j || this.i == null) {
            return false;
        }
        a(true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        boolean z2 = true;
        int i = 0;
        if (this.j && this.i != null) {
            int a2 = this.i.a();
            boolean z3 = a2 == 1 || a2 == 4 || !this.i.b();
            if (!this.f.c() || this.f.getShowTimeoutMs() > 0) {
                z2 = false;
            }
            PlaybackControlView playbackControlView = this.f;
            if (!z3) {
                i = this.m;
            }
            playbackControlView.setShowTimeoutMs(i);
            if (z || z3 || z2) {
                this.f.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i != null) {
            g f = this.i.f();
            for (int i = 0; i < f.f3178a; i++) {
                if (this.i.a(i) == 2 && f.a(i) != null) {
                    c();
                    return;
                }
            }
            if (this.b != null) {
                this.b.setVisibility(0);
            }
            if (this.k) {
                for (int i2 = 0; i2 < f.f3178a; i2++) {
                    f a2 = f.a(i2);
                    if (a2 != null) {
                        for (int i3 = 0; i3 < a2.e(); i3++) {
                            Metadata metadata = a2.a(i3).d;
                            if (metadata != null && a(metadata)) {
                                return;
                            }
                        }
                        continue;
                    }
                }
                if (a(this.l)) {
                    return;
                }
            }
            c();
        }
    }

    private boolean a(Metadata metadata) {
        for (int i = 0; i < metadata.a(); i++) {
            Metadata.Entry a2 = metadata.a(i);
            if (a2 instanceof ApicFrame) {
                byte[] bArr = ((ApicFrame) a2).d;
                return a(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            }
        }
        return false;
    }

    private boolean a(Bitmap bitmap) {
        if (bitmap != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width <= 0 || height <= 0) {
                return false;
            }
            if (this.f3463a != null) {
                this.f3463a.setAspectRatio(width / height);
            }
            this.d.setImageBitmap(bitmap);
            this.d.setVisibility(0);
            return true;
        }
        return false;
    }

    private void c() {
        if (this.d != null) {
            this.d.setImageResource(17170445);
            this.d.setVisibility(4);
        }
    }

    private static void a(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* loaded from: classes2.dex */
    private final class a implements d.a, m.b, j.a {
        private a() {
        }

        @Override // com.google.android.exoplayer2.text.j.a
        public void a(List<b> list) {
            if (SimpleExoPlayerView.this.e != null) {
                SimpleExoPlayerView.this.e.a(list);
            }
        }

        @Override // com.google.android.exoplayer2.m.b
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            if (SimpleExoPlayerView.this.f3463a != null) {
                SimpleExoPlayerView.this.f3463a.setAspectRatio(i2 == 0 ? 1.0f : (i * f) / i2);
            }
        }

        @Override // com.google.android.exoplayer2.m.b
        public void onRenderedFirstFrame() {
            if (SimpleExoPlayerView.this.b != null) {
                SimpleExoPlayerView.this.b.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.d.a
        public void a(com.google.android.exoplayer2.source.m mVar, g gVar) {
            SimpleExoPlayerView.this.b();
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onLoadingChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPlayerStateChanged(boolean z, int i) {
            SimpleExoPlayerView.this.a(false);
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPositionDiscontinuity() {
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onTimelineChanged(n nVar, Object obj) {
        }
    }
}
