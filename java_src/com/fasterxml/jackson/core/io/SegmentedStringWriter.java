package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.Writer;
/* loaded from: classes.dex */
public final class SegmentedStringWriter extends Writer {
    private final TextBuffer _buffer;

    public SegmentedStringWriter(BufferRecycler bufferRecycler) {
        this._buffer = new TextBuffer(bufferRecycler);
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public Writer mo186append(char c) {
        write(c);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public Writer mo187append(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public Writer mo188append(CharSequence charSequence, int i, int i2) {
        String charSequence2 = charSequence.subSequence(i, i2).toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.Writer
    public void write(char[] cArr) {
        this._buffer.append(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        this._buffer.append(cArr, i, i2);
    }

    @Override // java.io.Writer
    public void write(int i) {
        this._buffer.append((char) i);
    }

    @Override // java.io.Writer
    public void write(String str) {
        this._buffer.append(str, 0, str.length());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        this._buffer.append(str, i, i2);
    }

    public String getAndClear() {
        String contentsAsString = this._buffer.contentsAsString();
        this._buffer.releaseBuffers();
        return contentsAsString;
    }
}
