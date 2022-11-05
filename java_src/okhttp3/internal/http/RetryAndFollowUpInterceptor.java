package okhttp3.internal.http;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.millennialmedia.NativeAd;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http2.ConnectionShutdownException;
/* loaded from: classes3.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient, boolean z) {
        this.client = okHttpClient;
        this.forWebSocket = z;
    }

    public void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public void setCallStackTrace(Object obj) {
        this.callStackTrace = obj;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed;
        Request request = chain.request();
        this.streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request.url()), this.callStackTrace);
        Response response = null;
        int i = 0;
        Request request2 = request;
        while (!this.canceled) {
            try {
                try {
                    proceed = ((RealInterceptorChain) chain).proceed(request2, this.streamAllocation, null, null);
                    if (response != null) {
                        proceed = proceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
                    }
                    request2 = followUpRequest(proceed);
                } catch (IOException e) {
                    if (!recover(e, !(e instanceof ConnectionShutdownException), request2)) {
                        throw e;
                    }
                } catch (RouteException e2) {
                    if (!recover(e2.getLastConnectException(), false, request2)) {
                        throw e2.getLastConnectException();
                    }
                }
                if (request2 == null) {
                    if (!this.forWebSocket) {
                        this.streamAllocation.release();
                    }
                    return proceed;
                }
                Util.closeQuietly(proceed.body());
                int i2 = i + 1;
                if (i2 > 20) {
                    this.streamAllocation.release();
                    throw new ProtocolException("Too many follow-up requests: " + i2);
                } else if (request2.body() instanceof UnrepeatableRequestBody) {
                    this.streamAllocation.release();
                    throw new HttpRetryException("Cannot retry streamed HTTP body", proceed.code());
                } else {
                    if (!sameConnection(proceed, request2.url())) {
                        this.streamAllocation.release();
                        this.streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request2.url()), this.callStackTrace);
                    } else if (this.streamAllocation.codec() != null) {
                        throw new IllegalStateException("Closing the body of " + proceed + " didn't close its backing stream. Bad interceptor?");
                    }
                    i = i2;
                    response = proceed;
                }
            } catch (Throwable th) {
                this.streamAllocation.streamFailed(null);
                this.streamAllocation.release();
                throw th;
            }
        }
        this.streamAllocation.release();
        throw new IOException("Canceled");
    }

    private Address createAddress(HttpUrl httpUrl) {
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sSLSocketFactory;
        CertificatePinner certificatePinner = null;
        if (httpUrl.isHttps()) {
            sSLSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        } else {
            hostnameVerifier = null;
            sSLSocketFactory = null;
        }
        return new Address(httpUrl.host(), httpUrl.port(), this.client.dns(), this.client.socketFactory(), sSLSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private boolean recover(IOException iOException, boolean z, Request request) {
        this.streamAllocation.streamFailed(iOException);
        if (!this.client.retryOnConnectionFailure()) {
            return false;
        }
        return (!z || !(request.body() instanceof UnrepeatableRequestBody)) && isRecoverable(iOException, z) && this.streamAllocation.hasMoreRoutes();
    }

    private boolean isRecoverable(IOException iOException, boolean z) {
        boolean z2 = true;
        if (iOException instanceof ProtocolException) {
            return false;
        }
        if (!(iOException instanceof InterruptedIOException)) {
            return (!(iOException instanceof SSLHandshakeException) || !(iOException.getCause() instanceof CertificateException)) && !(iOException instanceof SSLPeerUnverifiedException);
        }
        if (!(iOException instanceof SocketTimeoutException) || z) {
            z2 = false;
        }
        return z2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Request followUpRequest(Response response) throws IOException {
        String header;
        HttpUrl resolve;
        Proxy proxy;
        RequestBody requestBody = null;
        if (response == null) {
            throw new IllegalStateException();
        }
        RealConnection connection = this.streamAllocation.connection();
        Route route = connection != null ? connection.route() : null;
        int code = response.code();
        String method = response.request().method();
        switch (code) {
            case 300:
            case NativeAd.NativeErrorStatus.EXPIRED /* 301 */:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!method.equals("GET") && !method.equals("HEAD")) {
                    return null;
                }
                break;
            case 401:
                return this.client.authenticator().authenticate(route, response);
            case 407:
                if (route != null) {
                    proxy = route.proxy();
                } else {
                    proxy = this.client.proxy();
                }
                if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
                return this.client.proxyAuthenticator().authenticate(route, response);
            case AdTrackerConstants.NETWORK_TIMEOUT /* 408 */:
                if (response.request().body() instanceof UnrepeatableRequestBody) {
                    return null;
                }
                return response.request();
            default:
                return null;
        }
        if (!this.client.followRedirects() || (header = response.header("Location")) == null || (resolve = response.request().url().resolve(header)) == null) {
            return null;
        }
        if (!resolve.scheme().equals(response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder newBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(method)) {
            boolean redirectsWithBody = HttpMethod.redirectsWithBody(method);
            if (HttpMethod.redirectsToGet(method)) {
                newBuilder.method("GET", null);
            } else {
                if (redirectsWithBody) {
                    requestBody = response.request().body();
                }
                newBuilder.method(method, requestBody);
            }
            if (!redirectsWithBody) {
                newBuilder.removeHeader("Transfer-Encoding");
                newBuilder.removeHeader("Content-Length");
                newBuilder.removeHeader("Content-Type");
            }
        }
        if (!sameConnection(response, resolve)) {
            newBuilder.removeHeader("Authorization");
        }
        return newBuilder.url(resolve).build();
    }

    private boolean sameConnection(Response response, HttpUrl httpUrl) {
        HttpUrl url = response.request().url();
        return url.host().equals(httpUrl.host()) && url.port() == httpUrl.port() && url.scheme().equals(httpUrl.scheme());
    }
}
