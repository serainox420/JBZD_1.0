package okio;

import java.io.IOException;
/* compiled from: BufferedSink.java */
/* loaded from: classes3.dex */
public interface d extends q {
    long a(r rVar) throws IOException;

    c b();

    d b(String str) throws IOException;

    d b(ByteString byteString) throws IOException;

    d c(byte[] bArr) throws IOException;

    d c(byte[] bArr, int i, int i2) throws IOException;

    d d() throws IOException;

    @Override // okio.q, java.io.Flushable
    void flush() throws IOException;

    d g(int i) throws IOException;

    d h(int i) throws IOException;

    d i(int i) throws IOException;

    d l(long j) throws IOException;

    d m(long j) throws IOException;

    d n(long j) throws IOException;

    d w() throws IOException;
}
