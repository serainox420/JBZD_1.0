package com.google.android.exoplayer2.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.R;
import com.google.android.exoplayer2.b.g;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.util.v;
import com.inmobi.monetization.internal.Constants;
import java.util.Formatter;
import java.util.Locale;
/* loaded from: classes2.dex */
public class PlaybackControlView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3459a = new b() { // from class: com.google.android.exoplayer2.ui.PlaybackControlView.1
        @Override // com.google.android.exoplayer2.ui.PlaybackControlView.b
        public boolean a(d dVar, int i, long j) {
            dVar.a(i, j);
            return true;
        }
    };
    private final a b;
    private final View c;
    private final View d;
    private final View e;
    private final View f;
    private final View g;
    private final View h;
    private final TextView i;
    private final TextView j;
    private final SeekBar k;
    private final StringBuilder l;
    private final Formatter m;
    private final n.b n;
    private d o;
    private b p;
    private c q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private int v;
    private long w;
    private final Runnable x;
    private final Runnable y;

    /* loaded from: classes2.dex */
    public interface b {
        boolean a(d dVar, int i, long j);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(int i);
    }

    public PlaybackControlView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlaybackControlView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlaybackControlView.2
            @Override // java.lang.Runnable
            public void run() {
                PlaybackControlView.this.h();
            }
        };
        this.y = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlaybackControlView.3
            @Override // java.lang.Runnable
            public void run() {
                PlaybackControlView.this.b();
            }
        };
        int i2 = R.layout.exo_playback_control_view;
        this.t = 5000;
        this.u = Constants.HTTP_TIMEOUT;
        this.v = 5000;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.PlaybackControlView, 0, 0);
            try {
                this.t = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_rewind_increment, this.t);
                this.u = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_fastforward_increment, this.u);
                this.v = obtainStyledAttributes.getInt(R.styleable.PlaybackControlView_show_timeout, this.v);
                i2 = obtainStyledAttributes.getResourceId(R.styleable.PlaybackControlView_controller_layout_id, i2);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.n = new n.b();
        this.l = new StringBuilder();
        this.m = new Formatter(this.l, Locale.getDefault());
        this.b = new a();
        this.p = f3459a;
        LayoutInflater.from(context).inflate(i2, this);
        setDescendantFocusability(262144);
        this.i = (TextView) findViewById(R.id.exo_duration);
        this.j = (TextView) findViewById(R.id.exo_position);
        this.k = (SeekBar) findViewById(R.id.exo_progress);
        if (this.k != null) {
            this.k.setOnSeekBarChangeListener(this.b);
            this.k.setMax(1000);
        }
        this.e = findViewById(R.id.exo_play);
        if (this.e != null) {
            this.e.setOnClickListener(this.b);
        }
        this.f = findViewById(R.id.exo_pause);
        if (this.f != null) {
            this.f.setOnClickListener(this.b);
        }
        this.c = findViewById(R.id.exo_prev);
        if (this.c != null) {
            this.c.setOnClickListener(this.b);
        }
        this.d = findViewById(R.id.exo_next);
        if (this.d != null) {
            this.d.setOnClickListener(this.b);
        }
        this.h = findViewById(R.id.exo_rew);
        if (this.h != null) {
            this.h.setOnClickListener(this.b);
        }
        this.g = findViewById(R.id.exo_ffwd);
        if (this.g != null) {
            this.g.setOnClickListener(this.b);
        }
    }

    public d getPlayer() {
        return this.o;
    }

    public void setPlayer(d dVar) {
        if (this.o != dVar) {
            if (this.o != null) {
                this.o.b(this.b);
            }
            this.o = dVar;
            if (dVar != null) {
                dVar.a(this.b);
            }
            e();
        }
    }

    public void setVisibilityListener(c cVar) {
        this.q = cVar;
    }

    public void setSeekDispatcher(b bVar) {
        if (bVar == null) {
            bVar = f3459a;
        }
        this.p = bVar;
    }

    public void setRewindIncrementMs(int i) {
        this.t = i;
        g();
    }

    public void setFastForwardIncrementMs(int i) {
        this.u = i;
        g();
    }

    public int getShowTimeoutMs() {
        return this.v;
    }

    public void setShowTimeoutMs(int i) {
        this.v = i;
    }

    public void a() {
        if (!c()) {
            setVisibility(0);
            if (this.q != null) {
                this.q.a(getVisibility());
            }
            e();
            i();
        }
        d();
    }

    public void b() {
        if (c()) {
            setVisibility(8);
            if (this.q != null) {
                this.q.a(getVisibility());
            }
            removeCallbacks(this.x);
            removeCallbacks(this.y);
            this.w = -9223372036854775807L;
        }
    }

    public boolean c() {
        return getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        removeCallbacks(this.y);
        if (this.v > 0) {
            this.w = SystemClock.uptimeMillis() + this.v;
            if (this.r) {
                postDelayed(this.y, this.v);
                return;
            }
            return;
        }
        this.w = -9223372036854775807L;
    }

    private void e() {
        f();
        g();
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        boolean z;
        int i = 8;
        boolean z2 = true;
        if (c() && this.r) {
            boolean z3 = this.o != null && this.o.b();
            if (this.e != null) {
                boolean z4 = false | (z3 && this.e.isFocused());
                this.e.setVisibility(z3 ? 8 : 0);
                z = z4;
            } else {
                z = false;
            }
            if (this.f != null) {
                if (z3 || !this.f.isFocused()) {
                    z2 = false;
                }
                z |= z2;
                View view = this.f;
                if (z3) {
                    i = 0;
                }
                view.setVisibility(i);
            }
            if (z) {
                i();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        if (c() && this.r) {
            n g = this.o != null ? this.o.g() : null;
            if (g != null && !g.a()) {
                int h = this.o.h();
                g.a(h, this.n);
                z3 = this.n.d;
                z2 = h > 0 || z3 || !this.n.e;
                z = h < g.b() + (-1) || this.n.e;
            } else {
                z = false;
                z2 = false;
                z3 = false;
            }
            a(z2, this.c);
            a(z, this.d);
            a(this.u > 0 && z3, this.g);
            if (this.t <= 0 || !z3) {
                z4 = false;
            }
            a(z4, this.h);
            if (this.k != null) {
                this.k.setEnabled(z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        long j;
        long j2 = 0;
        if (c() && this.r) {
            long i = this.o == null ? 0L : this.o.i();
            long j3 = this.o == null ? 0L : this.o.j();
            if (this.i != null) {
                this.i.setText(a(i));
            }
            if (this.j != null && !this.s) {
                this.j.setText(a(j3));
            }
            if (this.k != null) {
                if (!this.s) {
                    this.k.setProgress(b(j3));
                }
                if (this.o != null) {
                    j2 = this.o.k();
                }
                this.k.setSecondaryProgress(b(j2));
            }
            removeCallbacks(this.x);
            int a2 = this.o == null ? 1 : this.o.a();
            if (a2 != 1 && a2 != 4) {
                if (!this.o.b() || a2 != 3) {
                    j = 1000;
                } else {
                    j = 1000 - (j3 % 1000);
                    if (j < 200) {
                        j += 1000;
                    }
                }
                postDelayed(this.x, j);
            }
        }
    }

    private void i() {
        boolean z = this.o != null && this.o.b();
        if (!z && this.e != null) {
            this.e.requestFocus();
        } else if (z && this.f != null) {
            this.f.requestFocus();
        }
    }

    private void a(boolean z, View view) {
        if (view != null) {
            view.setEnabled(z);
            if (v.f3519a >= 11) {
                a(view, z ? 1.0f : 0.3f);
                view.setVisibility(0);
                return;
            }
            view.setVisibility(z ? 0 : 4);
        }
    }

    @TargetApi(11)
    private void a(View view, float f) {
        view.setAlpha(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(long j) {
        if (j == -9223372036854775807L) {
            j = 0;
        }
        long j2 = (500 + j) / 1000;
        long j3 = j2 % 60;
        long j4 = (j2 / 60) % 60;
        long j5 = j2 / 3600;
        this.l.setLength(0);
        return j5 > 0 ? this.m.format("%d:%02d:%02d", Long.valueOf(j5), Long.valueOf(j4), Long.valueOf(j3)).toString() : this.m.format("%02d:%02d", Long.valueOf(j4), Long.valueOf(j3)).toString();
    }

    private int b(long j) {
        long i = this.o == null ? -9223372036854775807L : this.o.i();
        if (i == -9223372036854775807L || i == 0) {
            return 0;
        }
        return (int) ((1000 * j) / i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(int i) {
        long i2 = this.o == null ? -9223372036854775807L : this.o.i();
        if (i2 == -9223372036854775807L) {
            return 0L;
        }
        return (i2 * i) / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        n g = this.o.g();
        if (!g.a()) {
            int h = this.o.h();
            g.a(h, this.n);
            if (h > 0 && (this.o.j() <= 3000 || (this.n.e && !this.n.d))) {
                a(h - 1, -9223372036854775807L);
            } else {
                c(0L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        n g = this.o.g();
        if (!g.a()) {
            int h = this.o.h();
            if (h < g.b() - 1) {
                a(h + 1, -9223372036854775807L);
            } else if (g.a(h, this.n, false).e) {
                a(h, -9223372036854775807L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.t > 0) {
            c(Math.max(this.o.j() - this.t, 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.u > 0) {
            c(Math.min(this.o.j() + this.u, this.o.i()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j) {
        a(this.o.h(), j);
    }

    private void a(int i, long j) {
        if (!this.p.a(this.o, i, j)) {
            h();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.r = true;
        if (this.w != -9223372036854775807L) {
            long uptimeMillis = this.w - SystemClock.uptimeMillis();
            if (uptimeMillis <= 0) {
                b();
            } else {
                postDelayed(this.y, uptimeMillis);
            }
        }
        e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.r = false;
        removeCallbacks(this.x);
        removeCallbacks(this.y);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = a(keyEvent) || super.dispatchKeyEvent(keyEvent);
        if (z) {
            a();
        }
        return z;
    }

    public boolean a(KeyEvent keyEvent) {
        boolean z = false;
        int keyCode = keyEvent.getKeyCode();
        if (this.o == null || !b(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            switch (keyCode) {
                case 85:
                    d dVar = this.o;
                    if (!this.o.b()) {
                        z = true;
                    }
                    dVar.a(z);
                    break;
                case 87:
                    k();
                    break;
                case 88:
                    j();
                    break;
                case 89:
                    l();
                    break;
                case 90:
                    m();
                    break;
                case 126:
                    this.o.a(true);
                    break;
                case 127:
                    this.o.a(false);
                    break;
            }
        }
        a();
        return true;
    }

    private static boolean b(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    /* loaded from: classes2.dex */
    private final class a implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, d.a {
        private a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            PlaybackControlView.this.removeCallbacks(PlaybackControlView.this.y);
            PlaybackControlView.this.s = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (z) {
                long a2 = PlaybackControlView.this.a(i);
                if (PlaybackControlView.this.j != null) {
                    PlaybackControlView.this.j.setText(PlaybackControlView.this.a(a2));
                }
                if (PlaybackControlView.this.o != null && !PlaybackControlView.this.s) {
                    PlaybackControlView.this.c(a2);
                }
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            PlaybackControlView.this.s = false;
            if (PlaybackControlView.this.o != null) {
                PlaybackControlView.this.c(PlaybackControlView.this.a(seekBar.getProgress()));
            }
            PlaybackControlView.this.d();
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPlayerStateChanged(boolean z, int i) {
            PlaybackControlView.this.f();
            PlaybackControlView.this.h();
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPositionDiscontinuity() {
            PlaybackControlView.this.g();
            PlaybackControlView.this.h();
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onTimelineChanged(n nVar, Object obj) {
            PlaybackControlView.this.g();
            PlaybackControlView.this.h();
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onLoadingChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.d.a
        public void a(m mVar, g gVar) {
        }

        @Override // com.google.android.exoplayer2.d.a
        public void onPlayerError(ExoPlaybackException exoPlaybackException) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PlaybackControlView.this.o != null) {
                if (PlaybackControlView.this.d == view) {
                    PlaybackControlView.this.k();
                } else if (PlaybackControlView.this.c == view) {
                    PlaybackControlView.this.j();
                } else if (PlaybackControlView.this.g == view) {
                    PlaybackControlView.this.m();
                } else if (PlaybackControlView.this.h == view) {
                    PlaybackControlView.this.l();
                } else if (PlaybackControlView.this.e == view) {
                    PlaybackControlView.this.o.a(true);
                } else if (PlaybackControlView.this.f == view) {
                    PlaybackControlView.this.o.a(false);
                }
            }
            PlaybackControlView.this.d();
        }
    }
}
