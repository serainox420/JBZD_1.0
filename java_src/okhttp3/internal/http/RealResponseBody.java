package okhttp3.internal.http;

import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.e;
/* loaded from: classes3.dex */
public final class RealResponseBody extends ResponseBody {
    private final Headers headers;
    private final e source;

    public RealResponseBody(Headers headers, e eVar) {
        this.headers = headers;
        this.source = eVar;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.headers.get("Content-Type");
        if (str != null) {
            return MediaType.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return HttpHeaders.contentLength(this.headers);
    }

    @Override // okhttp3.ResponseBody
    public e source() {
        return this.source;
    }
}
