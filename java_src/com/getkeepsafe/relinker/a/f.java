package com.getkeepsafe.relinker.a;

import com.flurry.android.Constants;
import com.getkeepsafe.relinker.a.c;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ElfParser.java */
/* loaded from: classes2.dex */
public class f implements c, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final int f3115a = 1179403647;
    private final FileChannel b;

    public f(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.b = new FileInputStream(file).getChannel();
    }

    public c.b a() throws IOException {
        this.b.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (c(allocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short e = e(allocate, 4L);
        boolean z = e(allocate, 5L) == 2;
        if (e == 1) {
            return new d(z, this);
        }
        if (e == 2) {
            return new e(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    public List<String> b() throws IOException {
        long j;
        c.a a2;
        this.b.position(0L);
        ArrayList arrayList = new ArrayList();
        c.b a3 = a();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(a3.f3112a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = a3.f;
        if (j2 == 65535) {
            j2 = a3.a(0).f3114a;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            c.AbstractC0128c a4 = a3.a(j3);
            if (a4.f3113a != 2) {
                j3++;
            } else {
                j = a4.b;
                break;
            }
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        int i = 0;
        ArrayList<Long> arrayList2 = new ArrayList();
        long j4 = 0;
        do {
            a2 = a3.a(j, i);
            if (a2.f3111a == 1) {
                arrayList2.add(Long.valueOf(a2.b));
            } else if (a2.f3111a == 5) {
                j4 = a2.b;
            }
            i++;
        } while (a2.f3111a != 0);
        if (j4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long a5 = a(a3, j2, j4);
        for (Long l : arrayList2) {
            arrayList.add(a(allocate, l.longValue() + a5));
        }
        return arrayList;
    }

    private long a(c.b bVar, long j, long j2) throws IOException {
        for (long j3 = 0; j3 < j; j3++) {
            c.AbstractC0128c a2 = bVar.a(j3);
            if (a2.f3113a == 1 && a2.c <= j2 && j2 <= a2.c + a2.d) {
                return (j2 - a2.c) + a2.b;
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b.close();
    }

    protected String a(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short e = e(byteBuffer, j);
            if (e != 0) {
                sb.append((char) e);
                j = j2;
            } else {
                return sb.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int d(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    protected short e(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & Constants.UNKNOWN);
    }

    protected void a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int read = this.b.read(byteBuffer, j + j2);
            if (read == -1) {
                throw new EOFException();
            }
            j2 += read;
        }
        byteBuffer.position(0);
    }
}
