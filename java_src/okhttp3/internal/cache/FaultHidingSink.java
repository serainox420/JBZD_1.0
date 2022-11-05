package okhttp3.internal.cache;

import java.io.IOException;
import okio.c;
import okio.f;
import okio.q;
/* loaded from: classes3.dex */
class FaultHidingSink extends f {
    private boolean hasErrors;

    public FaultHidingSink(q qVar) {
        super(qVar);
    }

    @Override // okio.f, okio.q
    public void write(c cVar, long j) throws IOException {
        if (this.hasErrors) {
            cVar.h(j);
            return;
        }
        try {
            super.write(cVar, j);
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }

    @Override // okio.f, okio.q, java.io.Flushable
    public void flush() throws IOException {
        if (!this.hasErrors) {
            try {
                super.flush();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    @Override // okio.f, okio.q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.hasErrors) {
            try {
                super.close();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    protected void onException(IOException iOException) {
    }
}
