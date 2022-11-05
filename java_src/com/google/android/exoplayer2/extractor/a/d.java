package com.google.android.exoplayer2.extractor.a;

import android.util.SparseArray;
import com.facebook.imageutils.JfifUtil;
import com.facebook.internal.Utility;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.i;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.g;
import com.google.android.exoplayer2.util.j;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* compiled from: MatroskaExtractor.java */
/* loaded from: classes2.dex */
public final class d implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final i f3204a = new i() { // from class: com.google.android.exoplayer2.extractor.a.d.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new d()};
        }
    };
    private static final byte[] b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] c = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID d = new UUID(72057594037932032L, -9223371306706625679L);
    private boolean A;
    private long B;
    private long C;
    private long D;
    private g E;
    private g F;
    private boolean G;
    private int H;
    private long I;
    private long J;
    private int K;
    private int L;
    private int[] M;
    private int N;
    private int O;
    private int P;
    private int Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private boolean U;
    private byte V;
    private int W;
    private int X;
    private int Y;
    private boolean Z;
    private boolean aa;
    private h ab;
    private final com.google.android.exoplayer2.extractor.a.b e;
    private final f f;
    private final SparseArray<b> g;
    private final l h;
    private final l i;
    private final l j;
    private final l k;
    private final l l;
    private final l m;
    private final l n;
    private final l o;
    private final l p;
    private ByteBuffer q;
    private long r;
    private long s;
    private long t;
    private long u;
    private long v;
    private b w;
    private boolean x;
    private int y;
    private long z;

    public d() {
        this(new com.google.android.exoplayer2.extractor.a.a());
    }

    d(com.google.android.exoplayer2.extractor.a.b bVar) {
        this.s = -1L;
        this.t = -9223372036854775807L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.B = -1L;
        this.C = -1L;
        this.D = -9223372036854775807L;
        this.e = bVar;
        this.e.a(new a());
        this.f = new f();
        this.g = new SparseArray<>();
        this.j = new l(4);
        this.k = new l(ByteBuffer.allocate(4).putInt(-1).array());
        this.l = new l(4);
        this.h = new l(j.f3507a);
        this.i = new l(4);
        this.m = new l();
        this.n = new l();
        this.o = new l(8);
        this.p = new l();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        return new e().a(gVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(h hVar) {
        this.ab = hVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.D = -9223372036854775807L;
        this.H = 0;
        this.e.a();
        this.f.a();
        b();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        this.Z = false;
        boolean z = true;
        while (z && !this.Z) {
            z = this.e.a(gVar);
            if (z && a(lVar, gVar.c())) {
                return 1;
            }
        }
        return !z ? -1 : 0;
    }

    int a(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case JfifUtil.MARKER_RST7 /* 215 */:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
                return 5;
            default:
                return 0;
        }
    }

    boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    void a(int i, long j, long j2) throws ParserException {
        switch (i) {
            case 160:
                this.aa = false;
                return;
            case 174:
                this.w = new b();
                return;
            case 187:
                this.G = false;
                return;
            case 19899:
                this.y = -1;
                this.z = -1L;
                return;
            case 20533:
                this.w.e = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                if (this.s != -1 && this.s != j) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                this.s = j;
                this.r = j2;
                return;
            case 475249515:
                this.E = new g();
                this.F = new g();
                return;
            case 524531317:
                if (!this.x) {
                    if (this.B != -1) {
                        this.A = true;
                        return;
                    }
                    this.ab.a(new m.a(this.v));
                    this.x = true;
                    return;
                }
                return;
        }
    }

    void c(int i) throws ParserException {
        switch (i) {
            case 160:
                if (this.H == 2) {
                    if (!this.aa) {
                        this.P |= 1;
                    }
                    a(this.g.get(this.N), this.I);
                    this.H = 0;
                    return;
                }
                return;
            case 174:
                if (a(this.w.f3206a)) {
                    this.w.a(this.ab, this.w.b);
                    this.g.put(this.w.b, this.w);
                }
                this.w = null;
                return;
            case 19899:
                if (this.y == -1 || this.z == -1) {
                    throw new ParserException("Mandatory element SeekID or SeekPosition not found");
                }
                if (this.y == 475249515) {
                    this.B = this.z;
                    return;
                }
                return;
            case 25152:
                if (this.w.e) {
                    if (this.w.g == null) {
                        throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                    }
                    this.w.i = new DrmInitData(new DrmInitData.SchemeData(com.google.android.exoplayer2.b.b, "video/webm", this.w.g));
                    return;
                }
                return;
            case 28032:
                if (this.w.e && this.w.f != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
                return;
            case 357149030:
                if (this.t == -9223372036854775807L) {
                    this.t = 1000000L;
                }
                if (this.u != -9223372036854775807L) {
                    this.v = a(this.u);
                    return;
                }
                return;
            case 374648427:
                if (this.g.size() == 0) {
                    throw new ParserException("No valid tracks were found");
                }
                this.ab.a();
                return;
            case 475249515:
                if (!this.x) {
                    this.ab.a(d());
                    this.x = true;
                    return;
                }
                return;
            default:
                return;
        }
    }

    void a(int i, long j) throws ParserException {
        boolean z = true;
        switch (i) {
            case 131:
                this.w.c = (int) j;
                return;
            case 136:
                b bVar = this.w;
                if (j != 1) {
                    z = false;
                }
                bVar.v = z;
                return;
            case 155:
                this.J = a(j);
                return;
            case 159:
                this.w.q = (int) j;
                return;
            case 176:
                this.w.j = (int) j;
                return;
            case 179:
                this.E.a(a(j));
                return;
            case 186:
                this.w.k = (int) j;
                return;
            case JfifUtil.MARKER_RST7 /* 215 */:
                this.w.b = (int) j;
                return;
            case 231:
                this.D = a(j);
                return;
            case 241:
                if (!this.G) {
                    this.F.a(j);
                    this.G = true;
                    return;
                }
                return;
            case 251:
                this.aa = true;
                return;
            case 16980:
                if (j != 3) {
                    throw new ParserException("ContentCompAlgo " + j + " not supported");
                }
                return;
            case 17029:
                if (j < 1 || j > 2) {
                    throw new ParserException("DocTypeReadVersion " + j + " not supported");
                }
                return;
            case 17143:
                if (j != 1) {
                    throw new ParserException("EBMLReadVersion " + j + " not supported");
                }
                return;
            case 18401:
                if (j != 5) {
                    throw new ParserException("ContentEncAlgo " + j + " not supported");
                }
                return;
            case 18408:
                if (j != 1) {
                    throw new ParserException("AESSettingsCipherMode " + j + " not supported");
                }
                return;
            case 20529:
                if (j != 0) {
                    throw new ParserException("ContentEncodingOrder " + j + " not supported");
                }
                return;
            case 20530:
                if (j != 1) {
                    throw new ParserException("ContentEncodingScope " + j + " not supported");
                }
                return;
            case 21420:
                this.z = this.s + j;
                return;
            case 21432:
                switch ((int) j) {
                    case 0:
                        this.w.p = 0;
                        return;
                    case 1:
                        this.w.p = 2;
                        return;
                    case 3:
                        this.w.p = 1;
                        return;
                    case 15:
                        this.w.p = 3;
                        return;
                    default:
                        return;
                }
            case 21680:
                this.w.l = (int) j;
                return;
            case 21682:
                this.w.n = (int) j;
                return;
            case 21690:
                this.w.m = (int) j;
                return;
            case 21930:
                b bVar2 = this.w;
                if (j != 1) {
                    z = false;
                }
                bVar2.w = z;
                return;
            case 22186:
                this.w.t = j;
                return;
            case 22203:
                this.w.u = j;
                return;
            case 25188:
                this.w.r = (int) j;
                return;
            case 2352003:
                this.w.d = (int) j;
                return;
            case 2807729:
                this.t = j;
                return;
            default:
                return;
        }
    }

    void a(int i, double d2) {
        switch (i) {
            case 181:
                this.w.s = (int) d2;
                return;
            case 17545:
                this.u = (long) d2;
                return;
            default:
                return;
        }
    }

    void a(int i, String str) throws ParserException {
        switch (i) {
            case 134:
                this.w.f3206a = str;
                return;
            case 17026:
                if (!"webm".equals(str) && !"matroska".equals(str)) {
                    throw new ParserException("DocType " + str + " not supported");
                }
                return;
            case 2274716:
                this.w.z = str;
                return;
            default:
                return;
        }
    }

    void a(int i, int i2, com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        int i3;
        switch (i) {
            case 161:
            case 163:
                if (this.H == 0) {
                    this.N = (int) this.f.a(gVar, false, true, 8);
                    this.O = this.f.b();
                    this.J = -9223372036854775807L;
                    this.H = 1;
                    this.j.a();
                }
                b bVar = this.g.get(this.N);
                if (bVar == null) {
                    gVar.b(i2 - this.O);
                    this.H = 0;
                    return;
                }
                if (this.H == 1) {
                    a(gVar, 3);
                    int i4 = (this.j.f3511a[2] & 6) >> 1;
                    if (i4 == 0) {
                        this.L = 1;
                        this.M = a(this.M, 1);
                        this.M[0] = (i2 - this.O) - 3;
                    } else if (i != 163) {
                        throw new ParserException("Lacing only supported in SimpleBlocks.");
                    } else {
                        a(gVar, 4);
                        this.L = (this.j.f3511a[3] & Constants.UNKNOWN) + 1;
                        this.M = a(this.M, this.L);
                        if (i4 == 2) {
                            Arrays.fill(this.M, 0, this.L, ((i2 - this.O) - 4) / this.L);
                        } else if (i4 == 1) {
                            int i5 = 0;
                            int i6 = 4;
                            for (int i7 = 0; i7 < this.L - 1; i7++) {
                                this.M[i7] = 0;
                                do {
                                    i6++;
                                    a(gVar, i6);
                                    i3 = this.j.f3511a[i6 - 1] & Constants.UNKNOWN;
                                    int[] iArr = this.M;
                                    iArr[i7] = iArr[i7] + i3;
                                } while (i3 == 255);
                                i5 += this.M[i7];
                            }
                            this.M[this.L - 1] = ((i2 - this.O) - i6) - i5;
                        } else if (i4 == 3) {
                            int i8 = 0;
                            int i9 = 4;
                            for (int i10 = 0; i10 < this.L - 1; i10++) {
                                this.M[i10] = 0;
                                i9++;
                                a(gVar, i9);
                                if (this.j.f3511a[i9 - 1] == 0) {
                                    throw new ParserException("No valid varint length mask found");
                                }
                                long j = 0;
                                int i11 = 0;
                                while (true) {
                                    int i12 = i11;
                                    if (i12 < 8) {
                                        int i13 = 1 << (7 - i12);
                                        if ((this.j.f3511a[i9 - 1] & i13) == 0) {
                                            i11 = i12 + 1;
                                        } else {
                                            int i14 = i9 - 1;
                                            i9 += i12;
                                            a(gVar, i9);
                                            j = this.j.f3511a[i14] & Constants.UNKNOWN & (i13 ^ (-1));
                                            for (int i15 = i14 + 1; i15 < i9; i15++) {
                                                j = (this.j.f3511a[i15] & Constants.UNKNOWN) | (j << 8);
                                            }
                                            if (i10 > 0) {
                                                j -= (1 << ((i12 * 7) + 6)) - 1;
                                            }
                                        }
                                    }
                                }
                                if (j < -2147483648L || j > 2147483647L) {
                                    throw new ParserException("EBML lacing sample size out of range.");
                                }
                                int i16 = (int) j;
                                int[] iArr2 = this.M;
                                if (i10 != 0) {
                                    i16 += this.M[i10 - 1];
                                }
                                iArr2[i10] = i16;
                                i8 += this.M[i10];
                            }
                            this.M[this.L - 1] = ((i2 - this.O) - i9) - i8;
                        } else {
                            throw new ParserException("Unexpected lacing value: " + i4);
                        }
                    }
                    this.I = this.D + a((this.j.f3511a[0] << 8) | (this.j.f3511a[1] & Constants.UNKNOWN));
                    this.P = ((this.j.f3511a[2] & 8) == 8 ? Integer.MIN_VALUE : 0) | (bVar.c == 2 || (i == 163 && (this.j.f3511a[2] & 128) == 128) ? 1 : 0);
                    this.H = 2;
                    this.K = 0;
                }
                if (i == 163) {
                    while (this.K < this.L) {
                        a(gVar, bVar, this.M[this.K]);
                        a(bVar, this.I + ((this.K * bVar.d) / 1000));
                        this.K++;
                    }
                    this.H = 0;
                    return;
                }
                a(gVar, bVar, this.M[0]);
                return;
            case 16981:
                this.w.f = new byte[i2];
                gVar.b(this.w.f, 0, i2);
                return;
            case 18402:
                this.w.g = new byte[i2];
                gVar.b(this.w.g, 0, i2);
                return;
            case 21419:
                Arrays.fill(this.l.f3511a, (byte) 0);
                gVar.b(this.l.f3511a, 4 - i2, i2);
                this.l.c(0);
                this.y = (int) this.l.k();
                return;
            case 25506:
                this.w.h = new byte[i2];
                gVar.b(this.w.h, 0, i2);
                return;
            case 30322:
                this.w.o = new byte[i2];
                gVar.b(this.w.o, 0, i2);
                return;
            default:
                throw new ParserException("Unexpected id: " + i);
        }
    }

    private void a(b bVar, long j) {
        if ("S_TEXT/UTF8".equals(bVar.f3206a)) {
            a(bVar);
        }
        bVar.x.a(j, this.P, this.Y, 0, bVar.g);
        this.Z = true;
        b();
    }

    private void b() {
        this.Q = 0;
        this.Y = 0;
        this.X = 0;
        this.R = false;
        this.S = false;
        this.U = false;
        this.W = 0;
        this.V = (byte) 0;
        this.T = false;
        this.m.a();
    }

    private void a(com.google.android.exoplayer2.extractor.g gVar, int i) throws IOException, InterruptedException {
        if (this.j.c() < i) {
            if (this.j.e() < i) {
                this.j.a(Arrays.copyOf(this.j.f3511a, Math.max(this.j.f3511a.length * 2, i)), this.j.c());
            }
            gVar.b(this.j.f3511a, this.j.c(), i - this.j.c());
            this.j.b(i);
        }
    }

    private void a(com.google.android.exoplayer2.extractor.g gVar, b bVar, int i) throws IOException, InterruptedException {
        if ("S_TEXT/UTF8".equals(bVar.f3206a)) {
            int length = b.length + i;
            if (this.n.e() < length) {
                this.n.f3511a = Arrays.copyOf(b, length + i);
            }
            gVar.b(this.n.f3511a, b.length, i);
            this.n.c(0);
            this.n.b(length);
            return;
        }
        n nVar = bVar.x;
        if (!this.R) {
            if (bVar.e) {
                this.P &= -1073741825;
                if (!this.S) {
                    gVar.b(this.j.f3511a, 0, 1);
                    this.Q++;
                    if ((this.j.f3511a[0] & 128) == 128) {
                        throw new ParserException("Extension bit is set in signal byte");
                    }
                    this.V = this.j.f3511a[0];
                    this.S = true;
                }
                if ((this.V & 1) == 1) {
                    boolean z = (this.V & 2) == 2;
                    this.P |= 1073741824;
                    if (!this.T) {
                        gVar.b(this.o.f3511a, 0, 8);
                        this.Q += 8;
                        this.T = true;
                        this.j.f3511a[0] = (byte) ((z ? 128 : 0) | 8);
                        this.j.c(0);
                        nVar.a(this.j, 1);
                        this.Y++;
                        this.o.c(0);
                        nVar.a(this.o, 8);
                        this.Y += 8;
                    }
                    if (z) {
                        if (!this.U) {
                            gVar.b(this.j.f3511a, 0, 1);
                            this.Q++;
                            this.j.c(0);
                            this.W = this.j.f();
                            this.U = true;
                        }
                        int i2 = this.W * 4;
                        this.j.a(i2);
                        gVar.b(this.j.f3511a, 0, i2);
                        this.Q = i2 + this.Q;
                        short s = (short) ((this.W / 2) + 1);
                        int i3 = (s * 6) + 2;
                        if (this.q == null || this.q.capacity() < i3) {
                            this.q = ByteBuffer.allocate(i3);
                        }
                        this.q.position(0);
                        this.q.putShort(s);
                        int i4 = 0;
                        int i5 = 0;
                        while (i4 < this.W) {
                            int s2 = this.j.s();
                            if (i4 % 2 == 0) {
                                this.q.putShort((short) (s2 - i5));
                            } else {
                                this.q.putInt(s2 - i5);
                            }
                            i4++;
                            i5 = s2;
                        }
                        int i6 = (i - this.Q) - i5;
                        if (this.W % 2 == 1) {
                            this.q.putInt(i6);
                        } else {
                            this.q.putShort((short) i6);
                            this.q.putInt(0);
                        }
                        this.p.a(this.q.array(), i3);
                        nVar.a(this.p, i3);
                        this.Y += i3;
                    }
                }
            } else if (bVar.f != null) {
                this.m.a(bVar.f, bVar.f.length);
            }
            this.R = true;
        }
        int c2 = this.m.c() + i;
        if ("V_MPEG4/ISO/AVC".equals(bVar.f3206a) || "V_MPEGH/ISO/HEVC".equals(bVar.f3206a)) {
            byte[] bArr = this.i.f3511a;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i7 = bVar.y;
            int i8 = 4 - bVar.y;
            while (this.Q < c2) {
                if (this.X == 0) {
                    a(gVar, bArr, i8, i7);
                    this.i.c(0);
                    this.X = this.i.s();
                    this.h.c(0);
                    nVar.a(this.h, 4);
                    this.Y += 4;
                } else {
                    this.X -= a(gVar, nVar, this.X);
                }
            }
        } else {
            while (this.Q < c2) {
                a(gVar, nVar, c2 - this.Q);
            }
        }
        if ("A_VORBIS".equals(bVar.f3206a)) {
            this.k.c(0);
            nVar.a(this.k, 4);
            this.Y += 4;
        }
    }

    private void a(b bVar) {
        a(this.n.f3511a, this.J);
        bVar.x.a(this.n, this.n.c());
        this.Y += this.n.c();
    }

    private static void a(byte[] bArr, long j) {
        byte[] c2;
        if (j == -9223372036854775807L) {
            c2 = c;
        } else {
            int i = (int) (j / 3600000000L);
            long j2 = j - (i * 3600000000L);
            int i2 = (int) (j2 / 60000000);
            long j3 = j2 - (60000000 * i2);
            int i3 = (int) (j3 / 1000000);
            c2 = v.c(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j3 - (1000000 * i3)) / 1000))));
        }
        System.arraycopy(c2, 0, bArr, 19, 12);
    }

    private void a(com.google.android.exoplayer2.extractor.g gVar, byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int min = Math.min(i2, this.m.b());
        gVar.b(bArr, i + min, i2 - min);
        if (min > 0) {
            this.m.a(bArr, i, min);
        }
        this.Q += i2;
    }

    private int a(com.google.android.exoplayer2.extractor.g gVar, n nVar, int i) throws IOException, InterruptedException {
        int a2;
        int b2 = this.m.b();
        if (b2 > 0) {
            a2 = Math.min(i, b2);
            nVar.a(this.m, a2);
        } else {
            a2 = nVar.a(gVar, i, false);
        }
        this.Q += a2;
        this.Y += a2;
        return a2;
    }

    private m d() {
        if (this.s == -1 || this.v == -9223372036854775807L || this.E == null || this.E.a() == 0 || this.F == null || this.F.a() != this.E.a()) {
            this.E = null;
            this.F = null;
            return new m.a(this.v);
        }
        int a2 = this.E.a();
        int[] iArr = new int[a2];
        long[] jArr = new long[a2];
        long[] jArr2 = new long[a2];
        long[] jArr3 = new long[a2];
        for (int i = 0; i < a2; i++) {
            jArr3[i] = this.E.a(i);
            jArr[i] = this.s + this.F.a(i);
        }
        for (int i2 = 0; i2 < a2 - 1; i2++) {
            iArr[i2] = (int) (jArr[i2 + 1] - jArr[i2]);
            jArr2[i2] = jArr3[i2 + 1] - jArr3[i2];
        }
        iArr[a2 - 1] = (int) ((this.s + this.r) - jArr[a2 - 1]);
        jArr2[a2 - 1] = this.v - jArr3[a2 - 1];
        this.E = null;
        this.F = null;
        return new com.google.android.exoplayer2.extractor.a(iArr, jArr, jArr2, jArr3);
    }

    private boolean a(com.google.android.exoplayer2.extractor.l lVar, long j) {
        if (this.A) {
            this.C = j;
            lVar.f3290a = this.B;
            this.A = false;
            return true;
        } else if (!this.x || this.C == -1) {
            return false;
        } else {
            lVar.f3290a = this.C;
            this.C = -1L;
            return true;
        }
    }

    private long a(long j) throws ParserException {
        if (this.t == -9223372036854775807L) {
            throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
        }
        return v.a(j, this.t, 1000L);
    }

    private static boolean a(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str);
    }

    private static int[] a(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        return iArr.length < i ? new int[Math.max(iArr.length * 2, i)] : iArr;
    }

    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes2.dex */
    private final class a implements c {
        private a() {
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public int a(int i) {
            return d.this.a(i);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public boolean b(int i) {
            return d.this.b(i);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void a(int i, long j, long j2) throws ParserException {
            d.this.a(i, j, j2);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void c(int i) throws ParserException {
            d.this.c(i);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void a(int i, long j) throws ParserException {
            d.this.a(i, j);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void a(int i, double d) throws ParserException {
            d.this.a(i, d);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void a(int i, String str) throws ParserException {
            d.this.a(i, str);
        }

        @Override // com.google.android.exoplayer2.extractor.a.c
        public void a(int i, int i2, com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
            d.this.a(i, i2, gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MatroskaExtractor.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public String f3206a;
        public int b;
        public int c;
        public int d;
        public boolean e;
        public byte[] f;
        public byte[] g;
        public byte[] h;
        public DrmInitData i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public byte[] o;
        public int p;
        public int q;
        public int r;
        public int s;
        public long t;
        public long u;
        public boolean v;
        public boolean w;
        public n x;
        public int y;
        private String z;

        private b() {
            this.j = -1;
            this.k = -1;
            this.l = -1;
            this.m = -1;
            this.n = 0;
            this.o = null;
            this.p = -1;
            this.q = 1;
            this.r = -1;
            this.s = 8000;
            this.t = 0L;
            this.u = 0L;
            this.w = true;
            this.z = "eng";
        }

        public void a(h hVar, int i) throws ParserException {
            String str;
            Format a2;
            int i2;
            int i3 = -1;
            int i4 = -1;
            List list = null;
            String str2 = this.f3206a;
            char c = 65535;
            switch (str2.hashCode()) {
                case -2095576542:
                    if (str2.equals("V_MPEG4/ISO/AP")) {
                        c = 5;
                        break;
                    }
                    break;
                case -2095575984:
                    if (str2.equals("V_MPEG4/ISO/SP")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1985379776:
                    if (str2.equals("A_MS/ACM")) {
                        c = 22;
                        break;
                    }
                    break;
                case -1784763192:
                    if (str2.equals("A_TRUEHD")) {
                        c = 17;
                        break;
                    }
                    break;
                case -1730367663:
                    if (str2.equals("A_VORBIS")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -1482641358:
                    if (str2.equals("A_MPEG/L2")) {
                        c = '\r';
                        break;
                    }
                    break;
                case -1482641357:
                    if (str2.equals("A_MPEG/L3")) {
                        c = 14;
                        break;
                    }
                    break;
                case -1373388978:
                    if (str2.equals("V_MS/VFW/FOURCC")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -538363189:
                    if (str2.equals("V_MPEG4/ISO/ASP")) {
                        c = 4;
                        break;
                    }
                    break;
                case -538363109:
                    if (str2.equals("V_MPEG4/ISO/AVC")) {
                        c = 6;
                        break;
                    }
                    break;
                case -425012669:
                    if (str2.equals("S_VOBSUB")) {
                        c = 25;
                        break;
                    }
                    break;
                case -356037306:
                    if (str2.equals("A_DTS/LOSSLESS")) {
                        c = 20;
                        break;
                    }
                    break;
                case 62923557:
                    if (str2.equals("A_AAC")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 62923603:
                    if (str2.equals("A_AC3")) {
                        c = 15;
                        break;
                    }
                    break;
                case 62927045:
                    if (str2.equals("A_DTS")) {
                        c = 18;
                        break;
                    }
                    break;
                case 82338133:
                    if (str2.equals("V_VP8")) {
                        c = 0;
                        break;
                    }
                    break;
                case 82338134:
                    if (str2.equals("V_VP9")) {
                        c = 1;
                        break;
                    }
                    break;
                case 99146302:
                    if (str2.equals("S_HDMV/PGS")) {
                        c = 26;
                        break;
                    }
                    break;
                case 444813526:
                    if (str2.equals("V_THEORA")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 542569478:
                    if (str2.equals("A_DTS/EXPRESS")) {
                        c = 19;
                        break;
                    }
                    break;
                case 725957860:
                    if (str2.equals("A_PCM/INT/LIT")) {
                        c = 23;
                        break;
                    }
                    break;
                case 855502857:
                    if (str2.equals("V_MPEGH/ISO/HEVC")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1422270023:
                    if (str2.equals("S_TEXT/UTF8")) {
                        c = 24;
                        break;
                    }
                    break;
                case 1809237540:
                    if (str2.equals("V_MPEG2")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1950749482:
                    if (str2.equals("A_EAC3")) {
                        c = 16;
                        break;
                    }
                    break;
                case 1950789798:
                    if (str2.equals("A_FLAC")) {
                        c = 21;
                        break;
                    }
                    break;
                case 1951062397:
                    if (str2.equals("A_OPUS")) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    str = "video/x-vnd.on2.vp8";
                    break;
                case 1:
                    str = "video/x-vnd.on2.vp9";
                    break;
                case 2:
                    str = "video/mpeg2";
                    break;
                case 3:
                case 4:
                case 5:
                    str = "video/mp4v-es";
                    list = this.h == null ? null : Collections.singletonList(this.h);
                    break;
                case 6:
                    str = "video/avc";
                    com.google.android.exoplayer2.c.a a3 = com.google.android.exoplayer2.c.a.a(new l(this.h));
                    list = a3.f3182a;
                    this.y = a3.b;
                    break;
                case 7:
                    str = "video/hevc";
                    com.google.android.exoplayer2.c.b a4 = com.google.android.exoplayer2.c.b.a(new l(this.h));
                    list = a4.f3183a;
                    this.y = a4.b;
                    break;
                case '\b':
                    list = a(new l(this.h));
                    str = list == null ? "video/x-unknown" : "video/wvc1";
                    break;
                case '\t':
                    str = "video/x-unknown";
                    break;
                case '\n':
                    str = "audio/vorbis";
                    i3 = Utility.DEFAULT_STREAM_BUFFER_SIZE;
                    list = a(this.h);
                    break;
                case 11:
                    str = "audio/opus";
                    i3 = 5760;
                    list = new ArrayList(3);
                    list.add(this.h);
                    list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.t).array());
                    list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.u).array());
                    break;
                case '\f':
                    str = "audio/mp4a-latm";
                    list = Collections.singletonList(this.h);
                    break;
                case '\r':
                    str = "audio/mpeg-L2";
                    i3 = 4096;
                    break;
                case 14:
                    str = "audio/mpeg";
                    i3 = 4096;
                    break;
                case 15:
                    str = "audio/ac3";
                    break;
                case 16:
                    str = "audio/eac3";
                    break;
                case 17:
                    str = "audio/true-hd";
                    break;
                case 18:
                case 19:
                    str = "audio/vnd.dts";
                    break;
                case 20:
                    str = "audio/vnd.dts.hd";
                    break;
                case 21:
                    str = "audio/x-flac";
                    list = Collections.singletonList(this.h);
                    break;
                case 22:
                    str = "audio/raw";
                    if (!b(new l(this.h))) {
                        throw new ParserException("Non-PCM MS/ACM is unsupported");
                    }
                    i4 = v.b(this.r);
                    if (i4 == 0) {
                        throw new ParserException("Unsupported PCM bit depth: " + this.r);
                    }
                    break;
                case 23:
                    str = "audio/raw";
                    i4 = v.b(this.r);
                    if (i4 == 0) {
                        throw new ParserException("Unsupported PCM bit depth: " + this.r);
                    }
                    break;
                case 24:
                    str = "application/x-subrip";
                    break;
                case 25:
                    str = "application/vobsub";
                    list = Collections.singletonList(this.h);
                    break;
                case 26:
                    str = "application/pgs";
                    break;
                default:
                    throw new ParserException("Unrecognized codec identifier.");
            }
            int i5 = 0 | (this.w ? 1 : 0) | (this.v ? 2 : 0);
            if (com.google.android.exoplayer2.util.i.a(str)) {
                a2 = Format.a(Integer.toString(i), str, (String) null, -1, i3, this.q, this.s, i4, list, this.i, i5, this.z);
                i2 = 1;
            } else if (com.google.android.exoplayer2.util.i.b(str)) {
                if (this.n == 0) {
                    this.l = this.l == -1 ? this.j : this.l;
                    this.m = this.m == -1 ? this.k : this.m;
                }
                float f = -1.0f;
                if (this.l != -1 && this.m != -1) {
                    f = (this.k * this.l) / (this.j * this.m);
                }
                a2 = Format.a(Integer.toString(i), str, null, -1, i3, this.j, this.k, -1.0f, list, -1, f, this.o, this.p, this.i);
                i2 = 2;
            } else if ("application/x-subrip".equals(str)) {
                a2 = Format.a(Integer.toString(i), str, (String) null, -1, i5, this.z, this.i);
                i2 = 3;
            } else if ("application/vobsub".equals(str) || "application/pgs".equals(str)) {
                a2 = Format.a(Integer.toString(i), str, (String) null, -1, list, this.z, this.i);
                i2 = 3;
            } else {
                throw new ParserException("Unexpected MIME type.");
            }
            this.x = hVar.a(this.b, i2);
            this.x.a(a2);
        }

        private static List<byte[]> a(l lVar) throws ParserException {
            try {
                lVar.d(16);
                if (lVar.l() != 826496599) {
                    return null;
                }
                byte[] bArr = lVar.f3511a;
                for (int d = lVar.d() + 20; d < bArr.length - 4; d++) {
                    if (bArr[d] == 0 && bArr[d + 1] == 0 && bArr[d + 2] == 1 && bArr[d + 3] == 15) {
                        return Collections.singletonList(Arrays.copyOfRange(bArr, d, bArr.length));
                    }
                }
                throw new ParserException("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC VC1 codec private");
            }
        }

        private static List<byte[]> a(byte[] bArr) throws ParserException {
            int i = 0;
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i2 = 0;
                int i3 = 1;
                while (bArr[i3] == -1) {
                    i3++;
                    i2 += 255;
                }
                int i4 = i3 + 1;
                int i5 = i2 + bArr[i3];
                while (bArr[i4] == -1) {
                    i += 255;
                    i4++;
                }
                int i6 = i4 + 1;
                int i7 = i + bArr[i4];
                if (bArr[i6] != 1) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i5];
                System.arraycopy(bArr, i6, bArr2, 0, i5);
                int i8 = i5 + i6;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i7 + i8;
                if (bArr[i9] != 5) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        private static boolean b(l lVar) throws ParserException {
            try {
                int h = lVar.h();
                if (h == 1) {
                    return true;
                }
                if (h != 65534) {
                    return false;
                }
                lVar.c(24);
                if (lVar.o() == d.d.getMostSignificantBits()) {
                    if (lVar.o() == d.d.getLeastSignificantBits()) {
                        return true;
                    }
                }
                return false;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }
}
