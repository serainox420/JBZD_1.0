package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.a.e;
import com.google.android.exoplayer2.h;
import java.util.Arrays;
/* compiled from: MetadataRenderer.java */
/* loaded from: classes2.dex */
public final class d extends com.google.android.exoplayer2.a implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    private final b f3311a;
    private final a b;
    private final Handler c;
    private final h d;
    private final c e;
    private final Metadata[] f;
    private final long[] g;
    private int h;
    private int i;
    private com.google.android.exoplayer2.metadata.a j;
    private boolean k;

    /* compiled from: MetadataRenderer.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(Metadata metadata);
    }

    public d(a aVar, Looper looper) {
        this(aVar, looper, b.f3310a);
    }

    public d(a aVar, Looper looper, b bVar) {
        super(4);
        this.b = (a) com.google.android.exoplayer2.util.a.a(aVar);
        this.c = looper == null ? null : new Handler(looper, this);
        this.f3311a = (b) com.google.android.exoplayer2.util.a.a(bVar);
        this.d = new h();
        this.e = new c();
        this.f = new Metadata[5];
        this.g = new long[5];
    }

    @Override // com.google.android.exoplayer2.k
    public int a(Format format) {
        return this.f3311a.a(format) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void a(Format[] formatArr) throws ExoPlaybackException {
        this.j = this.f3311a.b(formatArr[0]);
    }

    @Override // com.google.android.exoplayer2.a
    protected void a(long j, boolean z) {
        v();
        this.k = false;
    }

    @Override // com.google.android.exoplayer2.j
    public void a(long j, long j2) throws ExoPlaybackException {
        if (!this.k && this.i < 5) {
            this.e.a();
            if (a(this.d, (e) this.e, false) == -4) {
                if (this.e.c()) {
                    this.k = true;
                } else if (!this.e.c_()) {
                    this.e.d = this.d.f3299a.v;
                    this.e.f();
                    try {
                        int i = (this.h + this.i) % 5;
                        this.f[i] = this.j.a(this.e);
                        this.g[i] = this.e.c;
                        this.i++;
                    } catch (MetadataDecoderException e) {
                        throw ExoPlaybackException.createForRenderer(e, r());
                    }
                }
            }
        }
        if (this.i > 0 && this.g[this.h] <= j) {
            a(this.f[this.h]);
            this.f[this.h] = null;
            this.h = (this.h + 1) % 5;
            this.i--;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.a
    public void p() {
        v();
        this.j = null;
        super.p();
    }

    @Override // com.google.android.exoplayer2.j
    public boolean u() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.j
    public boolean t() {
        return true;
    }

    private void a(Metadata metadata) {
        if (this.c != null) {
            this.c.obtainMessage(0, metadata).sendToTarget();
        } else {
            b(metadata);
        }
    }

    private void v() {
        Arrays.fill(this.f, (Object) null);
        this.h = 0;
        this.i = 0;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                b((Metadata) message.obj);
                return true;
            default:
                throw new IllegalStateException();
        }
    }

    private void b(Metadata metadata) {
        this.b.a(metadata);
    }
}
