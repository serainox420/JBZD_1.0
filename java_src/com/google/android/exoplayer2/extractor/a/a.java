package com.google.android.exoplayer2.extractor.a;

import com.flurry.android.Constants;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.g;
import java.io.IOException;
import java.util.Stack;
/* compiled from: DefaultEbmlReader.java */
/* loaded from: classes2.dex */
final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f3202a = new byte[8];
    private final Stack<C0132a> b = new Stack<>();
    private final f c = new f();
    private c d;
    private int e;
    private int f;
    private long g;

    @Override // com.google.android.exoplayer2.extractor.a.b
    public void a(c cVar) {
        this.d = cVar;
    }

    @Override // com.google.android.exoplayer2.extractor.a.b
    public void a() {
        this.e = 0;
        this.b.clear();
        this.c.a();
    }

    @Override // com.google.android.exoplayer2.extractor.a.b
    public boolean a(g gVar) throws IOException, InterruptedException {
        com.google.android.exoplayer2.util.a.b(this.d != null);
        while (true) {
            if (this.b.isEmpty() || gVar.c() < this.b.peek().b) {
                if (this.e == 0) {
                    long a2 = this.c.a(gVar, true, false, 4);
                    if (a2 == -2) {
                        a2 = b(gVar);
                    }
                    if (a2 == -1) {
                        return false;
                    }
                    this.f = (int) a2;
                    this.e = 1;
                }
                if (this.e == 1) {
                    this.g = this.c.a(gVar, false, true, 8);
                    this.e = 2;
                }
                int a3 = this.d.a(this.f);
                switch (a3) {
                    case 0:
                        gVar.b((int) this.g);
                        this.e = 0;
                    case 1:
                        long c = gVar.c();
                        this.b.add(new C0132a(this.f, this.g + c));
                        this.d.a(this.f, c, this.g);
                        this.e = 0;
                        return true;
                    case 2:
                        if (this.g > 8) {
                            throw new ParserException("Invalid integer size: " + this.g);
                        }
                        this.d.a(this.f, a(gVar, (int) this.g));
                        this.e = 0;
                        return true;
                    case 3:
                        if (this.g > 2147483647L) {
                            throw new ParserException("String element size: " + this.g);
                        }
                        this.d.a(this.f, c(gVar, (int) this.g));
                        this.e = 0;
                        return true;
                    case 4:
                        this.d.a(this.f, (int) this.g, gVar);
                        this.e = 0;
                        return true;
                    case 5:
                        if (this.g != 4 && this.g != 8) {
                            throw new ParserException("Invalid float size: " + this.g);
                        }
                        this.d.a(this.f, b(gVar, (int) this.g));
                        this.e = 0;
                        return true;
                    default:
                        throw new ParserException("Invalid element type " + a3);
                }
            } else {
                this.d.c(this.b.pop().f3203a);
                return true;
            }
        }
    }

    private long b(g gVar) throws IOException, InterruptedException {
        gVar.a();
        while (true) {
            gVar.c(this.f3202a, 0, 4);
            int a2 = f.a(this.f3202a[0]);
            if (a2 != -1 && a2 <= 4) {
                int a3 = (int) f.a(this.f3202a, a2, false);
                if (this.d.b(a3)) {
                    gVar.b(a2);
                    return a3;
                }
            }
            gVar.b(1);
        }
    }

    private long a(g gVar, int i) throws IOException, InterruptedException {
        gVar.b(this.f3202a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.f3202a[i2] & Constants.UNKNOWN);
        }
        return j;
    }

    private double b(g gVar, int i) throws IOException, InterruptedException {
        long a2 = a(gVar, i);
        if (i == 4) {
            return Float.intBitsToFloat((int) a2);
        }
        return Double.longBitsToDouble(a2);
    }

    private String c(g gVar, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        gVar.b(bArr, 0, i);
        return new String(bArr);
    }

    /* compiled from: DefaultEbmlReader.java */
    /* renamed from: com.google.android.exoplayer2.extractor.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0132a {

        /* renamed from: a  reason: collision with root package name */
        private final int f3203a;
        private final long b;

        private C0132a(int i, long j) {
            this.f3203a = i;
            this.b = j;
        }
    }
}
