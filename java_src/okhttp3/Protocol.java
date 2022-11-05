package okhttp3;

import java.io.IOException;
/* loaded from: classes3.dex */
public enum Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    
    private final String protocol;

    Protocol(String str) {
        this.protocol = str;
    }

    public static Protocol get(String str) throws IOException {
        if (str.equals(HTTP_1_0.protocol)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.protocol)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.protocol)) {
            return HTTP_2;
        }
        if (!str.equals(SPDY_3.protocol)) {
            throw new IOException("Unexpected protocol: " + str);
        }
        return SPDY_3;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.protocol;
    }
}
