package okhttp3.internal.cache;

import java.io.IOException;
import okio.q;
/* loaded from: classes3.dex */
public interface CacheRequest {
    void abort();

    q body() throws IOException;
}
