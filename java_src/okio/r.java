package okio;

import java.io.Closeable;
import java.io.IOException;
/* compiled from: Source.java */
/* loaded from: classes3.dex */
public interface r extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    long read(c cVar, long j) throws IOException;

    s timeout();
}
