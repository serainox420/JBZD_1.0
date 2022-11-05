package com.facebook.ads.internal.view;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.util.aj;
import com.facebook.ads.internal.util.ak;
import com.facebook.ads.internal.util.y;
import com.facebook.ads.internal.view.d.a.t;
import com.facebook.ads.internal.view.d.a.u;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class m extends RelativeLayout implements aj.a, com.facebook.ads.internal.view.d.c.e {
    private static final com.facebook.ads.internal.view.d.a.l i = new com.facebook.ads.internal.view.d.a.l();
    private static final com.facebook.ads.internal.view.d.a.d j = new com.facebook.ads.internal.view.d.a.d();
    private static final com.facebook.ads.internal.view.d.a.b k = new com.facebook.ads.internal.view.d.a.b();
    private static final com.facebook.ads.internal.view.d.a.n l = new com.facebook.ads.internal.view.d.a.n();
    private static final com.facebook.ads.internal.view.d.a.p m = new com.facebook.ads.internal.view.d.a.p();
    private static final com.facebook.ads.internal.view.d.a.h n = new com.facebook.ads.internal.view.d.a.h();
    private static final com.facebook.ads.internal.view.d.a.j o = new com.facebook.ads.internal.view.d.a.j();
    private static final com.facebook.ads.internal.view.d.a.r p = new com.facebook.ads.internal.view.d.a.r();
    private static final u q = new u();
    private static final t r = new t();

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q> f2352a;
    protected final com.facebook.ads.internal.view.d.c.c b;
    private final List<com.facebook.ads.internal.view.d.b.m> c;
    private boolean d;
    @Deprecated
    private boolean e;
    @Deprecated
    private boolean f;
    private ak g;
    private boolean h;
    private final Handler s;
    private final View.OnTouchListener t;

    public m(Context context) {
        this(context, null);
    }

    public m(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public m(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = new ArrayList();
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = ak.UNKNOWN;
        this.h = false;
        this.t = new View.OnTouchListener() { // from class: com.facebook.ads.internal.view.m.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                m.this.f2352a.a((com.facebook.ads.internal.g.r) new com.facebook.ads.internal.view.d.a.q(view, motionEvent));
                return true;
            }
        };
        if (com.facebook.ads.internal.h.a(getContext())) {
            this.b = new com.facebook.ads.internal.view.d.c.a(getContext());
        } else {
            this.b = new com.facebook.ads.internal.view.d.c.b(getContext());
        }
        this.b.setRequestedVolume(1.0f);
        this.b.setVideoStateChangeListener(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        addView((View) this.b, layoutParams);
        this.s = new Handler();
        this.f2352a = new com.facebook.ads.internal.g.r<>();
        setOnTouchListener(this.t);
    }

    public void a(int i2) {
        this.b.seekTo(i2);
    }

    @Override // com.facebook.ads.internal.view.d.c.e
    public void a(int i2, int i3) {
        this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) new com.facebook.ads.internal.view.d.a.o(i2, i3));
    }

    public void a(com.facebook.ads.internal.view.d.b.m mVar) {
        this.c.add(mVar);
    }

    @Override // com.facebook.ads.internal.view.d.c.e
    public void a(com.facebook.ads.internal.view.d.c.d dVar) {
        if (dVar == com.facebook.ads.internal.view.d.c.d.PREPARED) {
            this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) i);
            if (!i() || this.d) {
                return;
            }
            d();
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.ERROR) {
            this.d = true;
            this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) j);
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            this.d = true;
            this.s.removeCallbacksAndMessages(null);
            this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) k);
        } else if (dVar == com.facebook.ads.internal.view.d.c.d.STARTED) {
            this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) o);
            this.s.removeCallbacksAndMessages(null);
            this.s.postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.m.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!m.this.d) {
                        m.this.f2352a.a((com.facebook.ads.internal.g.r) m.l);
                        m.this.s.postDelayed(this, 250L);
                    }
                }
            }, 250L);
        } else if (dVar != com.facebook.ads.internal.view.d.c.d.PAUSED) {
        } else {
            this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) n);
            this.s.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.facebook.ads.internal.util.aj.a
    public boolean a() {
        return i();
    }

    @Override // com.facebook.ads.internal.util.aj.a
    public boolean b() {
        return com.facebook.ads.internal.h.a(getContext());
    }

    @Override // com.facebook.ads.internal.util.aj.a
    public boolean c() {
        return this.h;
    }

    public void d() {
        if (this.d && this.b.getState() == com.facebook.ads.internal.view.d.c.d.PLAYBACK_COMPLETED) {
            this.d = false;
        }
        this.b.start();
    }

    public void e() {
        this.b.pause();
    }

    public void f() {
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) m);
        this.b.a();
    }

    public void g() {
        this.b.b();
    }

    public int getCurrentPosition() {
        return this.b.getCurrentPosition();
    }

    public int getDuration() {
        return this.b.getDuration();
    }

    public com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q> getEventBus() {
        return this.f2352a;
    }

    @Override // com.facebook.ads.internal.util.aj.a
    public long getInitialBufferTime() {
        return this.b.getInitialBufferTime();
    }

    public ak getIsAutoPlayFromServer() {
        return this.g;
    }

    public com.facebook.ads.internal.view.d.c.d getState() {
        return this.b.getState();
    }

    public TextureView getTextureView() {
        return (TextureView) this.b;
    }

    public View getVideoView() {
        return this.b.getView();
    }

    @Override // com.facebook.ads.internal.util.aj.a
    public float getVolume() {
        return this.b.getVolume();
    }

    public void h() {
        this.b.a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean i() {
        return getIsAutoPlayFromServer() == ak.UNKNOWN ? this.e && (!this.f || y.c(getContext()) == y.a.MOBILE_INTERNET) : getIsAutoPlayFromServer() == ak.ON;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) r);
        super.onAttachedToWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f2352a.a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) q);
        super.onDetachedFromWindow();
    }

    @Deprecated
    public void setAutoplay(boolean z) {
        this.e = z;
    }

    public void setControlsAnchorView(View view) {
        if (this.b != null) {
            this.b.setControlsAnchorView(view);
        }
    }

    public void setIsAutoPlayFromServer(ak akVar) {
        this.g = akVar;
    }

    @Deprecated
    public void setIsAutoplayOnMobile(boolean z) {
        this.f = z;
    }

    public void setIsFullScreen(boolean z) {
        this.h = z;
        this.b.setFullScreen(z);
    }

    public void setVideoMPD(String str) {
        this.b.setVideoMPD(str);
    }

    public void setVideoURI(Uri uri) {
        for (com.facebook.ads.internal.view.d.b.m mVar : this.c) {
            if (mVar.getParent() == null) {
                addView(mVar);
                mVar.b(this);
            }
        }
        this.d = false;
        this.b.setup(uri);
    }

    public void setVideoURI(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVolume(float f) {
        this.b.setRequestedVolume(f);
        getEventBus().a((com.facebook.ads.internal.g.r<com.facebook.ads.internal.g.s, com.facebook.ads.internal.g.q>) p);
    }
}
