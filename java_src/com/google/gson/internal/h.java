package com.google.gson.internal;

import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.internal.a.n;
import com.google.gson.j;
import com.google.gson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;
/* compiled from: Streams.java */
/* loaded from: classes2.dex */
public final class h {
    public static com.google.gson.i a(com.google.gson.stream.a aVar) throws JsonParseException {
        boolean z = true;
        try {
            aVar.f();
            z = false;
            return n.X.b(aVar);
        } catch (MalformedJsonException e) {
            throw new JsonSyntaxException(e);
        } catch (EOFException e2) {
            if (z) {
                return j.f3689a;
            }
            throw new JsonSyntaxException(e2);
        } catch (IOException e3) {
            throw new JsonIOException(e3);
        } catch (NumberFormatException e4) {
            throw new JsonSyntaxException(e4);
        }
    }

    public static void a(com.google.gson.i iVar, com.google.gson.stream.b bVar) throws IOException {
        n.X.a(bVar, iVar);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }

    /* compiled from: Streams.java */
    /* loaded from: classes2.dex */
    private static final class a extends Writer {

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f3684a;
        private final C0507a b = new C0507a();

        a(Appendable appendable) {
            this.f3684a = appendable;
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) throws IOException {
            this.b.f3685a = cArr;
            this.f3684a.append(this.b, i, i + i2);
        }

        @Override // java.io.Writer
        public void write(int i) throws IOException {
            this.f3684a.append((char) i);
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        /* compiled from: Streams.java */
        /* renamed from: com.google.gson.internal.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class C0507a implements CharSequence {

            /* renamed from: a  reason: collision with root package name */
            char[] f3685a;

            C0507a() {
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f3685a.length;
            }

            @Override // java.lang.CharSequence
            public char charAt(int i) {
                return this.f3685a[i];
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i, int i2) {
                return new String(this.f3685a, i, i2 - i);
            }
        }
    }
}
