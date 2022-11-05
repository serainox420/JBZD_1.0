package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import okhttp3.internal.Util;
import okio.ByteString;
import okio.d;
import okio.k;
import okio.r;
/* loaded from: classes3.dex */
public abstract class RequestBody {
    public abstract MediaType contentType();

    public abstract void writeTo(d dVar) throws IOException;

    public long contentLength() throws IOException {
        return -1L;
    }

    public static RequestBody create(MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null && (charset = mediaType.charset()) == null) {
            charset = Util.UTF_8;
            mediaType = MediaType.parse(mediaType + "; charset=utf-8");
        }
        return create(mediaType, str.getBytes(charset));
    }

    public static RequestBody create(final MediaType mediaType, final ByteString byteString) {
        return new RequestBody() { // from class: okhttp3.RequestBody.1
            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() throws IOException {
                return byteString.size();
            }

            @Override // okhttp3.RequestBody
            public void writeTo(d dVar) throws IOException {
                dVar.b(byteString);
            }
        };
    }

    public static RequestBody create(MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(final MediaType mediaType, final byte[] bArr, final int i, final int i2) {
        if (bArr == null) {
            throw new NullPointerException("content == null");
        }
        Util.checkOffsetAndCount(bArr.length, i, i2);
        return new RequestBody() { // from class: okhttp3.RequestBody.2
            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() {
                return i2;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(d dVar) throws IOException {
                dVar.c(bArr, i, i2);
            }
        };
    }

    public static RequestBody create(final MediaType mediaType, final File file) {
        if (file == null) {
            throw new NullPointerException("content == null");
        }
        return new RequestBody() { // from class: okhttp3.RequestBody.3
            @Override // okhttp3.RequestBody
            public MediaType contentType() {
                return MediaType.this;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() {
                return file.length();
            }

            @Override // okhttp3.RequestBody
            public void writeTo(d dVar) throws IOException {
                r rVar = null;
                try {
                    rVar = k.a(file);
                    dVar.a(rVar);
                } finally {
                    Util.closeQuietly(rVar);
                }
            }
        };
    }
}
