package com.google.gson.internal.a;

import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;
/* compiled from: JsonTreeReader.java */
/* loaded from: classes2.dex */
public final class e extends com.google.gson.stream.a {
    private static final Reader b = new Reader() { // from class: com.google.gson.internal.a.e.1
        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object c = new Object();
    private Object[] d;
    private int e;
    private String[] f;
    private int[] g;

    @Override // com.google.gson.stream.a
    public void a() throws IOException {
        a(JsonToken.BEGIN_ARRAY);
        a(((com.google.gson.f) s()).iterator());
        this.g[this.e - 1] = 0;
    }

    @Override // com.google.gson.stream.a
    public void b() throws IOException {
        a(JsonToken.END_ARRAY);
        t();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.a
    public void c() throws IOException {
        a(JsonToken.BEGIN_OBJECT);
        a(((com.google.gson.k) s()).o().iterator());
    }

    @Override // com.google.gson.stream.a
    public void d() throws IOException {
        a(JsonToken.END_OBJECT);
        t();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.a
    public boolean e() throws IOException {
        JsonToken f = f();
        return (f == JsonToken.END_OBJECT || f == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.stream.a
    public JsonToken f() throws IOException {
        if (this.e == 0) {
            return JsonToken.END_DOCUMENT;
        }
        Object s = s();
        if (s instanceof Iterator) {
            boolean z = this.d[this.e - 2] instanceof com.google.gson.k;
            Iterator it = (Iterator) s;
            if (!it.hasNext()) {
                return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
            } else if (z) {
                return JsonToken.NAME;
            } else {
                a(it.next());
                return f();
            }
        } else if (s instanceof com.google.gson.k) {
            return JsonToken.BEGIN_OBJECT;
        } else {
            if (s instanceof com.google.gson.f) {
                return JsonToken.BEGIN_ARRAY;
            }
            if (s instanceof com.google.gson.l) {
                com.google.gson.l lVar = (com.google.gson.l) s;
                if (lVar.q()) {
                    return JsonToken.STRING;
                }
                if (lVar.o()) {
                    return JsonToken.BOOLEAN;
                }
                if (lVar.p()) {
                    return JsonToken.NUMBER;
                }
                throw new AssertionError();
            } else if (s instanceof com.google.gson.j) {
                return JsonToken.NULL;
            } else {
                if (s == c) {
                    throw new IllegalStateException("JsonReader is closed");
                }
                throw new AssertionError();
            }
        }
    }

    private Object s() {
        return this.d[this.e - 1];
    }

    private Object t() {
        Object[] objArr = this.d;
        int i = this.e - 1;
        this.e = i;
        Object obj = objArr[i];
        this.d[this.e] = null;
        return obj;
    }

    private void a(JsonToken jsonToken) throws IOException {
        if (f() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + f() + u());
        }
    }

    @Override // com.google.gson.stream.a
    public String g() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) s()).next();
        String str = (String) entry.getKey();
        this.f[this.e - 1] = str;
        a(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.a
    public String h() throws IOException {
        JsonToken f = f();
        if (f != JsonToken.STRING && f != JsonToken.NUMBER) {
            throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + f + u());
        }
        String b2 = ((com.google.gson.l) t()).b();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return b2;
    }

    @Override // com.google.gson.stream.a
    public boolean i() throws IOException {
        a(JsonToken.BOOLEAN);
        boolean f = ((com.google.gson.l) t()).f();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return f;
    }

    @Override // com.google.gson.stream.a
    public void j() throws IOException {
        a(JsonToken.NULL);
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
    }

    @Override // com.google.gson.stream.a
    public double k() throws IOException {
        JsonToken f = f();
        if (f != JsonToken.NUMBER && f != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + f + u());
        }
        double c2 = ((com.google.gson.l) s()).c();
        if (!q() && (Double.isNaN(c2) || Double.isInfinite(c2))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + c2);
        }
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return c2;
    }

    @Override // com.google.gson.stream.a
    public long l() throws IOException {
        JsonToken f = f();
        if (f != JsonToken.NUMBER && f != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + f + u());
        }
        long d = ((com.google.gson.l) s()).d();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return d;
    }

    @Override // com.google.gson.stream.a
    public int m() throws IOException {
        JsonToken f = f();
        if (f != JsonToken.NUMBER && f != JsonToken.STRING) {
            throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + f + u());
        }
        int e = ((com.google.gson.l) s()).e();
        t();
        if (this.e > 0) {
            int[] iArr = this.g;
            int i = this.e - 1;
            iArr[i] = iArr[i] + 1;
        }
        return e;
    }

    @Override // com.google.gson.stream.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.d = new Object[]{c};
        this.e = 1;
    }

    @Override // com.google.gson.stream.a
    public void n() throws IOException {
        if (f() == JsonToken.NAME) {
            g();
            this.f[this.e - 2] = "null";
        } else {
            t();
            this.f[this.e - 1] = "null";
        }
        int[] iArr = this.g;
        int i = this.e - 1;
        iArr[i] = iArr[i] + 1;
    }

    @Override // com.google.gson.stream.a
    public String toString() {
        return getClass().getSimpleName();
    }

    public void o() throws IOException {
        a(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) s()).next();
        a(entry.getValue());
        a(new com.google.gson.l((String) entry.getKey()));
    }

    private void a(Object obj) {
        if (this.e == this.d.length) {
            Object[] objArr = new Object[this.e * 2];
            int[] iArr = new int[this.e * 2];
            String[] strArr = new String[this.e * 2];
            System.arraycopy(this.d, 0, objArr, 0, this.e);
            System.arraycopy(this.g, 0, iArr, 0, this.e);
            System.arraycopy(this.f, 0, strArr, 0, this.e);
            this.d = objArr;
            this.g = iArr;
            this.f = strArr;
        }
        Object[] objArr2 = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr2[i] = obj;
    }

    @Override // com.google.gson.stream.a
    public String p() {
        StringBuilder append = new StringBuilder().append('$');
        int i = 0;
        while (i < this.e) {
            if (this.d[i] instanceof com.google.gson.f) {
                i++;
                if (this.d[i] instanceof Iterator) {
                    append.append('[').append(this.g[i]).append(']');
                }
            } else if (this.d[i] instanceof com.google.gson.k) {
                i++;
                if (this.d[i] instanceof Iterator) {
                    append.append('.');
                    if (this.f[i] != null) {
                        append.append(this.f[i]);
                    }
                }
            }
            i++;
        }
        return append.toString();
    }

    private String u() {
        return " at path " + p();
    }
}
