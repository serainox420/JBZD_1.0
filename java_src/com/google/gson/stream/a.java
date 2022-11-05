package com.google.gson.stream;

import com.google.gson.internal.e;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* compiled from: JsonReader.java */
/* loaded from: classes2.dex */
public class a implements Closeable {
    private static final char[] b = ")]}'\n".toCharArray();
    private final Reader c;
    private long j;
    private int k;
    private String l;
    private int n;
    private String[] o;
    private int[] p;
    private boolean d = false;
    private final char[] e = new char[1024];
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;

    /* renamed from: a  reason: collision with root package name */
    int f3694a = 0;
    private int[] m = new int[32];

    static {
        e.f3682a = new e() { // from class: com.google.gson.stream.a.1
            @Override // com.google.gson.internal.e
            public void a(a aVar) throws IOException {
                if (aVar instanceof com.google.gson.internal.a.e) {
                    ((com.google.gson.internal.a.e) aVar).o();
                    return;
                }
                int i = aVar.f3694a;
                if (i == 0) {
                    i = aVar.r();
                }
                if (i == 13) {
                    aVar.f3694a = 9;
                } else if (i == 12) {
                    aVar.f3694a = 8;
                } else if (i == 14) {
                    aVar.f3694a = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.x());
                }
            }
        };
    }

    public a(Reader reader) {
        this.n = 0;
        int[] iArr = this.m;
        int i = this.n;
        this.n = i + 1;
        iArr[i] = 6;
        this.o = new String[32];
        this.p = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.c = reader;
    }

    public final void a(boolean z) {
        this.d = z;
    }

    public final boolean q() {
        return this.d;
    }

    public void a() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 3) {
            a(1);
            this.p[this.n - 1] = 0;
            this.f3694a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + x());
    }

    public void b() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 4) {
            this.n--;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            this.f3694a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + x());
    }

    public void c() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 1) {
            a(3);
            this.f3694a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + x());
    }

    public void d() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 2) {
            this.n--;
            this.o[this.n] = null;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            this.f3694a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + x());
    }

    public boolean e() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    public JsonToken f() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    int r() throws IOException {
        int i = this.m[this.n - 1];
        if (i == 1) {
            this.m[this.n - 1] = 2;
        } else if (i == 2) {
            switch (b(true)) {
                case 44:
                    break;
                case 59:
                    v();
                    break;
                case 93:
                    this.f3694a = 4;
                    return 4;
                default:
                    throw b("Unterminated array");
            }
        } else if (i == 3 || i == 5) {
            this.m[this.n - 1] = 4;
            if (i == 5) {
                switch (b(true)) {
                    case 44:
                        break;
                    case 59:
                        v();
                        break;
                    case 125:
                        this.f3694a = 2;
                        return 2;
                    default:
                        throw b("Unterminated object");
                }
            }
            int b2 = b(true);
            switch (b2) {
                case 34:
                    this.f3694a = 13;
                    return 13;
                case 39:
                    v();
                    this.f3694a = 12;
                    return 12;
                case 125:
                    if (i != 5) {
                        this.f3694a = 2;
                        return 2;
                    }
                    throw b("Expected name");
                default:
                    v();
                    this.f--;
                    if (a((char) b2)) {
                        this.f3694a = 14;
                        return 14;
                    }
                    throw b("Expected name");
            }
        } else if (i == 4) {
            this.m[this.n - 1] = 5;
            switch (b(true)) {
                case 58:
                    break;
                case 59:
                case 60:
                default:
                    throw b("Expected ':'");
                case 61:
                    v();
                    if ((this.f < this.g || b(1)) && this.e[this.f] == '>') {
                        this.f++;
                        break;
                    }
                    break;
            }
        } else if (i == 6) {
            if (this.d) {
                z();
            }
            this.m[this.n - 1] = 7;
        } else if (i == 7) {
            if (b(false) == -1) {
                this.f3694a = 17;
                return 17;
            }
            v();
            this.f--;
        } else if (i == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        switch (b(true)) {
            case 34:
                this.f3694a = 9;
                return 9;
            case 39:
                v();
                this.f3694a = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.f3694a = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.f3694a = 4;
                    return 4;
                }
                break;
            case 123:
                this.f3694a = 1;
                return 1;
            default:
                this.f--;
                int o = o();
                if (o == 0) {
                    int s = s();
                    if (s == 0) {
                        if (!a(this.e[this.f])) {
                            throw b("Expected value");
                        }
                        v();
                        this.f3694a = 10;
                        return 10;
                    }
                    return s;
                }
                return o;
        }
        if (i == 1 || i == 2) {
            v();
            this.f--;
            this.f3694a = 7;
            return 7;
        }
        throw b("Unexpected value");
    }

    private int o() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.e[this.f];
        if (c == 't' || c == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str = Consts.False;
            str2 = "FALSE";
            i = 6;
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f + i2 >= this.g && !b(i2 + 1)) {
                return 0;
            }
            char c2 = this.e[this.f + i2];
            if (c2 != str.charAt(i2) && c2 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f + length < this.g || b(length + 1)) && a(this.e[this.f + length])) {
            return 0;
        }
        this.f += length;
        this.f3694a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        if (r3 != 2) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
        if (r4 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r6 != Long.MIN_VALUE) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
        if (r5 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
        if (r5 == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
        r15.j = r6;
        r15.f += r10;
        r15.f3694a = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        if (a(r2) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00dc, code lost:
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00e0, code lost:
        if (r3 == 2) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e3, code lost:
        if (r3 == 4) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e6, code lost:
        if (r3 != 7) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e8, code lost:
        r15.k = r10;
        r15.f3694a = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f0, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int s() throws IOException {
        char c;
        boolean z;
        boolean z2;
        char[] cArr = this.e;
        int i = this.f;
        long j = 0;
        boolean z3 = false;
        boolean z4 = true;
        char c2 = 0;
        int i2 = 0;
        int i3 = this.g;
        int i4 = i;
        while (true) {
            if (i4 + i2 == i3) {
                if (i2 == cArr.length) {
                    return 0;
                }
                if (b(i2 + 1)) {
                    i4 = this.f;
                    i3 = this.g;
                }
            }
            char c3 = cArr[i4 + i2];
            switch (c3) {
                case '+':
                    if (c2 == 5) {
                        c = 6;
                        z = z4;
                        z2 = z3;
                        break;
                    } else {
                        return 0;
                    }
                case '-':
                    if (c2 == 0) {
                        c = 1;
                        boolean z5 = z4;
                        z2 = true;
                        z = z5;
                        break;
                    } else if (c2 == 5) {
                        c = 6;
                        z = z4;
                        z2 = z3;
                        break;
                    } else {
                        return 0;
                    }
                case '.':
                    if (c2 == 2) {
                        c = 3;
                        z = z4;
                        z2 = z3;
                        break;
                    } else {
                        return 0;
                    }
                case 'E':
                case 'e':
                    if (c2 == 2 || c2 == 4) {
                        c = 5;
                        z = z4;
                        z2 = z3;
                        break;
                    } else {
                        return 0;
                    }
                    break;
                default:
                    if (c3 >= '0' && c3 <= '9') {
                        if (c2 == 1 || c2 == 0) {
                            j = -(c3 - '0');
                            c = 2;
                            z = z4;
                            z2 = z3;
                            break;
                        } else if (c2 == 2) {
                            if (j == 0) {
                                return 0;
                            }
                            long j2 = (10 * j) - (c3 - '0');
                            boolean z6 = (j > -922337203685477580L || (j == -922337203685477580L && j2 < j)) & z4;
                            z2 = z3;
                            j = j2;
                            char c4 = c2;
                            z = z6;
                            c = c4;
                            break;
                        } else if (c2 == 3) {
                            c = 4;
                            z = z4;
                            z2 = z3;
                            break;
                        } else if (c2 != 5 && c2 != 6) {
                            c = c2;
                            z = z4;
                            z2 = z3;
                            break;
                        } else {
                            c = 7;
                            z = z4;
                            z2 = z3;
                            break;
                        }
                    }
                    break;
            }
            i2++;
            z3 = z2;
            z4 = z;
            c2 = c;
        }
    }

    private boolean a(char c) throws IOException {
        switch (c) {
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                break;
            default:
                return true;
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                v();
                break;
        }
        return false;
    }

    public String g() throws IOException {
        String b2;
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 14) {
            b2 = t();
        } else if (i == 12) {
            b2 = b('\'');
        } else if (i == 13) {
            b2 = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + x());
        }
        this.f3694a = 0;
        this.o[this.n - 1] = b2;
        return b2;
    }

    public String h() throws IOException {
        String str;
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 10) {
            str = t();
        } else if (i == 8) {
            str = b('\'');
        } else if (i == 9) {
            str = b('\"');
        } else if (i == 11) {
            str = this.l;
            this.l = null;
        } else if (i == 15) {
            str = Long.toString(this.j);
        } else if (i == 16) {
            str = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + x());
        }
        this.f3694a = 0;
        int[] iArr = this.p;
        int i2 = this.n - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 5) {
            this.f3694a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        } else if (i == 6) {
            this.f3694a = 0;
            int[] iArr2 = this.p;
            int i3 = this.n - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + x());
        }
    }

    public void j() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 7) {
            this.f3694a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + x());
    }

    public double k() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 15) {
            this.f3694a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.j;
        }
        if (i == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (i == 8 || i == 9) {
            this.l = b(i == 8 ? '\'' : '\"');
        } else if (i == 10) {
            this.l = t();
        } else if (i != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + x());
        }
        this.f3694a = 11;
        double parseDouble = Double.parseDouble(this.l);
        if (!this.d && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + x());
        }
        this.l = null;
        this.f3694a = 0;
        int[] iArr2 = this.p;
        int i3 = this.n - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public long l() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 15) {
            this.f3694a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.j;
        }
        if (i == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.l = t();
            } else {
                this.l = b(i == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.l);
                this.f3694a = 0;
                int[] iArr2 = this.p;
                int i3 = this.n - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + f() + x());
        }
        this.f3694a = 11;
        double parseDouble = Double.parseDouble(this.l);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.l + x());
        }
        this.l = null;
        this.f3694a = 0;
        int[] iArr3 = this.p;
        int i4 = this.n - 1;
        iArr3[i4] = iArr3[i4] + 1;
        return j;
    }

    private String b(char c) throws IOException {
        char[] cArr = this.e;
        StringBuilder sb = new StringBuilder();
        do {
            int i = this.f;
            int i2 = this.g;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.f = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    return sb.toString();
                }
                if (c2 == '\\') {
                    this.f = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    sb.append(y());
                    i = this.f;
                    i2 = this.g;
                    i4 = i;
                } else if (c2 == '\n') {
                    this.h++;
                    this.i = i4;
                }
                i3 = i4;
            }
            sb.append(cArr, i, i3 - i);
            this.f = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private String t() throws IOException {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        while (true) {
            if (this.f + i < this.g) {
                switch (this.e[this.f + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        v();
                        break;
                    default:
                        i++;
                }
            } else if (i < this.e.length) {
                if (b(i + 1)) {
                }
            } else {
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.e, this.f, i);
                this.f = i + this.f;
                if (!b(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            }
        }
        if (sb2 == null) {
            sb = new String(this.e, this.f, i);
        } else {
            sb2.append(this.e, this.f, i);
            sb = sb2.toString();
        }
        this.f = i + this.f;
        return sb;
    }

    private void c(char c) throws IOException {
        char[] cArr = this.e;
        do {
            int i = this.f;
            int i2 = this.g;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c2 = cArr[i3];
                if (c2 == c) {
                    this.f = i4;
                    return;
                }
                if (c2 == '\\') {
                    this.f = i4;
                    y();
                    i4 = this.f;
                    i2 = this.g;
                } else if (c2 == '\n') {
                    this.h++;
                    this.i = i4;
                }
                i3 = i4;
            }
            this.f = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private void u() throws IOException {
        do {
            int i = 0;
            while (this.f + i < this.g) {
                switch (this.e[this.f + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        this.f = i + this.f;
                        return;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        v();
                        this.f = i + this.f;
                        return;
                    default:
                        i++;
                }
            }
            this.f = i + this.f;
        } while (b(1));
    }

    public int m() throws IOException {
        int i = this.f3694a;
        if (i == 0) {
            i = r();
        }
        if (i == 15) {
            int i2 = (int) this.j;
            if (this.j != i2) {
                throw new NumberFormatException("Expected an int but was " + this.j + x());
            }
            this.f3694a = 0;
            int[] iArr = this.p;
            int i3 = this.n - 1;
            iArr[i3] = iArr[i3] + 1;
            return i2;
        }
        if (i == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (i == 8 || i == 9 || i == 10) {
            if (i == 10) {
                this.l = t();
            } else {
                this.l = b(i == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.l);
                this.f3694a = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + f() + x());
        }
        this.f3694a = 11;
        double parseDouble = Double.parseDouble(this.l);
        int i5 = (int) parseDouble;
        if (i5 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.l + x());
        }
        this.l = null;
        this.f3694a = 0;
        int[] iArr3 = this.p;
        int i6 = this.n - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3694a = 0;
        this.m[0] = 8;
        this.n = 1;
        this.c.close();
    }

    public void n() throws IOException {
        int i = 0;
        do {
            int i2 = this.f3694a;
            if (i2 == 0) {
                i2 = r();
            }
            if (i2 == 3) {
                a(1);
                i++;
            } else if (i2 == 1) {
                a(3);
                i++;
            } else if (i2 == 4) {
                this.n--;
                i--;
            } else if (i2 == 2) {
                this.n--;
                i--;
            } else if (i2 == 14 || i2 == 10) {
                u();
            } else if (i2 == 8 || i2 == 12) {
                c('\'');
            } else if (i2 == 9 || i2 == 13) {
                c('\"');
            } else if (i2 == 16) {
                this.f += this.k;
            }
            this.f3694a = 0;
        } while (i != 0);
        int[] iArr = this.p;
        int i3 = this.n - 1;
        iArr[i3] = iArr[i3] + 1;
        this.o[this.n - 1] = "null";
    }

    private void a(int i) {
        if (this.n == this.m.length) {
            int[] iArr = new int[this.n * 2];
            int[] iArr2 = new int[this.n * 2];
            String[] strArr = new String[this.n * 2];
            System.arraycopy(this.m, 0, iArr, 0, this.n);
            System.arraycopy(this.p, 0, iArr2, 0, this.n);
            System.arraycopy(this.o, 0, strArr, 0, this.n);
            this.m = iArr;
            this.p = iArr2;
            this.o = strArr;
        }
        int[] iArr3 = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr3[i2] = i;
    }

    private boolean b(int i) throws IOException {
        char[] cArr = this.e;
        this.i -= this.f;
        if (this.g != this.f) {
            this.g -= this.f;
            System.arraycopy(cArr, this.f, cArr, 0, this.g);
        } else {
            this.g = 0;
        }
        this.f = 0;
        do {
            int read = this.c.read(cArr, this.g, cArr.length - this.g);
            if (read == -1) {
                return false;
            }
            this.g = read + this.g;
            if (this.h == 0 && this.i == 0 && this.g > 0 && cArr[0] == 65279) {
                this.f++;
                this.i++;
                i++;
            }
        } while (this.g < i);
        return true;
    }

    private int b(boolean z) throws IOException {
        char[] cArr = this.e;
        int i = this.f;
        int i2 = this.g;
        while (true) {
            if (i == i2) {
                this.f = i;
                if (b(1)) {
                    i = this.f;
                    i2 = this.g;
                } else if (z) {
                    throw new EOFException("End of input" + x());
                } else {
                    return -1;
                }
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.h++;
                this.i = i3;
                i = i3;
            } else if (c == ' ' || c == '\r') {
                i = i3;
            } else if (c == '\t') {
                i = i3;
            } else if (c == '/') {
                this.f = i3;
                if (i3 == i2) {
                    this.f--;
                    boolean b2 = b(2);
                    this.f++;
                    if (!b2) {
                        return c;
                    }
                }
                v();
                switch (cArr[this.f]) {
                    case '*':
                        this.f++;
                        if (!a("*/")) {
                            throw b("Unterminated comment");
                        }
                        i = this.f + 2;
                        i2 = this.g;
                        continue;
                    case '/':
                        this.f++;
                        w();
                        i = this.f;
                        i2 = this.g;
                        continue;
                    default:
                        return c;
                }
            } else if (c == '#') {
                this.f = i3;
                v();
                w();
                i = this.f;
                i2 = this.g;
            } else {
                this.f = i3;
                return c;
            }
        }
    }

    private void v() throws IOException {
        if (!this.d) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void w() throws IOException {
        char c;
        do {
            if (this.f < this.g || b(1)) {
                char[] cArr = this.e;
                int i = this.f;
                this.f = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.h++;
                    this.i = this.f;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private boolean a(String str) throws IOException {
        while (true) {
            if (this.f + str.length() <= this.g || b(str.length())) {
                if (this.e[this.f] == '\n') {
                    this.h++;
                    this.i = this.f + 1;
                } else {
                    for (int i = 0; i < str.length(); i++) {
                        if (this.e[this.f + i] == str.charAt(i)) {
                        }
                    }
                    return true;
                }
                this.f++;
            } else {
                return false;
            }
        }
    }

    public String toString() {
        return getClass().getSimpleName() + x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String x() {
        return " at line " + (this.h + 1) + " column " + ((this.f - this.i) + 1) + " path " + p();
    }

    public String p() {
        StringBuilder append = new StringBuilder().append('$');
        int i = this.n;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.m[i2]) {
                case 1:
                case 2:
                    append.append('[').append(this.p[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    append.append('.');
                    if (this.o[i2] != null) {
                        append.append(this.o[i2]);
                        break;
                    } else {
                        break;
                    }
            }
        }
        return append.toString();
    }

    private char y() throws IOException {
        int i;
        if (this.f == this.g && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.e;
        int i2 = this.f;
        this.f = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\n':
                this.h++;
                this.i = this.f;
                return c;
            case '\"':
            case '\'':
            case '/':
            case '\\':
                return c;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                if (this.f + 4 > this.g && !b(4)) {
                    throw b("Unterminated escape sequence");
                }
                int i3 = this.f;
                int i4 = i3 + 4;
                char c2 = 0;
                for (int i5 = i3; i5 < i4; i5++) {
                    char c3 = this.e[i5];
                    char c4 = (char) (c2 << 4);
                    if (c3 >= '0' && c3 <= '9') {
                        i = c3 - '0';
                    } else if (c3 >= 'a' && c3 <= 'f') {
                        i = (c3 - 'a') + 10;
                    } else if (c3 >= 'A' && c3 <= 'F') {
                        i = (c3 - 'A') + 10;
                    } else {
                        throw new NumberFormatException("\\u" + new String(this.e, this.f, 4));
                    }
                    c2 = (char) (c4 + i);
                }
                this.f += 4;
                return c2;
            default:
                throw b("Invalid escape sequence");
        }
    }

    private IOException b(String str) throws IOException {
        throw new MalformedJsonException(str + x());
    }

    private void z() throws IOException {
        b(true);
        this.f--;
        if (this.f + b.length <= this.g || b(b.length)) {
            for (int i = 0; i < b.length; i++) {
                if (this.e[this.f + i] != b[i]) {
                    return;
                }
            }
            this.f += b.length;
        }
    }
}
