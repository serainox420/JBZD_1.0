package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public interface InputAccessor {
    boolean hasMoreBytes() throws IOException;

    byte nextByte() throws IOException;

    void reset();

    /* loaded from: classes.dex */
    public static class Std implements InputAccessor {
        protected final byte[] _buffer;
        protected int _bufferedEnd;
        protected final int _bufferedStart;
        protected final InputStream _in;
        protected int _ptr;

        public Std(InputStream inputStream, byte[] bArr) {
            this._in = inputStream;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._ptr = 0;
            this._bufferedEnd = 0;
        }

        public Std(byte[] bArr) {
            this._in = null;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._bufferedEnd = bArr.length;
        }

        public Std(byte[] bArr, int i, int i2) {
            this._in = null;
            this._buffer = bArr;
            this._ptr = i;
            this._bufferedStart = i;
            this._bufferedEnd = i + i2;
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public boolean hasMoreBytes() throws IOException {
            int length;
            int read;
            if (this._ptr < this._bufferedEnd) {
                return true;
            }
            if (this._in != null && (length = this._buffer.length - this._ptr) >= 1 && (read = this._in.read(this._buffer, this._ptr, length)) > 0) {
                this._bufferedEnd += read;
                return true;
            }
            return false;
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public byte nextByte() throws IOException {
            if (this._ptr >= this._bufferedEnd && !hasMoreBytes()) {
                throw new EOFException("Failed auto-detect: could not read more than " + this._ptr + " bytes (max buffer size: " + this._buffer.length + ")");
            }
            byte[] bArr = this._buffer;
            int i = this._ptr;
            this._ptr = i + 1;
            return bArr[i];
        }

        @Override // com.fasterxml.jackson.core.format.InputAccessor
        public void reset() {
            this._ptr = this._bufferedStart;
        }

        public DataFormatMatcher createMatcher(JsonFactory jsonFactory, MatchStrength matchStrength) {
            return new DataFormatMatcher(this._in, this._buffer, this._bufferedStart, this._bufferedEnd - this._bufferedStart, jsonFactory, matchStrength);
        }
    }
}
