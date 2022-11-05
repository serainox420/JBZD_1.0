package com.google.gson.stream;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* compiled from: JsonWriter.java */
/* loaded from: classes2.dex */
public class b implements Closeable, Flushable {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f3695a = new String[128];
    private static final String[] b;
    private final Writer c;
    private int[] d = new int[32];
    private int e = 0;
    private String f;
    private String g;
    private boolean h;
    private boolean i;
    private String j;
    private boolean k;

    static {
        for (int i = 0; i <= 31; i++) {
            f3695a[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        f3695a[34] = "\\\"";
        f3695a[92] = "\\\\";
        f3695a[9] = "\\t";
        f3695a[8] = "\\b";
        f3695a[10] = "\\n";
        f3695a[13] = "\\r";
        f3695a[12] = "\\f";
        b = (String[]) f3695a.clone();
        b[60] = "\\u003c";
        b[62] = "\\u003e";
        b[38] = "\\u0026";
        b[61] = "\\u003d";
        b[39] = "\\u0027";
    }

    public b(Writer writer) {
        a(6);
        this.g = ":";
        this.k = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.c = writer;
    }

    public final void c(String str) {
        if (str.length() == 0) {
            this.f = null;
            this.g = ":";
            return;
        }
        this.f = str;
        this.g = ": ";
    }

    public final void b(boolean z) {
        this.h = z;
    }

    public boolean g() {
        return this.h;
    }

    public final void c(boolean z) {
        this.i = z;
    }

    public final boolean h() {
        return this.i;
    }

    public final void d(boolean z) {
        this.k = z;
    }

    public final boolean i() {
        return this.k;
    }

    public b b() throws IOException {
        j();
        return a(1, "[");
    }

    public b c() throws IOException {
        return a(1, 2, "]");
    }

    public b d() throws IOException {
        j();
        return a(3, "{");
    }

    public b e() throws IOException {
        return a(3, 5, "}");
    }

    private b a(int i, String str) throws IOException {
        m();
        a(i);
        this.c.write(str);
        return this;
    }

    private b a(int i, int i2, String str) throws IOException {
        int a2 = a();
        if (a2 != i2 && a2 != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.j != null) {
            throw new IllegalStateException("Dangling name: " + this.j);
        }
        this.e--;
        if (a2 == i2) {
            k();
        }
        this.c.write(str);
        return this;
    }

    private void a(int i) {
        if (this.e == this.d.length) {
            int[] iArr = new int[this.e * 2];
            System.arraycopy(this.d, 0, iArr, 0, this.e);
            this.d = iArr;
        }
        int[] iArr2 = this.d;
        int i2 = this.e;
        this.e = i2 + 1;
        iArr2[i2] = i;
    }

    private int a() {
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.d[this.e - 1];
    }

    private void b(int i) {
        this.d[this.e - 1] = i;
    }

    public b a(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.j != null) {
            throw new IllegalStateException();
        }
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.j = str;
        return this;
    }

    private void j() throws IOException {
        if (this.j != null) {
            l();
            d(this.j);
            this.j = null;
        }
    }

    public b b(String str) throws IOException {
        if (str == null) {
            return f();
        }
        j();
        m();
        d(str);
        return this;
    }

    public b f() throws IOException {
        if (this.j != null) {
            if (this.k) {
                j();
            } else {
                this.j = null;
                return this;
            }
        }
        m();
        this.c.write("null");
        return this;
    }

    public b a(boolean z) throws IOException {
        j();
        m();
        this.c.write(z ? "true" : Consts.False);
        return this;
    }

    public b a(Boolean bool) throws IOException {
        if (bool == null) {
            return f();
        }
        j();
        m();
        this.c.write(bool.booleanValue() ? "true" : Consts.False);
        return this;
    }

    public b a(long j) throws IOException {
        j();
        m();
        this.c.write(Long.toString(j));
        return this;
    }

    public b a(Number number) throws IOException {
        if (number == null) {
            return f();
        }
        j();
        String obj = number.toString();
        if (!this.h && (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        m();
        this.c.append((CharSequence) obj);
        return this;
    }

    public void flush() throws IOException {
        if (this.e == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.c.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.c.close();
        int i = this.e;
        if (i > 1 || (i == 1 && this.d[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.e = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void d(String str) throws IOException {
        String str2;
        int i = 0;
        String[] strArr = this.i ? b : f3695a;
        this.c.write("\"");
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                str2 = strArr[charAt];
                if (str2 == null) {
                }
                if (i < i2) {
                    this.c.write(str, i, i2 - i);
                }
                this.c.write(str2);
                i = i2 + 1;
            } else {
                if (charAt == 8232) {
                    str2 = "\\u2028";
                } else if (charAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i < i2) {
                }
                this.c.write(str2);
                i = i2 + 1;
            }
        }
        if (i < length) {
            this.c.write(str, i, length - i);
        }
        this.c.write("\"");
    }

    private void k() throws IOException {
        if (this.f != null) {
            this.c.write("\n");
            int i = this.e;
            for (int i2 = 1; i2 < i; i2++) {
                this.c.write(this.f);
            }
        }
    }

    private void l() throws IOException {
        int a2 = a();
        if (a2 == 5) {
            this.c.write(44);
        } else if (a2 != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        k();
        b(4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void m() throws IOException {
        switch (a()) {
            case 1:
                b(2);
                k();
                return;
            case 2:
                this.c.append(',');
                k();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.c.append((CharSequence) this.g);
                b(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.h) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        b(7);
    }
}
