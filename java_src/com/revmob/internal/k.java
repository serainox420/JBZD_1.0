package com.revmob.internal;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class k extends DefaultRedirectHandler {

    /* renamed from: a  reason: collision with root package name */
    private URI f4805a;

    public final URI a() {
        return this.f4805a;
    }

    public final URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) {
        try {
            this.f4805a = super.getLocationURI(httpResponse, httpContext);
            return this.f4805a;
        } catch (ProtocolException e) {
            u.a(e, null, w.b, null, "getLocationURI");
            e.printStackTrace();
            return null;
        }
    }

    public final boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        Header lastHeader = httpResponse.getLastHeader("Location");
        if (lastHeader != null) {
            String value = lastHeader.getValue();
            if (j.a(value) || j.b(value)) {
                try {
                    this.f4805a = new URI(value);
                    return false;
                } catch (URISyntaxException e) {
                    u.a(e, null, w.b, value, "isRedirectRequested");
                    return super.isRedirectRequested(httpResponse, httpContext);
                }
            }
        }
        return super.isRedirectRequested(httpResponse, httpContext);
    }
}
