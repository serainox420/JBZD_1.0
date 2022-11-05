package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbov extends Reader {
    private List<String> zzcdA;
    private boolean closed = false;
    private int zzcdB;
    private int zzcdD = this.zzcdB;
    private int zzcdC;
    private int zzcdE = this.zzcdC;
    private boolean zzcdF = false;

    public zzbov() {
        this.zzcdA = null;
        this.zzcdA = new ArrayList();
    }

    private String zzYk() {
        if (this.zzcdC < this.zzcdA.size()) {
            return this.zzcdA.get(this.zzcdC);
        }
        return null;
    }

    private int zzYl() {
        String zzYk = zzYk();
        if (zzYk == null) {
            return 0;
        }
        return zzYk.length() - this.zzcdB;
    }

    private void zzYm() throws IOException {
        if (this.closed) {
            throw new IOException("Stream already closed");
        }
        if (this.zzcdF) {
            return;
        }
        throw new IOException("Reader needs to be frozen before read operations can be called");
    }

    private long zzaN(long j) {
        long j2 = 0;
        while (this.zzcdC < this.zzcdA.size() && j2 < j) {
            int zzYl = zzYl();
            long j3 = j - j2;
            if (j3 < zzYl) {
                this.zzcdB = (int) (this.zzcdB + j3);
                j2 += j3;
            } else {
                j2 += zzYl;
                this.zzcdB = 0;
                this.zzcdC++;
            }
        }
        return j2;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        zzYm();
        this.closed = true;
    }

    @Override // java.io.Reader
    public void mark(int i) throws IOException {
        zzYm();
        this.zzcdD = this.zzcdB;
        this.zzcdE = this.zzcdC;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        zzYm();
        String zzYk = zzYk();
        if (zzYk == null) {
            return -1;
        }
        char charAt = zzYk.charAt(this.zzcdB);
        zzaN(1L);
        return charAt;
    }

    @Override // java.io.Reader, java.lang.Readable
    public int read(CharBuffer charBuffer) throws IOException {
        zzYm();
        int remaining = charBuffer.remaining();
        int i = 0;
        String zzYk = zzYk();
        while (remaining > 0 && zzYk != null) {
            int min = Math.min(zzYk.length() - this.zzcdB, remaining);
            charBuffer.put(this.zzcdA.get(this.zzcdC), this.zzcdB, this.zzcdB + min);
            remaining -= min;
            i += min;
            zzaN(min);
            zzYk = zzYk();
        }
        if (i > 0 || zzYk != null) {
            return i;
        }
        return -1;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        zzYm();
        int i3 = 0;
        String zzYk = zzYk();
        while (zzYk != null && i3 < i2) {
            int min = Math.min(zzYl(), i2 - i3);
            zzYk.getChars(this.zzcdB, this.zzcdB + min, cArr, i + i3);
            zzaN(min);
            i3 += min;
            zzYk = zzYk();
        }
        if (i3 > 0 || zzYk != null) {
            return i3;
        }
        return -1;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        zzYm();
        return true;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        this.zzcdB = this.zzcdD;
        this.zzcdC = this.zzcdE;
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        zzYm();
        return zzaN(j);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zzcdA) {
            sb.append(str);
        }
        return sb.toString();
    }

    public void zzYj() {
        if (this.zzcdF) {
            throw new IllegalStateException("Trying to freeze frozen StringListReader");
        }
        this.zzcdF = true;
    }

    public void zziT(String str) {
        if (this.zzcdF) {
            throw new IllegalStateException("Trying to add string after reading");
        }
        if (str.length() <= 0) {
            return;
        }
        this.zzcdA.add(str);
    }
}
