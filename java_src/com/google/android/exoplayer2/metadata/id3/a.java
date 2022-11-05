package com.google.android.exoplayer2.metadata.id3;

import android.util.Log;
import com.amazon.device.ads.WebRequest;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: Id3Decoder.java */
/* loaded from: classes2.dex */
public final class a implements com.google.android.exoplayer2.metadata.a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f3322a = v.g("ID3");
    private final InterfaceC0137a b;

    /* compiled from: Id3Decoder.java */
    /* renamed from: com.google.android.exoplayer2.metadata.id3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0137a {
        boolean a(int i, int i2, int i3, int i4, int i5);
    }

    public a() {
        this(null);
    }

    public a(InterfaceC0137a interfaceC0137a) {
        this.b = interfaceC0137a;
    }

    @Override // com.google.android.exoplayer2.metadata.a
    public Metadata a(c cVar) {
        ByteBuffer byteBuffer = cVar.b;
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    public Metadata a(byte[] bArr, int i) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        l lVar = new l(bArr, i);
        b a2 = a(lVar);
        if (a2 == null) {
            return null;
        }
        int d = lVar.d();
        int i2 = a2.c;
        if (a2.b) {
            i2 = f(lVar, a2.c);
        }
        lVar.b(i2 + d);
        if (a2.f3323a != 4 || a(lVar, false)) {
            z = false;
        } else if (!a(lVar, true)) {
            Log.w("Id3Decoder", "Failed to validate V4 ID3 tag");
            return null;
        } else {
            z = true;
        }
        int i3 = a2.f3323a == 2 ? 6 : 10;
        while (lVar.b() >= i3) {
            Id3Frame a3 = a(a2.f3323a, lVar, z, i3, this.b);
            if (a3 != null) {
                arrayList.add(a3);
            }
        }
        return new Metadata(arrayList);
    }

    private static b a(l lVar) {
        int i;
        if (lVar.b() < 10) {
            Log.w("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int j = lVar.j();
        if (j != f3322a) {
            Log.w("Id3Decoder", "Unexpected first three bytes of ID3 tag header: " + j);
            return null;
        }
        int f = lVar.f();
        lVar.d(1);
        int f2 = lVar.f();
        int r = lVar.r();
        if (f == 2) {
            if ((f2 & 64) != 0) {
                Log.w("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
            i = r;
        } else if (f == 3) {
            if ((f2 & 64) != 0) {
                int m = lVar.m();
                lVar.d(m);
                r -= m + 4;
            }
            i = r;
        } else if (f == 4) {
            if ((f2 & 64) != 0) {
                int r2 = lVar.r();
                lVar.d(r2 - 4);
                r -= r2;
            }
            if ((f2 & 16) != 0) {
                r -= 10;
            }
            i = r;
        } else {
            Log.w("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + f);
            return null;
        }
        return new b(f, f < 4 && (f2 & 128) != 0, i);
    }

    private static boolean a(l lVar, boolean z) {
        int i;
        int d = lVar.d();
        while (lVar.b() >= 10) {
            try {
                int m = lVar.m();
                int s = lVar.s();
                int g = lVar.g();
                if (m == 0 && s == 0 && g == 0) {
                    return true;
                }
                if (z) {
                    i = s;
                } else if ((s & 8421504) != 0) {
                    return false;
                } else {
                    i = (((s >> 24) & 255) << 21) | (s & 255) | (((s >> 8) & 255) << 7) | (((s >> 16) & 255) << 14);
                }
                int i2 = (g & 64) != 0 ? 1 : 0;
                if ((g & 1) != 0) {
                    i2 += 4;
                }
                if (i < i2) {
                    return false;
                }
                if (lVar.b() < i) {
                    return false;
                }
                lVar.d(i);
            } finally {
                lVar.c(d);
            }
        }
        return true;
    }

    private static Id3Frame a(int i, l lVar, boolean z, int i2, InterfaceC0137a interfaceC0137a) {
        int j;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        Id3Frame c;
        int f = lVar.f();
        int f2 = lVar.f();
        int f3 = lVar.f();
        int f4 = i >= 3 ? lVar.f() : 0;
        if (i == 4) {
            j = lVar.s();
            if (!z) {
                j = (j & 255) | (((j >> 8) & 255) << 7) | (((j >> 16) & 255) << 14) | (((j >> 24) & 255) << 21);
            }
        } else if (i == 3) {
            j = lVar.s();
        } else {
            j = lVar.j();
        }
        int g = i >= 3 ? lVar.g() : 0;
        if (f == 0 && f2 == 0 && f3 == 0 && f4 == 0 && j == 0 && g == 0) {
            lVar.c(lVar.c());
            return null;
        }
        int d = lVar.d() + j;
        if (d > lVar.c()) {
            Log.w("Id3Decoder", "Frame size exceeds remaining tag data");
            lVar.c(lVar.c());
            return null;
        } else if (interfaceC0137a != null && !interfaceC0137a.a(i, f, f2, f3, f4)) {
            lVar.c(d);
            return null;
        } else {
            boolean z5 = false;
            boolean z6 = false;
            if (i == 3) {
                boolean z7 = (g & 128) != 0;
                boolean z8 = (g & 64) != 0;
                z6 = (g & 32) != 0;
                z5 = z7;
                z4 = z7;
                z2 = z8;
                z3 = false;
            } else if (i != 4) {
                z2 = false;
                z3 = false;
                z4 = false;
            } else {
                boolean z9 = (g & 64) != 0;
                z5 = (g & 8) != 0;
                boolean z10 = z9;
                z2 = (g & 4) != 0;
                z3 = (g & 2) != 0;
                z4 = (g & 1) != 0;
                z6 = z10;
            }
            if (z5 || z2) {
                Log.w("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
                lVar.c(d);
                return null;
            }
            if (z6) {
                i3 = j - 1;
                lVar.d(1);
            } else {
                i3 = j;
            }
            if (z4) {
                i3 -= 4;
                lVar.d(4);
            }
            if (z3) {
                i3 = f(lVar, i3);
            }
            try {
                if (f == 84 && f2 == 88 && f3 == 88 && (i == 2 || f4 == 88)) {
                    c = a(lVar, i3);
                } else if (f == 84) {
                    c = a(lVar, i3, i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3), Integer.valueOf(f4)));
                } else if (f == 87 && f2 == 88 && f3 == 88 && (i == 2 || f4 == 88)) {
                    c = b(lVar, i3);
                } else if (f == 87) {
                    c = b(lVar, i3, i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3), Integer.valueOf(f4)));
                } else if (f == 80 && f2 == 82 && f3 == 73 && f4 == 86) {
                    c = c(lVar, i3);
                } else if (f == 71 && f2 == 69 && f3 == 79 && (f4 == 66 || i == 2)) {
                    c = d(lVar, i3);
                } else if (i != 2 ? !(f != 65 || f2 != 80 || f3 != 73 || f4 != 67) : !(f != 80 || f2 != 73 || f3 != 67)) {
                    c = a(lVar, i3, i);
                } else if (f == 67 && f2 == 79 && f3 == 77 && (f4 == 77 || i == 2)) {
                    c = e(lVar, i3);
                } else if (f == 67 && f2 == 72 && f3 == 65 && f4 == 80) {
                    c = a(lVar, i3, i, z, i2, interfaceC0137a);
                } else if (f == 67 && f2 == 84 && f3 == 79 && f4 == 67) {
                    c = b(lVar, i3, i, z, i2, interfaceC0137a);
                } else {
                    c = c(lVar, i3, i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(f), Integer.valueOf(f2), Integer.valueOf(f3), Integer.valueOf(f4)));
                }
                return c;
            } catch (UnsupportedEncodingException e) {
                Log.w("Id3Decoder", "Unsupported character encoding");
                return null;
            } finally {
                lVar.c(d);
            }
        }
    }

    private static TextInformationFrame a(l lVar, int i) throws UnsupportedEncodingException {
        String str;
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[i - 1];
        lVar.a(bArr, 0, i - 1);
        int a3 = a(bArr, 0, f);
        String str2 = new String(bArr, 0, a3, a2);
        int b2 = a3 + b(f);
        if (b2 < bArr.length) {
            str = new String(bArr, b2, a(bArr, b2, f) - b2, a2);
        } else {
            str = "";
        }
        return new TextInformationFrame("TXXX", str2, str);
    }

    private static TextInformationFrame a(l lVar, int i, String str) throws UnsupportedEncodingException {
        if (i <= 1) {
            return new TextInformationFrame(str, null, "");
        }
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[i - 1];
        lVar.a(bArr, 0, i - 1);
        return new TextInformationFrame(str, null, new String(bArr, 0, a(bArr, 0, f), a2));
    }

    private static UrlLinkFrame b(l lVar, int i) throws UnsupportedEncodingException {
        String str;
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[i - 1];
        lVar.a(bArr, 0, i - 1);
        int a3 = a(bArr, 0, f);
        String str2 = new String(bArr, 0, a3, a2);
        int b2 = a3 + b(f);
        if (b2 < bArr.length) {
            str = new String(bArr, b2, b(bArr, b2) - b2, "ISO-8859-1");
        } else {
            str = "";
        }
        return new UrlLinkFrame("WXXX", str2, str);
    }

    private static UrlLinkFrame b(l lVar, int i, String str) throws UnsupportedEncodingException {
        if (i == 0) {
            return new UrlLinkFrame(str, null, "");
        }
        byte[] bArr = new byte[i];
        lVar.a(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    private static PrivFrame c(l lVar, int i) throws UnsupportedEncodingException {
        if (i == 0) {
            return new PrivFrame("", new byte[0]);
        }
        byte[] bArr = new byte[i];
        lVar.a(bArr, 0, i);
        int b2 = b(bArr, 0);
        return new PrivFrame(new String(bArr, 0, b2, "ISO-8859-1"), Arrays.copyOfRange(bArr, b2 + 1, bArr.length));
    }

    private static GeobFrame d(l lVar, int i) throws UnsupportedEncodingException {
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[i - 1];
        lVar.a(bArr, 0, i - 1);
        int b2 = b(bArr, 0);
        String str = new String(bArr, 0, b2, "ISO-8859-1");
        int i2 = b2 + 1;
        int a3 = a(bArr, i2, f);
        String str2 = new String(bArr, i2, a3 - i2, a2);
        int b3 = b(f) + a3;
        int a4 = a(bArr, b3, f);
        return new GeobFrame(str, str2, new String(bArr, b3, a4 - b3, a2), Arrays.copyOfRange(bArr, b(f) + a4, bArr.length));
    }

    private static ApicFrame a(l lVar, int i, int i2) throws UnsupportedEncodingException {
        String d;
        int i3 = 2;
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[i - 1];
        lVar.a(bArr, 0, i - 1);
        if (i2 == 2) {
            d = "image/" + v.d(new String(bArr, 0, 3, "ISO-8859-1"));
            if (d.equals("image/jpg")) {
                d = "image/jpeg";
            }
        } else {
            i3 = b(bArr, 0);
            d = v.d(new String(bArr, 0, i3, "ISO-8859-1"));
            if (d.indexOf(47) == -1) {
                d = "image/" + d;
            }
        }
        int i4 = bArr[i3 + 1] & Constants.UNKNOWN;
        int i5 = i3 + 2;
        int a3 = a(bArr, i5, f);
        return new ApicFrame(d, new String(bArr, i5, a3 - i5, a2), i4, Arrays.copyOfRange(bArr, b(f) + a3, bArr.length));
    }

    private static CommentFrame e(l lVar, int i) throws UnsupportedEncodingException {
        String str;
        int f = lVar.f();
        String a2 = a(f);
        byte[] bArr = new byte[3];
        lVar.a(bArr, 0, 3);
        String str2 = new String(bArr, 0, 3);
        byte[] bArr2 = new byte[i - 4];
        lVar.a(bArr2, 0, i - 4);
        int a3 = a(bArr2, 0, f);
        String str3 = new String(bArr2, 0, a3, a2);
        int b2 = a3 + b(f);
        if (b2 < bArr2.length) {
            str = new String(bArr2, b2, a(bArr2, b2, f) - b2, a2);
        } else {
            str = "";
        }
        return new CommentFrame(str2, str3, str);
    }

    private static ChapterFrame a(l lVar, int i, int i2, boolean z, int i3, InterfaceC0137a interfaceC0137a) throws UnsupportedEncodingException {
        int d = lVar.d();
        int b2 = b(lVar.f3511a, d);
        String str = new String(lVar.f3511a, d, b2 - d, "ISO-8859-1");
        lVar.c(b2 + 1);
        int m = lVar.m();
        int m2 = lVar.m();
        long k = lVar.k();
        if (k == 4294967295L) {
            k = -1;
        }
        long k2 = lVar.k();
        if (k2 == 4294967295L) {
            k2 = -1;
        }
        ArrayList arrayList = new ArrayList();
        int i4 = d + i;
        while (lVar.d() < i4) {
            Id3Frame a2 = a(i2, lVar, z, i3, interfaceC0137a);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterFrame(str, m, m2, k, k2, id3FrameArr);
    }

    private static ChapterTocFrame b(l lVar, int i, int i2, boolean z, int i3, InterfaceC0137a interfaceC0137a) throws UnsupportedEncodingException {
        int d = lVar.d();
        int b2 = b(lVar.f3511a, d);
        String str = new String(lVar.f3511a, d, b2 - d, "ISO-8859-1");
        lVar.c(b2 + 1);
        int f = lVar.f();
        boolean z2 = (f & 2) != 0;
        boolean z3 = (f & 1) != 0;
        int f2 = lVar.f();
        String[] strArr = new String[f2];
        for (int i4 = 0; i4 < f2; i4++) {
            int d2 = lVar.d();
            int b3 = b(lVar.f3511a, d2);
            strArr[i4] = new String(lVar.f3511a, d2, b3 - d2, "ISO-8859-1");
            lVar.c(b3 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = d + i;
        while (lVar.d() < i5) {
            Id3Frame a2 = a(i2, lVar, z, i3, interfaceC0137a);
            if (a2 != null) {
                arrayList.add(a2);
            }
        }
        Id3Frame[] id3FrameArr = new Id3Frame[arrayList.size()];
        arrayList.toArray(id3FrameArr);
        return new ChapterTocFrame(str, z2, z3, strArr, id3FrameArr);
    }

    private static BinaryFrame c(l lVar, int i, String str) {
        byte[] bArr = new byte[i];
        lVar.a(bArr, 0, i);
        return new BinaryFrame(str, bArr);
    }

    private static int f(l lVar, int i) {
        byte[] bArr = lVar.f3511a;
        int i2 = i;
        for (int d = lVar.d(); d + 1 < i2; d++) {
            if ((bArr[d] & Constants.UNKNOWN) == 255 && bArr[d + 1] == 0) {
                System.arraycopy(bArr, d + 2, bArr, d + 1, (i2 - d) - 2);
                i2--;
            }
        }
        return i2;
    }

    private static String a(int i) {
        switch (i) {
            case 0:
                return "ISO-8859-1";
            case 1:
                return WebRequest.CHARSET_UTF_16;
            case 2:
                return "UTF-16BE";
            case 3:
                return "UTF-8";
            default:
                return "ISO-8859-1";
        }
    }

    private static int a(byte[] bArr, int i, int i2) {
        int b2 = b(bArr, i);
        if (i2 != 0 && i2 != 3) {
            while (b2 < bArr.length - 1) {
                if (b2 % 2 != 0 || bArr[b2 + 1] != 0) {
                    b2 = b(bArr, b2 + 1);
                } else {
                    return b2;
                }
            }
            return bArr.length;
        }
        return b2;
    }

    private static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] != 0) {
                i++;
            } else {
                return i;
            }
        }
        return bArr.length;
    }

    private static int b(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Id3Decoder.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final int f3323a;
        private final boolean b;
        private final int c;

        public b(int i, boolean z, int i2) {
            this.f3323a = i;
            this.b = z;
            this.c = i2;
        }
    }
}
