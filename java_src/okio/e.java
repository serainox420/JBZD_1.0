package okio;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* compiled from: BufferedSource.java */
/* loaded from: classes3.dex */
public interface e extends r {
    int a(byte[] bArr, int i, int i2) throws IOException;

    long a(byte b) throws IOException;

    long a(q qVar) throws IOException;

    String a(Charset charset) throws IOException;

    void a(long j) throws IOException;

    void a(c cVar, long j) throws IOException;

    void a(byte[] bArr) throws IOException;

    boolean a(long j, ByteString byteString) throws IOException;

    c b();

    boolean b(long j) throws IOException;

    ByteString d(long j) throws IOException;

    boolean e() throws IOException;

    InputStream f();

    byte[] g(long j) throws IOException;

    byte h() throws IOException;

    void h(long j) throws IOException;

    short i() throws IOException;

    int j() throws IOException;

    long k() throws IOException;

    short l() throws IOException;

    int m() throws IOException;

    long n() throws IOException;

    long o() throws IOException;

    String r() throws IOException;

    byte[] s() throws IOException;
}
