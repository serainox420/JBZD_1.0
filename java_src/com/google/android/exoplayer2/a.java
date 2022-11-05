package com.google.android.exoplayer2;

import com.facebook.common.time.Clock;
import java.io.IOException;
/* compiled from: BaseRenderer.java */
/* loaded from: classes2.dex */
public abstract class a implements j, k {

    /* renamed from: a  reason: collision with root package name */
    private final int f3144a;
    private l b;
    private int c;
    private int d;
    private com.google.android.exoplayer2.source.i e;
    private long f;
    private boolean g = true;
    private boolean h;

    public a(int i) {
        this.f3144a = i;
    }

    @Override // com.google.android.exoplayer2.j, com.google.android.exoplayer2.k
    public final int a() {
        return this.f3144a;
    }

    @Override // com.google.android.exoplayer2.j
    public final k b() {
        return this;
    }

    @Override // com.google.android.exoplayer2.j
    public final void a(int i) {
        this.c = i;
    }

    @Override // com.google.android.exoplayer2.j
    public com.google.android.exoplayer2.util.h c() {
        return null;
    }

    @Override // com.google.android.exoplayer2.j
    public final int d() {
        return this.d;
    }

    @Override // com.google.android.exoplayer2.j
    public final void a(l lVar, Format[] formatArr, com.google.android.exoplayer2.source.i iVar, long j, boolean z, long j2) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.b(this.d == 0);
        this.b = lVar;
        this.d = 1;
        a(z);
        a(formatArr, iVar, j2);
        a(j, z);
    }

    @Override // com.google.android.exoplayer2.j
    public final void e() throws ExoPlaybackException {
        boolean z = true;
        if (this.d != 1) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.b(z);
        this.d = 2;
        n();
    }

    @Override // com.google.android.exoplayer2.j
    public final void a(Format[] formatArr, com.google.android.exoplayer2.source.i iVar, long j) throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.b(!this.h);
        this.e = iVar;
        this.g = false;
        this.f = j;
        a(formatArr);
    }

    @Override // com.google.android.exoplayer2.j
    public final com.google.android.exoplayer2.source.i f() {
        return this.e;
    }

    @Override // com.google.android.exoplayer2.j
    public final boolean g() {
        return this.g;
    }

    @Override // com.google.android.exoplayer2.j
    public final void h() {
        this.h = true;
    }

    @Override // com.google.android.exoplayer2.j
    public final boolean i() {
        return this.h;
    }

    @Override // com.google.android.exoplayer2.j
    public final void j() throws IOException {
        this.e.b();
    }

    @Override // com.google.android.exoplayer2.j
    public final void a(long j) throws ExoPlaybackException {
        this.h = false;
        this.g = false;
        a(j, false);
    }

    @Override // com.google.android.exoplayer2.j
    public final void k() throws ExoPlaybackException {
        com.google.android.exoplayer2.util.a.b(this.d == 2);
        this.d = 1;
        o();
    }

    @Override // com.google.android.exoplayer2.j
    public final void l() {
        boolean z = true;
        if (this.d != 1) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.b(z);
        this.d = 0;
        p();
        this.e = null;
        this.h = false;
    }

    @Override // com.google.android.exoplayer2.k
    public int m() throws ExoPlaybackException {
        return 0;
    }

    @Override // com.google.android.exoplayer2.d.b
    public void a(int i, Object obj) throws ExoPlaybackException {
    }

    protected void a(boolean z) throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Format[] formatArr) throws ExoPlaybackException {
    }

    protected void a(long j, boolean z) throws ExoPlaybackException {
    }

    protected void n() throws ExoPlaybackException {
    }

    protected void o() throws ExoPlaybackException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final l q() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int r() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int a(h hVar, com.google.android.exoplayer2.a.e eVar, boolean z) {
        int a2 = this.e.a(hVar, eVar, z);
        if (a2 == -4) {
            if (eVar.c()) {
                this.g = true;
                return this.h ? -4 : -3;
            }
            eVar.c += this.f;
        } else if (a2 == -5) {
            Format format = hVar.f3299a;
            if (format.v != Clock.MAX_TIME) {
                hVar.f3299a = format.a(format.v + this.f);
            }
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean s() {
        return this.g ? this.h : this.e.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(long j) {
        this.e.a_(j - this.f);
    }
}
