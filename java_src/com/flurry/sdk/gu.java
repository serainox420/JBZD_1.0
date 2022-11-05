package com.flurry.sdk;

import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.gj;
import com.flurry.sdk.gv;
import com.flurry.sdk.gw;
import java.util.List;
/* loaded from: classes2.dex */
public class gu implements gv.a, gv.b, gw.a {
    private static final String g = gu.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public a f2749a;
    public gw b;
    public gv c;
    public RelativeLayout d;
    public int e = -1;
    public boolean f = false;

    /* loaded from: classes2.dex */
    public interface a {
        void a();

        void a(String str);

        void a(String str, float f, float f2);

        void a(String str, int i, int i2);

        void b();

        void b(String str);

        void d(int i);

        void e(int i);

        void k();

        void l();

        void y();

        void z();
    }

    public gu(Context context) {
        if (context == null) {
            return;
        }
        this.d = new RelativeLayout(context);
        this.b = new gw(context, this);
        this.c = new gr(context, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.d.addView(this.b, layoutParams);
        this.c.setAnchorView(this.b);
        this.b.setMediaController(this.c);
    }

    public gu(Context context, gj.a aVar, List<de> list, int i, boolean z) {
        if (context == null || aVar == null) {
            return;
        }
        this.d = new RelativeLayout(context);
        this.b = new gw(context, this);
        if (aVar != null) {
            if (aVar.equals(gj.a.INSTREAM)) {
                this.c = new gt(context, this, list);
            } else if (aVar.equals(gj.a.FULLSCREEN)) {
                this.c = new gs(context, this, list, i, z);
                this.b.setMediaController(this.c);
            }
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.d.addView(this.b, layoutParams);
    }

    public final void a(int i) {
        if (this.b != null) {
            this.b.seekTo(i);
            this.b.start();
        }
        if (this.c != null && (this.c instanceof gr)) {
            this.c.show();
        }
    }

    public final void b(final int i) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.gu.1
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (gu.this.c != null) {
                    gu.this.c.a(i);
                }
            }
        });
    }

    public final void a() {
        if (this.b != null) {
            this.b.pause();
        }
    }

    public final int b() {
        if (this.b != null) {
            return this.b.getCurrentPosition();
        }
        return 0;
    }

    public final int c() {
        if (this.b != null) {
            return this.b.getHeight();
        }
        return 0;
    }

    public final int d() {
        if (this.b != null) {
            return this.b.getWidth();
        }
        return 0;
    }

    public final void e() {
        if (this.c != null) {
            this.c.k();
        }
        if (this.b != null && this.b.isPlaying()) {
            this.b.f();
        }
    }

    public final void f() {
        if (this.b == null) {
            return;
        }
        this.b.e = true;
    }

    public final void g() {
        if (this.b != null) {
            this.b.a();
        }
    }

    public final void h() {
        if (this.b != null) {
            this.b.b();
        }
    }

    public final boolean i() {
        if (this.b != null) {
            return this.b.e;
        }
        return false;
    }

    public final int j() {
        if (this.b != null) {
            return this.b.getVolume();
        }
        return 0;
    }

    public final void k() {
        if (this.b == null) {
            return;
        }
        try {
            this.b.e();
            this.b.finalize();
        } catch (Throwable th) {
            km.b(g, "Error during videoview reset" + th.getMessage());
        }
    }

    public final int l() {
        if (this.b != null) {
            return this.b.getOffsetStartTime();
        }
        return 0;
    }

    public final void c(int i) {
        if (this.f2749a != null) {
            a();
            this.f2749a.d(i);
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void m() {
        this.e = 8;
    }

    @Override // com.flurry.sdk.gw.a
    public final void d(int i) {
        if (this.f2749a != null) {
            this.f2749a.d(i);
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void e(int i) {
        if (this.f2749a != null) {
            this.f2749a.e(i);
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void a(String str) {
        if (this.f) {
            this.c.show();
        } else {
            this.c.hide();
        }
        if (this.f2749a != null) {
            this.f2749a.a(str);
        }
        if (this.c != null && this.b != null) {
            this.c.setMediaPlayer(this.b);
        }
        if (this.c != null && (this.c instanceof gr)) {
            this.c.show();
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void a(String str, final float f, final float f2) {
        if (this.f2749a != null) {
            this.f2749a.a(str, f, f2);
        }
        jy.a().a(new ma() { // from class: com.flurry.sdk.gu.2
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (gu.this.c != null) {
                    gu.this.c.a(f, f2);
                }
            }
        });
    }

    @Override // com.flurry.sdk.gw.a
    public final void b(String str) {
        if (this.f2749a != null) {
            this.f2749a.b(str);
        }
        if (this.c != null) {
            this.c.k();
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void a(String str, int i, int i2) {
        if (this.f2749a != null) {
            this.f2749a.a(str, i, i2);
        }
    }

    @Override // com.flurry.sdk.gv.b
    public final void n() {
        if (this.f2749a != null) {
            this.f2749a.a();
        }
    }

    @Override // com.flurry.sdk.gv.b
    public final void o() {
        if (this.f2749a != null) {
            this.f2749a.y();
        }
    }

    @Override // com.flurry.sdk.gv.b
    public final void p() {
        if (this.f2749a != null) {
            this.f2749a.b();
        }
    }

    @Override // com.flurry.sdk.gw.a
    public final void a(final int i, final int i2) {
        jy.a().a(new ma() { // from class: com.flurry.sdk.gu.3
            @Override // com.flurry.sdk.ma
            public final void a() {
                if (gu.this.c != null) {
                    gu.this.c.b();
                }
            }
        });
    }

    @Override // com.flurry.sdk.gv.a
    public final void q() {
        this.c.hide();
        this.c.e();
        this.c.d();
        this.c.requestLayout();
        this.c.show();
        if (!this.b.isPlaying()) {
            a(b());
        }
    }

    @Override // com.flurry.sdk.gv.a
    public final void r() {
        if (this.b.isPlaying()) {
            a();
        }
        this.c.hide();
        this.c.f();
        this.c.c();
        this.c.requestLayout();
        this.c.show();
    }

    @Override // com.flurry.sdk.gv.a
    public final void s() {
        g();
        this.c.hide();
        this.c.g();
        this.c.j();
        this.c.requestLayout();
        this.c.show();
        if (this.f2749a != null) {
            this.f2749a.k();
        }
    }

    @Override // com.flurry.sdk.gv.a
    public final void t() {
        h();
        this.c.hide();
        this.c.i();
        this.c.h();
        this.c.requestLayout();
        this.c.show();
        if (this.f2749a != null) {
            this.f2749a.l();
        }
    }
}
