package com.google.android.exoplayer2.text.a;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import android.util.Log;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.k;
import com.google.android.exoplayer2.util.l;
import com.google.android.gms.drive.MetadataChangeSet;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
/* compiled from: Cea708Decoder.java */
/* loaded from: classes2.dex */
public final class c extends d {

    /* renamed from: a  reason: collision with root package name */
    private final l f3427a = new l();
    private final k b = new k();
    private final int c;
    private final a[] d;
    private a e;
    private List<com.google.android.exoplayer2.text.b> f;
    private List<com.google.android.exoplayer2.text.b> g;
    private b h;
    private int i;

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.text.f
    public /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ void b(h hVar) throws SubtitleDecoderException {
        super.a(hVar);
    }

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.a.c
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ i g() throws SubtitleDecoderException {
        return super.b();
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ h h() throws SubtitleDecoderException {
        return super.a();
    }

    public c(int i) {
        this.c = i == -1 ? 1 : i;
        this.d = new a[8];
        for (int i2 = 0; i2 < 8; i2++) {
            this.d[i2] = new a();
        }
        this.e = this.d[0];
        p();
    }

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.a.c
    public void c() {
        super.c();
        this.f = null;
        this.g = null;
        this.i = 0;
        this.e = this.d[this.i];
        p();
        this.h = null;
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected boolean e() {
        return this.f != this.g;
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected com.google.android.exoplayer2.text.e f() {
        this.g = this.f;
        return new f(this.f);
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected void a(h hVar) {
        this.f3427a.a(hVar.b.array(), hVar.b.limit());
        while (this.f3427a.b() >= 3) {
            int f = this.f3427a.f() & 7;
            int i = f & 3;
            boolean z = (f & 4) == 4;
            byte f2 = (byte) this.f3427a.f();
            byte f3 = (byte) this.f3427a.f();
            if (i == 2 || i == 3) {
                if (z) {
                    if (i == 3) {
                        i();
                        int i2 = (f2 & 192) >> 6;
                        int i3 = f2 & 63;
                        if (i3 == 0) {
                            i3 = 64;
                        }
                        this.h = new b(i2, i3);
                        byte[] bArr = this.h.c;
                        b bVar = this.h;
                        int i4 = bVar.d;
                        bVar.d = i4 + 1;
                        bArr[i4] = f3;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i == 2);
                        if (this.h == null) {
                            Log.e("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = this.h.c;
                            b bVar2 = this.h;
                            int i5 = bVar2.d;
                            bVar2.d = i5 + 1;
                            bArr2[i5] = f2;
                            byte[] bArr3 = this.h.c;
                            b bVar3 = this.h;
                            int i6 = bVar3.d;
                            bVar3.d = i6 + 1;
                            bArr3[i6] = f3;
                        }
                    }
                    if (this.h.d == (this.h.b * 2) - 1) {
                        i();
                    }
                }
            }
        }
    }

    private void i() {
        if (this.h != null) {
            j();
            this.h = null;
        }
    }

    private void j() {
        if (this.h.d != (this.h.b * 2) - 1) {
            Log.w("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.h.b * 2) - 1) + ", but current index is " + this.h.d + " (sequence number " + this.h.f3429a + "); ignoring packet");
            return;
        }
        this.b.a(this.h.c, this.h.d);
        int c = this.b.c(3);
        int c2 = this.b.c(5);
        if (c == 7) {
            this.b.b(2);
            c += this.b.c(6);
        }
        if (c2 == 0) {
            if (c != 0) {
                Log.w("Cea708Decoder", "serviceNumber is non-zero (" + c + ") when blockSize is 0");
            }
        } else if (c == this.c) {
            boolean z = false;
            while (this.b.a() > 0) {
                int c3 = this.b.c(8);
                if (c3 != 16) {
                    if (c3 <= 31) {
                        a(c3);
                    } else if (c3 <= 127) {
                        e(c3);
                        z = true;
                    } else if (c3 <= 159) {
                        b(c3);
                        z = true;
                    } else if (c3 <= 255) {
                        f(c3);
                        z = true;
                    } else {
                        Log.w("Cea708Decoder", "Invalid base command: " + c3);
                    }
                } else {
                    int c4 = this.b.c(8);
                    if (c4 <= 31) {
                        c(c4);
                    } else if (c4 <= 127) {
                        g(c4);
                        z = true;
                    } else if (c4 <= 159) {
                        d(c4);
                    } else if (c4 <= 255) {
                        h(c4);
                        z = true;
                    } else {
                        Log.w("Cea708Decoder", "Invalid extended command: " + c4);
                    }
                }
            }
            if (z) {
                this.f = o();
            }
        }
    }

    private void a(int i) {
        switch (i) {
            case 0:
            case 14:
                return;
            case 3:
                this.f = o();
                return;
            case 8:
                this.e.f();
                return;
            case 12:
                p();
                return;
            case 13:
                this.e.a('\n');
                return;
            default:
                if (i >= 17 && i <= 23) {
                    Log.w("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i);
                    this.b.b(8);
                    return;
                } else if (i >= 24 && i <= 31) {
                    Log.w("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i);
                    this.b.b(16);
                    return;
                } else {
                    Log.w("Cea708Decoder", "Invalid C0 command: " + i);
                    return;
                }
        }
    }

    private void b(int i) {
        int i2 = 1;
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i3 = i - 128;
                if (this.i != i3) {
                    this.i = i3;
                    this.e = this.d[i3];
                    return;
                }
                return;
            case 136:
                while (i2 <= 8) {
                    if (this.b.c()) {
                        this.d[8 - i2].c();
                    }
                    i2++;
                }
                return;
            case 137:
                for (int i4 = 1; i4 <= 8; i4++) {
                    if (this.b.c()) {
                        this.d[8 - i4].a(true);
                    }
                }
                return;
            case 138:
                while (i2 <= 8) {
                    if (this.b.c()) {
                        this.d[8 - i2].a(false);
                    }
                    i2++;
                }
                return;
            case 139:
                for (int i5 = 1; i5 <= 8; i5++) {
                    if (this.b.c()) {
                        a aVar = this.d[8 - i5];
                        aVar.a(!aVar.e());
                    }
                }
                return;
            case 140:
                while (i2 <= 8) {
                    if (this.b.c()) {
                        this.d[8 - i2].b();
                    }
                    i2++;
                }
                return;
            case 141:
                this.b.b(8);
                return;
            case 142:
                return;
            case 143:
                p();
                return;
            case 144:
                if (!this.e.d()) {
                    this.b.b(16);
                    return;
                } else {
                    k();
                    return;
                }
            case 145:
                if (!this.e.d()) {
                    this.b.b(24);
                    return;
                } else {
                    l();
                    return;
                }
            case 146:
                if (!this.e.d()) {
                    this.b.b(16);
                    return;
                } else {
                    m();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case DrawableConstants.CtaButton.WIDTH_DIPS /* 150 */:
            default:
                Log.w("Cea708Decoder", "Invalid C1 command: " + i);
                return;
            case 151:
                if (!this.e.d()) {
                    this.b.b(32);
                    return;
                } else {
                    n();
                    return;
                }
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i6 = i - 152;
                i(i6);
                if (this.i != i6) {
                    this.i = i6;
                    this.e = this.d[i6];
                    return;
                }
                return;
        }
    }

    private void c(int i) {
        if (i > 7) {
            if (i <= 15) {
                this.b.b(8);
            } else if (i <= 23) {
                this.b.b(16);
            } else if (i <= 31) {
                this.b.b(24);
            }
        }
    }

    private void d(int i) {
        if (i <= 135) {
            this.b.b(32);
        } else if (i <= 143) {
            this.b.b(40);
        } else if (i <= 159) {
            this.b.b(2);
            this.b.b(this.b.c(6) * 8);
        }
    }

    private void e(int i) {
        if (i == 127) {
            this.e.a((char) 9835);
        } else {
            this.e.a((char) (i & 255));
        }
    }

    private void f(int i) {
        this.e.a((char) (i & 255));
    }

    private void g(int i) {
        switch (i) {
            case 32:
                this.e.a(' ');
                return;
            case 33:
                this.e.a((char) 160);
                return;
            case 37:
                this.e.a((char) 8230);
                return;
            case 42:
                this.e.a((char) 352);
                return;
            case 44:
                this.e.a((char) 338);
                return;
            case 48:
                this.e.a((char) 9608);
                return;
            case 49:
                this.e.a((char) 8216);
                return;
            case 50:
                this.e.a((char) 8217);
                return;
            case 51:
                this.e.a((char) 8220);
                return;
            case 52:
                this.e.a((char) 8221);
                return;
            case 53:
                this.e.a((char) 8226);
                return;
            case 57:
                this.e.a((char) 8482);
                return;
            case 58:
                this.e.a((char) 353);
                return;
            case 60:
                this.e.a((char) 339);
                return;
            case 61:
                this.e.a((char) 8480);
                return;
            case 63:
                this.e.a((char) 376);
                return;
            case 118:
                this.e.a((char) 8539);
                return;
            case 119:
                this.e.a((char) 8540);
                return;
            case 120:
                this.e.a((char) 8541);
                return;
            case 121:
                this.e.a((char) 8542);
                return;
            case 122:
                this.e.a((char) 9474);
                return;
            case 123:
                this.e.a((char) 9488);
                return;
            case MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES /* 124 */:
                this.e.a((char) 9492);
                return;
            case 125:
                this.e.a((char) 9472);
                return;
            case 126:
                this.e.a((char) 9496);
                return;
            case 127:
                this.e.a((char) 9484);
                return;
            default:
                Log.w("Cea708Decoder", "Invalid G2 character: " + i);
                return;
        }
    }

    private void h(int i) {
        if (i == 160) {
            this.e.a((char) 13252);
            return;
        }
        Log.w("Cea708Decoder", "Invalid G3 character: " + i);
        this.e.a('_');
    }

    private void k() {
        this.e.a(this.b.c(4), this.b.c(2), this.b.c(2), this.b.c(), this.b.c(), this.b.c(3), this.b.c(3));
    }

    private void l() {
        int a2 = a.a(this.b.c(2), this.b.c(2), this.b.c(2), this.b.c(2));
        int a3 = a.a(this.b.c(2), this.b.c(2), this.b.c(2), this.b.c(2));
        this.b.b(2);
        this.e.a(a2, a3, a.b(this.b.c(2), this.b.c(2), this.b.c(2)));
    }

    private void m() {
        this.b.b(4);
        int c = this.b.c(4);
        this.b.b(2);
        this.e.a(c, this.b.c(6));
    }

    private void n() {
        int a2 = a.a(this.b.c(2), this.b.c(2), this.b.c(2), this.b.c(2));
        int c = this.b.c(2);
        int b2 = a.b(this.b.c(2), this.b.c(2), this.b.c(2));
        if (this.b.c()) {
            c |= 4;
        }
        boolean c2 = this.b.c();
        int c3 = this.b.c(2);
        int c4 = this.b.c(2);
        int c5 = this.b.c(2);
        this.b.b(8);
        this.e.a(a2, b2, c2, c, c3, c4, c5);
    }

    private void i(int i) {
        a aVar = this.d[i];
        this.b.b(2);
        boolean c = this.b.c();
        boolean c2 = this.b.c();
        boolean c3 = this.b.c();
        int c4 = this.b.c(3);
        boolean c5 = this.b.c();
        int c6 = this.b.c(7);
        int c7 = this.b.c(8);
        int c8 = this.b.c(4);
        int c9 = this.b.c(4);
        this.b.b(2);
        int c10 = this.b.c(6);
        this.b.b(2);
        aVar.a(c, c2, c3, c4, c5, c6, c7, c9, c10, c8, this.b.c(3), this.b.c(3));
    }

    private List<com.google.android.exoplayer2.text.b> o() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 8; i++) {
            if (!this.d[i].a() && this.d[i].e()) {
                arrayList.add(this.d[i].h());
            }
        }
        Collections.sort(arrayList);
        return Collections.unmodifiableList(arrayList);
    }

    private void p() {
        for (int i = 0; i < 8; i++) {
            this.d[i].b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3429a;
        public final int b;
        public final byte[] c;
        int d = 0;

        public b(int i, int i2) {
            this.f3429a = i;
            this.b = i2;
            this.c = new byte[(i2 * 2) - 1];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea708Decoder.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3428a = a(2, 2, 2, 0);
        public static final int b = a(0, 0, 0, 0);
        public static final int c = a(0, 0, 0, 3);
        private static final int[] d = {0, 0, 0, 0, 0, 2, 0};
        private static final int[] e = {0, 0, 0, 0, 0, 0, 2};
        private static final int[] f = {3, 3, 3, 3, 3, 3, 1};
        private static final boolean[] g = {false, false, false, true, true, true, false};
        private static final int[] h = {b, c, b, b, c, b, b};
        private static final int[] i = {0, 1, 2, 3, 4, 3, 4};
        private static final int[] j = {0, 0, 0, 0, 0, 3, 3};
        private static final int[] k = {b, b, b, b, b, c, c};
        private int A;
        private int B;
        private int C;
        private int D;
        private int E;
        private int F;
        private int G;
        private final List<SpannableString> l = new LinkedList();
        private final SpannableStringBuilder m = new SpannableStringBuilder();
        private boolean n;
        private boolean o;
        private int p;
        private boolean q;
        private int r;
        private int s;
        private int t;
        private int u;
        private boolean v;
        private int w;
        private int x;
        private int y;
        private int z;

        public a() {
            b();
        }

        public boolean a() {
            return !d() || (this.l.isEmpty() && this.m.length() == 0);
        }

        public void b() {
            c();
            this.n = false;
            this.o = false;
            this.p = 4;
            this.q = false;
            this.r = 0;
            this.s = 0;
            this.t = 0;
            this.u = 15;
            this.v = true;
            this.w = 0;
            this.x = 0;
            this.y = 0;
            this.z = b;
            this.D = f3428a;
            this.F = b;
        }

        public void c() {
            this.l.clear();
            this.m.clear();
            this.A = -1;
            this.B = -1;
            this.C = -1;
            this.E = -1;
            this.G = 0;
        }

        public boolean d() {
            return this.n;
        }

        public void a(boolean z) {
            this.o = z;
        }

        public boolean e() {
            return this.o;
        }

        public void a(boolean z, boolean z2, boolean z3, int i2, boolean z4, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            this.n = true;
            this.o = z;
            this.v = z2;
            this.p = i2;
            this.q = z4;
            this.r = i3;
            this.s = i4;
            this.t = i7;
            if (this.u != i5 + 1) {
                this.u = i5 + 1;
                while (true) {
                    if ((!z2 || this.l.size() < this.u) && this.l.size() < 15) {
                        break;
                    }
                    this.l.remove(0);
                }
            }
            if (i8 != 0 && this.x != i8) {
                this.x = i8;
                int i10 = i8 - 1;
                a(h[i10], c, g[i10], 0, e[i10], f[i10], d[i10]);
            }
            if (i9 != 0 && this.y != i9) {
                this.y = i9;
                int i11 = i9 - 1;
                a(0, 1, 1, false, false, j[i11], i[i11]);
                a(f3428a, k[i11], b);
            }
        }

        public void a(int i2, int i3, boolean z, int i4, int i5, int i6, int i7) {
            this.z = i2;
            this.w = i7;
        }

        public void a(int i2, int i3, int i4, boolean z, boolean z2, int i5, int i6) {
            if (this.A != -1) {
                if (!z) {
                    this.m.setSpan(new StyleSpan(2), this.A, this.m.length(), 33);
                    this.A = -1;
                }
            } else if (z) {
                this.A = this.m.length();
            }
            if (this.B != -1) {
                if (!z2) {
                    this.m.setSpan(new UnderlineSpan(), this.B, this.m.length(), 33);
                    this.B = -1;
                }
            } else if (z2) {
                this.B = this.m.length();
            }
        }

        public void a(int i2, int i3, int i4) {
            if (this.C != -1 && this.D != i2) {
                this.m.setSpan(new ForegroundColorSpan(this.D), this.C, this.m.length(), 33);
            }
            if (i2 != f3428a) {
                this.C = this.m.length();
                this.D = i2;
            }
            if (this.E != -1 && this.F != i3) {
                this.m.setSpan(new BackgroundColorSpan(this.F), this.E, this.m.length(), 33);
            }
            if (i3 != b) {
                this.E = this.m.length();
                this.F = i3;
            }
        }

        public void a(int i2, int i3) {
            if (this.G != i2) {
                a('\n');
            }
            this.G = i2;
        }

        public void f() {
            int length = this.m.length();
            if (length > 0) {
                this.m.delete(length - 1, length);
            }
        }

        public void a(char c2) {
            if (c2 == '\n') {
                this.l.add(g());
                this.m.clear();
                if (this.A != -1) {
                    this.A = 0;
                }
                if (this.B != -1) {
                    this.B = 0;
                }
                if (this.C != -1) {
                    this.C = 0;
                }
                if (this.E != -1) {
                    this.E = 0;
                }
                while (true) {
                    if ((this.v && this.l.size() >= this.u) || this.l.size() >= 15) {
                        this.l.remove(0);
                    } else {
                        return;
                    }
                }
            } else {
                this.m.append(c2);
            }
        }

        public SpannableString g() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.m);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.A != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.A, length, 33);
                }
                if (this.B != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.B, length, 33);
                }
                if (this.C != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.D), this.C, length, 33);
                }
                if (this.E != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.F), this.E, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public com.google.android.exoplayer2.text.a.b h() {
            Layout.Alignment alignment;
            float f2;
            float f3;
            int i2;
            int i3;
            if (a()) {
                return null;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.l.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.l.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) g());
            switch (this.w) {
                case 0:
                case 3:
                    alignment = Layout.Alignment.ALIGN_NORMAL;
                    break;
                case 1:
                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                    break;
                case 2:
                    alignment = Layout.Alignment.ALIGN_CENTER;
                    break;
                default:
                    throw new IllegalArgumentException("Unexpected justification value: " + this.w);
            }
            if (this.q) {
                f2 = this.s / 99.0f;
                f3 = this.r / 99.0f;
            } else {
                f2 = this.s / 209.0f;
                f3 = this.r / 74.0f;
            }
            float f4 = (f2 * 0.9f) + 0.05f;
            float f5 = (f3 * 0.9f) + 0.05f;
            if (this.t % 3 == 0) {
                i2 = 0;
            } else {
                i2 = this.t % 3 == 1 ? 1 : 2;
            }
            if (this.t / 3 == 0) {
                i3 = 0;
            } else {
                i3 = this.t / 3 == 1 ? 1 : 2;
            }
            return new com.google.android.exoplayer2.text.a.b(spannableStringBuilder, alignment, f5, 0, i2, f4, i3, Float.MIN_VALUE, this.z != b, this.z, this.p);
        }

        public static int b(int i2, int i3, int i4) {
            return a(i2, i3, i4, 0);
        }

        public static int a(int i2, int i3, int i4, int i5) {
            int i6;
            int i7 = 255;
            com.google.android.exoplayer2.util.a.a(i2, 0, 4);
            com.google.android.exoplayer2.util.a.a(i3, 0, 4);
            com.google.android.exoplayer2.util.a.a(i4, 0, 4);
            com.google.android.exoplayer2.util.a.a(i5, 0, 4);
            switch (i5) {
                case 0:
                case 1:
                    i6 = 255;
                    break;
                case 2:
                    i6 = 127;
                    break;
                case 3:
                    i6 = 0;
                    break;
                default:
                    i6 = 255;
                    break;
            }
            int i8 = i2 > 1 ? 255 : 0;
            int i9 = i3 > 1 ? 255 : 0;
            if (i4 <= 1) {
                i7 = 0;
            }
            return Color.argb(i6, i8, i9, i7);
        }
    }
}
