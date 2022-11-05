package okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
/* compiled from: Sink.java */
/* loaded from: classes3.dex */
public interface q extends Closeable, Flushable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    s timeout();

    void write(c cVar, long j) throws IOException;
}
