package com.google.android.exoplayer2.text.a;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.applovin.sdk.AppLovinErrorCodes;
import com.facebook.imageutils.JfifUtil;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.text.h;
import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.l;
import com.google.android.gms.drive.MetadataChangeSet;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.millennialmedia.InterstitialAd;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* compiled from: Cea608Decoder.java */
/* loaded from: classes2.dex */
public final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3424a = {11, 1, 3, 12, 14, 5, 7, 9};
    private static final int[] b = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] c = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};
    private static final int[] d = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};
    private static final int[] e = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, IMBrowserActivity.CLOSE_REGION_VIEW_ID, 234, 238, 244, 251};
    private static final int[] f = {193, 201, 211, JfifUtil.MARKER_SOS, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, JfifUtil.MARKER_SOFn, 194, 199, 200, 202, InterstitialAd.InterstitialErrorStatus.ALREADY_LOADED, 235, 206, 207, 239, 212, JfifUtil.MARKER_EOI, 249, 219, 171, 187};
    private static final int[] g = {195, 227, 205, AppLovinErrorCodes.NO_FILL, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, JfifUtil.MARKER_SOI, 248, 9484, 9488, 9492, 9496};
    private final int i;
    private final int j;
    private List<com.google.android.exoplayer2.text.b> m;
    private List<com.google.android.exoplayer2.text.b> n;
    private int o;
    private int p;
    private boolean q;
    private byte r;
    private byte s;
    private final l h = new l();
    private final LinkedList<C0145a> k = new LinkedList<>();
    private C0145a l = new C0145a(0, 4);

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.text.f
    public /* bridge */ /* synthetic */ void a(long j) {
        super.a(j);
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ void b(h hVar) throws SubtitleDecoderException {
        super.a(hVar);
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ i g() throws SubtitleDecoderException {
        return super.b();
    }

    @Override // com.google.android.exoplayer2.text.a.d
    public /* bridge */ /* synthetic */ h h() throws SubtitleDecoderException {
        return super.a();
    }

    public a(String str, int i) {
        this.i = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        switch (i) {
            case 3:
            case 4:
                this.j = 2;
                break;
            default:
                this.j = 1;
                break;
        }
        a(0);
        j();
    }

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.a.c
    public void c() {
        super.c();
        this.m = null;
        this.n = null;
        a(0);
        j();
        this.p = 4;
        this.q = false;
        this.r = (byte) 0;
        this.s = (byte) 0;
    }

    @Override // com.google.android.exoplayer2.text.a.d, com.google.android.exoplayer2.a.c
    public void d() {
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected boolean e() {
        return this.m != this.n;
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected com.google.android.exoplayer2.text.e f() {
        this.n = this.m;
        return new f(this.m);
    }

    @Override // com.google.android.exoplayer2.text.a.d
    protected void a(h hVar) {
        this.h.a(hVar.b.array(), hVar.b.limit());
        boolean z = false;
        boolean z2 = false;
        while (this.h.b() >= this.i) {
            byte f2 = this.i == 2 ? (byte) -4 : (byte) this.h.f();
            byte f3 = (byte) (this.h.f() & 127);
            byte f4 = (byte) (this.h.f() & 127);
            if ((f2 & 6) == 4 && (this.j != 1 || (f2 & 1) == 0)) {
                if (this.j != 2 || (f2 & 1) == 1) {
                    if (f3 != 0 || f4 != 0) {
                        if ((f3 & 247) == 17 && (f4 & 240) == 48) {
                            this.l.a(d(f4));
                            z2 = true;
                        } else if ((f3 & 246) == 18 && (f4 & 224) == 32) {
                            this.l.b();
                            if ((f3 & 1) == 0) {
                                this.l.a(e(f4));
                                z2 = true;
                            } else {
                                this.l.a(f(f4));
                                z2 = true;
                            }
                        } else if ((f3 & 224) == 0) {
                            z = a(f3, f4);
                            z2 = true;
                        } else {
                            this.l.a(c(f3));
                            if ((f4 & 224) != 0) {
                                this.l.a(c(f4));
                            }
                            z2 = true;
                        }
                    }
                }
            }
        }
        if (z2) {
            if (!z) {
                this.q = false;
            }
            if (this.o == 1 || this.o == 3) {
                this.m = i();
            }
        }
    }

    private boolean a(byte b2, byte b3) {
        boolean g2 = g(b2);
        if (g2) {
            if (this.q && this.r == b2 && this.s == b3) {
                this.q = false;
                return true;
            }
            this.q = true;
            this.r = b2;
            this.s = b3;
        }
        if (c(b2, b3)) {
            a(b3);
        } else if (d(b2, b3)) {
            b(b2, b3);
        } else if (e(b2, b3)) {
            this.l.c(b3 - 32);
        } else if (f(b2, b3)) {
            b(b3);
        }
        return g2;
    }

    private void a(byte b2) {
        this.l.a((b2 & 1) == 1);
        int i = (b2 >> 1) & 15;
        if (i == 7) {
            this.l.a(new StyleSpan(2), 2);
            this.l.a(new ForegroundColorSpan(-1), 1);
            return;
        }
        this.l.a(new ForegroundColorSpan(c[i]), 1);
    }

    private void b(byte b2, byte b3) {
        int i = f3424a[b2 & 7];
        if ((b3 & 32) != 0) {
            i++;
        }
        if (i != this.l.c()) {
            if (this.o != 1 && !this.l.a()) {
                this.l = new C0145a(this.o, this.p);
                this.k.add(this.l);
            }
            this.l.a(i);
        }
        if ((b3 & 1) == 1) {
            this.l.a(new UnderlineSpan());
        }
        int i2 = (b3 >> 1) & 15;
        if (i2 <= 7) {
            if (i2 == 7) {
                this.l.a(new StyleSpan(2));
                this.l.a(new ForegroundColorSpan(-1));
                return;
            }
            this.l.a(new ForegroundColorSpan(c[i2]));
            return;
        }
        this.l.b(b[i2 & 7]);
    }

    private void b(byte b2) {
        switch (b2) {
            case 32:
                a(2);
                return;
            case 33:
            case 34:
            case 35:
            case 36:
            case 40:
            default:
                if (this.o != 0) {
                    switch (b2) {
                        case 33:
                            this.l.b();
                            return;
                        case 44:
                            this.m = null;
                            if (this.o == 1 || this.o == 3) {
                                j();
                                return;
                            }
                            return;
                        case 45:
                            if (this.o == 1 && !this.l.a()) {
                                this.l.d();
                                return;
                            }
                            return;
                        case 46:
                            j();
                            return;
                        case 47:
                            this.m = i();
                            j();
                            return;
                        default:
                            return;
                    }
                }
                return;
            case 37:
                this.p = 2;
                a(1);
                return;
            case 38:
                this.p = 3;
                a(1);
                return;
            case 39:
                this.p = 4;
                a(1);
                return;
            case 41:
                a(3);
                return;
        }
    }

    private List<com.google.android.exoplayer2.text.b> i() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.k.size()) {
                com.google.android.exoplayer2.text.b f2 = this.k.get(i2).f();
                if (f2 != null) {
                    arrayList.add(f2);
                }
                i = i2 + 1;
            } else {
                return arrayList;
            }
        }
    }

    private void a(int i) {
        if (this.o != i) {
            int i2 = this.o;
            this.o = i;
            j();
            if (i2 == 3 || i == 1 || i == 0) {
                this.m = null;
            }
        }
    }

    private void j() {
        this.l.a(this.o, this.p);
        this.k.clear();
        this.k.add(this.l);
    }

    private static char c(byte b2) {
        return (char) d[(b2 & Byte.MAX_VALUE) - 32];
    }

    private static char d(byte b2) {
        return (char) e[b2 & 15];
    }

    private static char e(byte b2) {
        return (char) f[b2 & 31];
    }

    private static char f(byte b2) {
        return (char) g[b2 & 31];
    }

    private static boolean c(byte b2, byte b3) {
        return (b2 & 247) == 17 && (b3 & 240) == 32;
    }

    private static boolean d(byte b2, byte b3) {
        return (b2 & 240) == 16 && (b3 & 192) == 64;
    }

    private static boolean e(byte b2, byte b3) {
        return (b2 & 247) == 23 && b3 >= 33 && b3 <= 35;
    }

    private static boolean f(byte b2, byte b3) {
        return (b2 & 247) == 20 && (b3 & 240) == 32;
    }

    private static boolean g(byte b2) {
        return (b2 & 240) == 16;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Cea608Decoder.java */
    /* renamed from: com.google.android.exoplayer2.text.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0145a {

        /* renamed from: a  reason: collision with root package name */
        private final List<CharacterStyle> f3425a = new ArrayList();
        private final List<C0146a> b = new ArrayList();
        private final List<SpannableString> c = new LinkedList();
        private final SpannableStringBuilder d = new SpannableStringBuilder();
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        public C0145a(int i, int i2) {
            a(i, i2);
        }

        public void a(int i, int i2) {
            this.f3425a.clear();
            this.b.clear();
            this.c.clear();
            this.d.clear();
            this.e = 15;
            this.f = 0;
            this.g = 0;
            this.h = i;
            this.i = i2;
            this.j = -1;
        }

        public boolean a() {
            return this.f3425a.isEmpty() && this.b.isEmpty() && this.c.isEmpty() && this.d.length() == 0;
        }

        public void b() {
            int length = this.d.length();
            if (length > 0) {
                this.d.delete(length - 1, length);
            }
        }

        public int c() {
            return this.e;
        }

        public void a(int i) {
            this.e = i;
        }

        public void d() {
            this.c.add(e());
            this.d.clear();
            this.f3425a.clear();
            this.b.clear();
            this.j = -1;
            int min = Math.min(this.i, this.e);
            while (this.c.size() >= min) {
                this.c.remove(0);
            }
        }

        public void b(int i) {
            this.f = i;
        }

        public void c(int i) {
            this.g = i;
        }

        public void a(CharacterStyle characterStyle) {
            this.f3425a.add(characterStyle);
        }

        public void a(CharacterStyle characterStyle, int i) {
            this.b.add(new C0146a(characterStyle, this.d.length(), i));
        }

        public void a(boolean z) {
            if (z) {
                this.j = this.d.length();
            } else if (this.j != -1) {
                this.d.setSpan(new UnderlineSpan(), this.j, this.d.length(), 33);
                this.j = -1;
            }
        }

        public void a(char c) {
            this.d.append(c);
        }

        public SpannableString e() {
            int i = 0;
            int length = this.d.length();
            for (int i2 = 0; i2 < this.f3425a.size(); i2++) {
                this.d.setSpan(this.f3425a.get(i2), 0, length, 33);
            }
            while (true) {
                int i3 = i;
                if (i3 >= this.b.size()) {
                    break;
                }
                C0146a c0146a = this.b.get(i3);
                this.d.setSpan(c0146a.f3426a, c0146a.b, i3 < this.b.size() - c0146a.c ? this.b.get(c0146a.c + i3).b : length, 33);
                i = i3 + 1;
            }
            if (this.j != -1) {
                this.d.setSpan(new UnderlineSpan(), this.j, length, 33);
            }
            return new SpannableString(this.d);
        }

        public com.google.android.exoplayer2.text.b f() {
            int length;
            float f;
            int i;
            int i2;
            int i3 = 2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.c.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.c.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) e());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.f + this.g;
            int length2 = i5 - ((32 - i5) - spannableStringBuilder.length());
            if (this.h == 2 && Math.abs(length2) < 3) {
                f = 0.5f;
                i = 1;
            } else if (this.h == 2 && length2 > 0) {
                f = (((32 - length) / 32.0f) * 0.8f) + 0.1f;
                i = 2;
            } else {
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
                i = 0;
            }
            if (this.h == 1 || this.e > 7) {
                i2 = (this.e - 15) - 2;
            } else {
                i3 = 0;
                i2 = this.e;
            }
            return new com.google.android.exoplayer2.text.b(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i2, 1, i3, f, i, Float.MIN_VALUE);
        }

        public String toString() {
            return this.d.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: Cea608Decoder.java */
        /* renamed from: com.google.android.exoplayer2.text.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static class C0146a {

            /* renamed from: a  reason: collision with root package name */
            public final CharacterStyle f3426a;
            public final int b;
            public final int c;

            public C0146a(CharacterStyle characterStyle, int i, int i2) {
                this.f3426a = characterStyle;
                this.b = i;
                this.c = i2;
            }
        }
    }
}
