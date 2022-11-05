package com.google.android.exoplayer2.text;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import java.util.Collections;
import java.util.List;
/* compiled from: TextRenderer.java */
/* loaded from: classes2.dex */
public final class j extends com.google.android.exoplayer2.a implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3457a;
    private final a b;
    private final g c;
    private final com.google.android.exoplayer2.h d;
    private boolean e;
    private boolean f;
    private f g;
    private h h;
    private i i;
    private i j;
    private int k;

    /* compiled from: TextRenderer.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(List<b> list);
    }

    public j(a aVar, Looper looper) {
        this(aVar, looper, g.f3456a);
    }

    public j(a aVar, Looper looper, g gVar) {
        super(3);
        this.b = (a) com.google.android.exoplayer2.util.a.a(aVar);
        this.f3457a = looper == null ? null : new Handler(looper, this);
        this.c = gVar;
        this.d = new com.google.android.exoplayer2.h();
    }

    @Override // com.google.android.exoplayer2.k
    public int a(Format format) {
        if (this.c.a(format)) {
            return 3;
        }
        return com.google.android.exoplayer2.util.i.c(format.f) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void a(Format[] formatArr) throws ExoPlaybackException {
        if (this.g != null) {
            this.g.d();
            this.h = null;
        }
        this.g = this.c.b(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.a
    protected void a(long j, boolean z) {
        x();
        v();
        this.g.c();
        this.e = false;
        this.f = false;
    }

    @Override // com.google.android.exoplayer2.j
    public void a(long j, long j2) throws ExoPlaybackException {
        boolean z;
        if (!this.f) {
            if (this.j == null) {
                this.g.a(j);
                try {
                    this.j = this.g.b();
                } catch (SubtitleDecoderException e) {
                    throw ExoPlaybackException.createForRenderer(e, r());
                }
            }
            if (d() == 2) {
                if (this.i != null) {
                    long w = w();
                    z = false;
                    while (w <= j) {
                        this.k++;
                        w = w();
                        z = true;
                    }
                } else {
                    z = false;
                }
                if (this.j != null) {
                    if (this.j.c()) {
                        if (!z && w() == Clock.MAX_TIME) {
                            if (this.i != null) {
                                this.i.e();
                                this.i = null;
                            }
                            this.j.e();
                            this.j = null;
                            this.f = true;
                        }
                    } else if (this.j.f3149a <= j) {
                        if (this.i != null) {
                            this.i.e();
                        }
                        this.i = this.j;
                        this.j = null;
                        this.k = this.i.a(j);
                        z = true;
                    }
                }
                if (z) {
                    a(this.i.b(j));
                }
                while (!this.e) {
                    try {
                        if (this.h == null) {
                            this.h = this.g.a();
                            if (this.h == null) {
                                return;
                            }
                        }
                        int a2 = a(this.d, (com.google.android.exoplayer2.a.e) this.h, false);
                        if (a2 == -4) {
                            if (this.h.c()) {
                                this.e = true;
                            } else {
                                this.h.d = this.d.f3299a.v;
                                this.h.f();
                            }
                            this.g.a((f) this.h);
                            this.h = null;
                        } else if (a2 == -3) {
                            return;
                        }
                    } catch (SubtitleDecoderException e2) {
                        throw ExoPlaybackException.createForRenderer(e2, r());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void p() {
        x();
        v();
        this.g.d();
        this.g = null;
        super.p();
    }

    @Override // com.google.android.exoplayer2.j
    public boolean u() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean t() {
        return true;
    }

    private void v() {
        this.h = null;
        this.k = -1;
        if (this.i != null) {
            this.i.e();
            this.i = null;
        }
        if (this.j != null) {
            this.j.e();
            this.j = null;
        }
    }

    private long w() {
        return (this.k == -1 || this.k >= this.i.b()) ? Clock.MAX_TIME : this.i.a(this.k);
    }

    private void a(List<b> list) {
        if (this.f3457a != null) {
            this.f3457a.obtainMessage(0, list).sendToTarget();
        } else {
            b(list);
        }
    }

    private void x() {
        a(Collections.emptyList());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                b((List) message.obj);
                return true;
            default:
                return false;
        }
    }

    private void b(List<b> list) {
        this.b.a(list);
    }
}
