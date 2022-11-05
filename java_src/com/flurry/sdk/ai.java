package com.flurry.sdk;

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
/* loaded from: classes2.dex */
public final class ai implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    static final Pattern f2429a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() { // from class: com.flurry.sdk.ai.2
        @Override // java.io.OutputStream
        public final void write(int i) throws IOException {
        }
    };
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private long h;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, b> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;
    final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new Callable<Void>() { // from class: com.flurry.sdk.ai.1
        /* JADX INFO: Access modifiers changed from: private */
        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (ai.this) {
                if (ai.this.k != null) {
                    ai.this.g();
                    if (ai.this.e()) {
                        ai.this.d();
                        ai.this.m = 0;
                    }
                }
            }
            return null;
        }
    };
    private final int g = 1;
    private final int i = 1;

    private ai(File file, long j) {
        this.c = file;
        this.d = new File(file, "journal");
        this.e = new File(file, "journal.tmp");
        this.f = new File(file, "journal.bkp");
        this.h = j;
    }

    public static ai a(File file, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
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
        ai aiVar = new ai(file, j);
        if (aiVar.d.exists()) {
            try {
                aiVar.b();
                aiVar.c();
                aiVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aiVar.d, true), ak.f2437a));
                return aiVar;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                aiVar.close();
                ak.a(aiVar.c);
            }
        }
        file.mkdirs();
        ai aiVar2 = new ai(file, j);
        aiVar2.d();
        return aiVar2;
    }

    private void b() throws IOException {
        String a2;
        String substring;
        aj ajVar = new aj(new FileInputStream(this.d), ak.f2437a);
        try {
            String a3 = ajVar.a();
            String a4 = ajVar.a();
            String a5 = ajVar.a();
            String a6 = ajVar.a();
            String a7 = ajVar.a();
            if (!"libcore.io.DiskLruCache".equals(a3) || !"1".equals(a4) || !Integer.toString(this.g).equals(a5) || !Integer.toString(this.i).equals(a6) || !"".equals(a7)) {
                throw new IOException("unexpected journal header: [" + a3 + ", " + a4 + ", " + a6 + ", " + a7 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a2 = ajVar.a();
                    int indexOf = a2.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: " + a2);
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = a2.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        String substring2 = a2.substring(i2);
                        if (indexOf != 6 || !a2.startsWith("REMOVE")) {
                            substring = substring2;
                        } else {
                            this.l.remove(substring2);
                            i++;
                        }
                    } else {
                        substring = a2.substring(i2, indexOf2);
                    }
                    b bVar = this.l.get(substring);
                    if (bVar == null) {
                        bVar = new b(this, substring, (byte) 0);
                        this.l.put(substring, bVar);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && a2.startsWith("CLEAN")) {
                        String[] split = a2.substring(indexOf2 + 1).split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                        bVar.c = true;
                        bVar.d = null;
                        bVar.a(split);
                    } else if (indexOf2 != -1 || indexOf != 5 || !a2.startsWith("DIRTY")) {
                        if (indexOf2 != -1 || indexOf != 4 || !a2.startsWith("READ")) {
                            break;
                        }
                    } else {
                        bVar.d = new a(this, bVar, (byte) 0);
                    }
                    i++;
                } catch (EOFException e) {
                    this.m = i - this.l.size();
                    ak.a(ajVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + a2);
        } catch (Throwable th) {
            ak.a(ajVar);
            throw th;
        }
    }

    private void c() throws IOException {
        a(this.e);
        Iterator<b> it = this.l.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.d == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.b[i];
                }
            } else {
                next.d = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.a(i2));
                    a(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), ak.f2437a));
        bufferedWriter.write("libcore.io.DiskLruCache");
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.g));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.i));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (b bVar : this.l.values()) {
            if (bVar.d != null) {
                bufferedWriter.write("DIRTY " + bVar.f2433a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + bVar.f2433a + bVar.a() + '\n');
            }
        }
        bufferedWriter.close();
        if (this.d.exists()) {
            a(this.d, this.f, true);
        }
        a(this.e, this.d, false);
        this.f.delete();
        this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), ak.f2437a));
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

    public final synchronized c a(String str) throws IOException {
        c cVar = null;
        synchronized (this) {
            f();
            d(str);
            b bVar = this.l.get(str);
            if (bVar != null && bVar.c) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(bVar.a(i));
                    } catch (FileNotFoundException e) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            ak.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + str + '\n'));
                if (e()) {
                    this.b.submit(this.o);
                }
                cVar = new c(this, str, bVar.e, inputStreamArr, bVar.b, (byte) 0);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized a b(String str) throws IOException {
        b bVar;
        a aVar;
        f();
        d(str);
        b bVar2 = this.l.get(str);
        if (-1 == -1 || (bVar2 != null && bVar2.e == -1)) {
            if (bVar2 == null) {
                b bVar3 = new b(this, str, (byte) 0);
                this.l.put(str, bVar3);
                bVar = bVar3;
            } else if (bVar2.d != null) {
                aVar = null;
            } else {
                bVar = bVar2;
            }
            aVar = new a(this, bVar, (byte) 0);
            bVar.d = aVar;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            aVar = null;
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(a aVar, boolean z) throws IOException {
        synchronized (this) {
            b bVar = aVar.f2431a;
            if (bVar.d != aVar) {
                throw new IllegalStateException();
            }
            if (z && !bVar.c) {
                for (int i = 0; i < this.i; i++) {
                    if (!aVar.b[i]) {
                        aVar.b();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    } else if (!bVar.b(i).exists()) {
                        aVar.b();
                        break;
                    }
                }
            }
            for (int i2 = 0; i2 < this.i; i2++) {
                File b2 = bVar.b(i2);
                if (z) {
                    if (b2.exists()) {
                        File a2 = bVar.a(i2);
                        b2.renameTo(a2);
                        long j = bVar.b[i2];
                        long length = a2.length();
                        bVar.b[i2] = length;
                        this.j = (this.j - j) + length;
                    }
                } else {
                    a(b2);
                }
            }
            this.m++;
            bVar.d = null;
            if (!(bVar.c | z)) {
                this.l.remove(bVar.f2433a);
                this.k.write("REMOVE " + bVar.f2433a + '\n');
            } else {
                bVar.c = true;
                this.k.write("CLEAN " + bVar.f2433a + bVar.a() + '\n');
                if (z) {
                    long j2 = this.n;
                    this.n = 1 + j2;
                    bVar.e = j2;
                }
            }
            this.k.flush();
            if (this.j > this.h || e()) {
                this.b.submit(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public final synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            f();
            d(str);
            b bVar = this.l.get(str);
            if (bVar == null || bVar.d != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File a2 = bVar.a(i);
                    if (a2.exists() && !a2.delete()) {
                        throw new IOException("failed to delete " + a2);
                    }
                    this.j -= bVar.b[i];
                    bVar.b[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (e()) {
                    this.b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    private void f() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() throws IOException {
        if (this.k != null) {
            Iterator it = new ArrayList(this.l.values()).iterator();
            while (it.hasNext()) {
                b bVar = (b) it.next();
                if (bVar.d != null) {
                    bVar.d.b();
                }
            }
            g();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        while (this.j > this.h) {
            c(this.l.entrySet().iterator().next().getKey());
        }
    }

    private static void d(String str) {
        if (!f2429a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* loaded from: classes2.dex */
    public final class c implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        final InputStream[] f2434a;
        private final String c;
        private final long d;
        private final long[] e;

        /* synthetic */ c(ai aiVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, byte b) {
            this(str, j, inputStreamArr, jArr);
        }

        private c(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.c = str;
            this.d = j;
            this.f2434a = inputStreamArr;
            this.e = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.f2434a) {
                ak.a(inputStream);
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class a {

        /* renamed from: a  reason: collision with root package name */
        final b f2431a;
        final boolean[] b;
        boolean c;
        boolean d;

        /* synthetic */ a(ai aiVar, b bVar, byte b) {
            this(bVar);
        }

        private a(b bVar) {
            this.f2431a = bVar;
            this.b = bVar.c ? null : new boolean[ai.this.i];
        }

        public final OutputStream a() throws IOException {
            OutputStream outputStream;
            FileOutputStream fileOutputStream;
            synchronized (ai.this) {
                if (this.f2431a.d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f2431a.c) {
                    this.b[0] = true;
                }
                File b = this.f2431a.b(0);
                try {
                    fileOutputStream = new FileOutputStream(b);
                } catch (FileNotFoundException e) {
                    ai.this.c.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(b);
                    } catch (FileNotFoundException e2) {
                        outputStream = ai.p;
                    }
                }
                outputStream = new C0114a(this, fileOutputStream, (byte) 0);
            }
            return outputStream;
        }

        public final void b() throws IOException {
            ai.this.a(this, false);
        }

        /* renamed from: com.flurry.sdk.ai$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class C0114a extends FilterOutputStream {
            /* synthetic */ C0114a(a aVar, OutputStream outputStream, byte b) {
                this(outputStream);
            }

            private C0114a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    a.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    a.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    a.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    a.this.c = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f2433a;
        final long[] b;
        boolean c;
        a d;
        long e;

        /* synthetic */ b(ai aiVar, String str, byte b) {
            this(str);
        }

        private b(String str) {
            this.f2433a = str;
            this.b = new long[ai.this.i];
        }

        public final String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        final void a(String[] strArr) throws IOException {
            if (strArr.length != ai.this.i) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }

        private static IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final File a(int i) {
            return new File(ai.this.c, this.f2433a + "." + i);
        }

        public final File b(int i) {
            return new File(ai.this.c, this.f2433a + "." + i + ".tmp");
        }
    }
}
