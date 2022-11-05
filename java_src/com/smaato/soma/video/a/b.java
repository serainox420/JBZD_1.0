package com.smaato.soma.video.a;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
/* compiled from: DiskLruCache.java */
/* loaded from: classes3.dex */
public final class b implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f5283a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.smaato.soma.video.a.b.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, C0574b> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;
    final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.smaato.soma.video.a.b.1
        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (b.this) {
                if (b.this.k != null) {
                    b.this.j();
                    if (b.this.h()) {
                        b.this.g();
                        b.this.m = 0;
                    }
                }
            }
            return null;
        }
    };

    private b(File file, int i, int i2, long j) {
        this.c = file;
        this.g = i;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.i = i2;
        this.h = j;
    }

    public static b a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        b bVar = new b(file, i, i2, j);
        if (bVar.d.exists()) {
            try {
                bVar.e();
                bVar.f();
                bVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(bVar.d, true), d.f5291a));
                return bVar;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                bVar.c();
            }
        }
        file.mkdirs();
        b bVar2 = new b(file, i, i2, j);
        bVar2.g();
        return bVar2;
    }

    private void e() throws IOException {
        com.smaato.soma.video.a.c cVar = new com.smaato.soma.video.a.c(new FileInputStream(this.d), d.f5291a);
        try {
            String a2 = cVar.a();
            String a3 = cVar.a();
            String a4 = cVar.a();
            String a5 = cVar.a();
            String a6 = cVar.a();
            if (!"libcore.io.DiskLruCache".equals(a2) || !"1".equals(a3) || !Integer.toString(this.g).equals(a4) || !Integer.toString(this.i).equals(a5) || !"".equals(a6)) {
                throw new IOException("unexpected journal header: [" + a2 + ", " + a3 + ", " + a5 + ", " + a6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    d(cVar.a());
                    i++;
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    d.a(cVar);
                    return;
                }
            }
        } catch (Throwable th) {
            d.a(cVar);
            throw th;
        }
    }

    private void d(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring2 = str.substring(i);
            if (indexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.l.remove(substring2);
                return;
            }
            substring = substring2;
        } else {
            substring = str.substring(i, indexOf2);
        }
        C0574b c0574b = this.l.get(substring);
        if (c0574b == null) {
            c0574b = new C0574b(substring);
            this.l.put(substring, c0574b);
        }
        if (indexOf2 != -1 && indexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
            c0574b.d = true;
            c0574b.e = null;
            c0574b.a(split);
        } else if (indexOf2 != -1 || indexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (indexOf2 != -1 || indexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            c0574b.e = new a(c0574b);
        }
    }

    private void f() throws IOException {
        a(this.e);
        Iterator<C0574b> it = this.l.values().iterator();
        while (it.hasNext()) {
            C0574b next = it.next();
            if (next.e == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.c[i];
                }
            } else {
                next.e = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.a(i2));
                    a(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), d.f5291a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.g));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.i));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (C0574b c0574b : this.l.values()) {
            if (c0574b.e != null) {
                bufferedWriter.write("DIRTY " + c0574b.b + '\n');
            } else {
                bufferedWriter.write("CLEAN " + c0574b.b + c0574b.a() + '\n');
            }
        }
        bufferedWriter.close();
        if (this.d.exists()) {
            a(this.d, this.f, true);
        }
        a(this.e, this.d, false);
        this.f.delete();
        this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), d.f5291a));
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized c a(String str) throws IOException {
        c cVar = null;
        synchronized (this) {
            i();
            e(str);
            C0574b c0574b = this.l.get(str);
            if (c0574b != null && c0574b.d) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(c0574b.a(i));
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            d.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + str + '\n'));
                if (h()) {
                    this.b.submit(this.o);
                }
                cVar = new c(str, c0574b.f, inputStreamArr, c0574b.c);
            }
        }
        return cVar;
    }

    public a b(String str) throws IOException {
        return a(str, -1L);
    }

    private synchronized a a(String str, long j) throws IOException {
        C0574b c0574b;
        a aVar;
        i();
        e(str);
        C0574b c0574b2 = this.l.get(str);
        if (j == -1 || (c0574b2 != null && c0574b2.f == j)) {
            if (c0574b2 == null) {
                C0574b c0574b3 = new C0574b(str);
                this.l.put(str, c0574b3);
                c0574b = c0574b3;
            } else if (c0574b2.e != null) {
                aVar = null;
            } else {
                c0574b = c0574b2;
            }
            aVar = new a(c0574b);
            c0574b.e = aVar;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public File a() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        synchronized (this) {
            C0574b c0574b = aVar.b;
            if (c0574b.e != aVar) {
                throw new IllegalStateException();
            }
            if (z && !c0574b.d) {
                for (int i = 0; i < this.i; i++) {
                    if (!aVar.c[i]) {
                        aVar.b();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    } else if (!c0574b.b(i).exists()) {
                        aVar.b();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.i; i2++) {
                File b = c0574b.b(i2);
                if (z) {
                    if (b.exists()) {
                        File a2 = c0574b.a(i2);
                        b.renameTo(a2);
                        long j = c0574b.c[i2];
                        long length = a2.length();
                        c0574b.c[i2] = length;
                        this.j = (this.j - j) + length;
                    }
                } else {
                    a(b);
                }
            }
            this.m++;
            c0574b.e = null;
            if (c0574b.d | z) {
                c0574b.d = true;
                this.k.write("CLEAN " + c0574b.b + c0574b.a() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    c0574b.f = j2;
                }
            } else {
                this.l.remove(c0574b.b);
                this.k.write("REMOVE " + c0574b.b + '\n');
            }
            this.k.flush();
            if (this.j > this.h || h()) {
                this.b.submit(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            i();
            e(str);
            C0574b c0574b = this.l.get(str);
            if (c0574b == null || c0574b.e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File a2 = c0574b.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException("failed to delete " + a2);
                    }
                    this.j -= c0574b.c[i];
                    c0574b.c[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (h()) {
                    this.b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    private void i() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void b() throws IOException {
        i();
        j();
        this.k.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                C0574b c0574b = (C0574b) it.next();
                if (c0574b.e != null) {
                    c0574b.e.b();
                }
            }
            j();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() throws IOException {
        while (this.j > this.h) {
            c(this.l.entrySet().iterator().next().getKey());
        }
    }

    public void c() throws IOException {
        close();
        d.a(this.c);
    }

    private void e(String str) {
        if (!f5283a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes3.dex */
    public final class c implements Closeable {
        private final String b;
        private final long c;
        private final InputStream[] d;
        private final long[] e;

        private c(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.d = inputStreamArr;
            this.e = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.d) {
                d.a(inputStream);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes3.dex */
    public final class a {
        private final C0574b b;
        private final boolean[] c;
        private boolean d;
        private boolean e;

        private a(C0574b c0574b) {
            this.b = c0574b;
            this.c = c0574b.d ? null : new boolean[b.this.i];
        }

        public OutputStream a(int i) throws IOException {
            OutputStream outputStream;
            FileOutputStream fileOutputStream;
            synchronized (b.this) {
                if (this.b.e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.d) {
                    this.c[i] = true;
                }
                File b = this.b.b(i);
                try {
                    fileOutputStream = new FileOutputStream(b);
                } catch (FileNotFoundException e) {
                    b.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(b);
                    } catch (FileNotFoundException e2) {
                        outputStream = b.p;
                    }
                }
                outputStream = new C0573a(fileOutputStream);
            }
            return outputStream;
        }

        public void a() throws IOException {
            if (this.d) {
                b.this.a(this, false);
                b.this.c(this.b.b);
            } else {
                b.this.a(this, true);
            }
            this.e = true;
        }

        public void b() throws IOException {
            b.this.a(this, false);
        }

        /* compiled from: DiskLruCache.java */
        /* renamed from: com.smaato.soma.video.a.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        private class C0573a extends FilterOutputStream {
            private C0573a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    a.this.d = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskLruCache.java */
    /* renamed from: com.smaato.soma.video.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class C0574b {
        private final String b;
        private final long[] c;
        private boolean d;
        private a e;
        private long f;

        private C0574b(String str) {
            this.b = str;
            this.c = new long[b.this.i];
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != b.this.i) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            return new File(b.this.c, this.b + "." + i);
        }

        public File b(int i) {
            return new File(b.this.c, this.b + "." + i + ".tmp");
        }
    }
}
