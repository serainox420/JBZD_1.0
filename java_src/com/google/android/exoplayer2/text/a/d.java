package com.google.android.exoplayer2.text.a;

import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import java.util.LinkedList;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CeaDecoder.java */
/* loaded from: classes2.dex */
public abstract class d implements com.google.android.exoplayer2.text.f {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<h> f3430a = new LinkedList<>();
    private final LinkedList<i> b;
    private final TreeSet<h> c;
    private h d;
    private long e;

    /* JADX WARN: Can't rename method to resolve collision */
    protected abstract void a(h hVar);

    protected abstract boolean e();

    protected abstract com.google.android.exoplayer2.text.e f();

    public d() {
        for (int i = 0; i < 10; i++) {
            this.f3430a.add(new h());
        }
        this.b = new LinkedList<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.b.add(new e(this));
        }
        this.c = new TreeSet<>();
    }

    @Override // com.google.android.exoplayer2.text.f
    public void a(long j) {
        this.e = j;
    }

    @Override // com.google.android.exoplayer2.a.c
    /* renamed from: h */
    public h a() throws SubtitleDecoderException {
        com.google.android.exoplayer2.util.a.b(this.d == null);
        if (this.f3430a.isEmpty()) {
            return null;
        }
        this.d = this.f3430a.pollFirst();
        return this.d;
    }

    @Override // com.google.android.exoplayer2.a.c
    /* renamed from: b */
    public void a(h hVar) throws SubtitleDecoderException {
        boolean z = true;
        com.google.android.exoplayer2.util.a.a(hVar != null);
        if (hVar != this.d) {
            z = false;
        }
        com.google.android.exoplayer2.util.a.a(z);
        if (hVar.c_()) {
            c(hVar);
        } else {
            this.c.add(hVar);
        }
        this.d = null;
    }

    @Override // com.google.android.exoplayer2.a.c
    /* renamed from: g */
    public i b() throws SubtitleDecoderException {
        if (this.b.isEmpty()) {
            return null;
        }
        while (!this.c.isEmpty() && this.c.first().c <= this.e) {
            h pollFirst = this.c.pollFirst();
            if (pollFirst.c()) {
                i pollFirst2 = this.b.pollFirst();
                pollFirst2.b(4);
                c(pollFirst);
                return pollFirst2;
            }
            a(pollFirst);
            if (e()) {
                com.google.android.exoplayer2.text.e f = f();
                if (!pollFirst.c_()) {
                    i pollFirst3 = this.b.pollFirst();
                    pollFirst3.a(pollFirst.c, f, Clock.MAX_TIME);
                    c(pollFirst);
                    return pollFirst3;
                }
            }
            c(pollFirst);
        }
        return null;
    }

    private void c(h hVar) {
        hVar.a();
        this.f3430a.add(hVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(i iVar) {
        iVar.a();
        this.b.add(iVar);
    }

    @Override // com.google.android.exoplayer2.a.c
    public void c() {
        this.e = 0L;
        while (!this.c.isEmpty()) {
            c(this.c.pollFirst());
        }
        if (this.d != null) {
            c(this.d);
            this.d = null;
        }
    }

    @Override // com.google.android.exoplayer2.a.c
    public void d() {
    }
}
