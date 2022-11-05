package okio;

import com.facebook.internal.Utility;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Segment.java */
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    final byte[] f5873a;
    int b;
    int c;
    boolean d;
    boolean e;
    n f;
    n g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n() {
        this.f5873a = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        this.e = true;
        this.d = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(n nVar) {
        this(nVar.f5873a, nVar.b, nVar.c);
        nVar.d = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(byte[] bArr, int i, int i2) {
        this.f5873a = bArr;
        this.b = i;
        this.c = i2;
        this.e = false;
        this.d = true;
    }

    public n a() {
        n nVar = this.f != this ? this.f : null;
        this.g.f = this.f;
        this.f.g = this.g;
        this.f = null;
        this.g = null;
        return nVar;
    }

    public n a(n nVar) {
        nVar.g = this;
        nVar.f = this.f;
        this.f.g = nVar;
        this.f = nVar;
        return nVar;
    }

    public n a(int i) {
        n a2;
        if (i <= 0 || i > this.c - this.b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            a2 = new n(this);
        } else {
            a2 = o.a();
            System.arraycopy(this.f5873a, this.b, a2.f5873a, 0, i);
        }
        a2.c = a2.b + i;
        this.b += i;
        this.g.a(a2);
        return a2;
    }

    public void b() {
        if (this.g == this) {
            throw new IllegalStateException();
        }
        if (this.g.e) {
            int i = this.c - this.b;
            if (i <= (this.g.d ? 0 : this.g.b) + (8192 - this.g.c)) {
                a(this.g, i);
                a();
                o.a(this);
            }
        }
    }

    public void a(n nVar, int i) {
        if (!nVar.e) {
            throw new IllegalArgumentException();
        }
        if (nVar.c + i > 8192) {
            if (nVar.d) {
                throw new IllegalArgumentException();
            }
            if ((nVar.c + i) - nVar.b > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(nVar.f5873a, nVar.b, nVar.f5873a, 0, nVar.c - nVar.b);
            nVar.c -= nVar.b;
            nVar.b = 0;
        }
        System.arraycopy(this.f5873a, this.b, nVar.f5873a, nVar.c, i);
        nVar.c += i;
        this.b += i;
    }
}
