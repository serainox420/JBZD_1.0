package okhttp3.internal.connection;

import com.facebook.common.time.Clock;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.Connection;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.Version;
import okhttp3.internal.http.HttpCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http1.Http1Codec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Codec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.ws.RealWebSocket;
import okio.d;
import okio.e;
import okio.k;
import okio.r;
/* loaded from: classes3.dex */
public final class RealConnection extends Http2Connection.Listener implements Connection {
    private final ConnectionPool connectionPool;
    private Handshake handshake;
    private Http2Connection http2Connection;
    public boolean noNewStreams;
    private Protocol protocol;
    private Socket rawSocket;
    private final Route route;
    private d sink;
    private Socket socket;
    private e source;
    public int successCount;
    public int allocationLimit = 1;
    public final List<Reference<StreamAllocation>> allocations = new ArrayList();
    public long idleAtNanos = Clock.MAX_TIME;

    public RealConnection(ConnectionPool connectionPool, Route route) {
        this.connectionPool = connectionPool;
        this.route = route;
    }

    public static RealConnection testConnection(ConnectionPool connectionPool, Route route, Socket socket, long j) {
        RealConnection realConnection = new RealConnection(connectionPool, route);
        realConnection.socket = socket;
        realConnection.idleAtNanos = j;
        return realConnection;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0082 A[Catch: IOException -> 0x009d, TryCatch #1 {IOException -> 0x009d, blocks: (B:17:0x007a, B:19:0x0082, B:20:0x0085, B:28:0x0099), top: B:44:0x007a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0099 A[Catch: IOException -> 0x009d, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x009d, blocks: (B:17:0x007a, B:19:0x0082, B:20:0x0085, B:28:0x0099), top: B:44:0x007a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connect(int i, int i2, int i3, boolean z) {
        if (this.protocol != null) {
            throw new IllegalStateException("already connected");
        }
        List<ConnectionSpec> connectionSpecs = this.route.address().connectionSpecs();
        ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(connectionSpecs);
        if (this.route.address().sslSocketFactory() == null) {
            if (!connectionSpecs.contains(ConnectionSpec.CLEARTEXT)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String host = this.route.address().url().host();
            if (!Platform.get().isCleartextTrafficPermitted(host)) {
                throw new RouteException(new UnknownServiceException("CLEARTEXT communication to " + host + " not permitted by network security policy"));
            }
        }
        RouteException routeException = null;
        do {
            try {
                if (!this.route.requiresTunnel()) {
                    connectTunnel(i, i2, i3);
                } else {
                    connectSocket(i, i2);
                }
                establishProtocol(connectionSpecSelector);
                if (this.http2Connection == null) {
                    synchronized (this.connectionPool) {
                        this.allocationLimit = this.http2Connection.maxConcurrentStreams();
                    }
                    return;
                }
                return;
            } catch (IOException e) {
                Util.closeQuietly(this.socket);
                Util.closeQuietly(this.rawSocket);
                this.socket = null;
                this.rawSocket = null;
                this.source = null;
                this.sink = null;
                this.handshake = null;
                this.protocol = null;
                this.http2Connection = null;
                if (routeException == null) {
                    routeException = new RouteException(e);
                } else {
                    routeException.addConnectException(e);
                }
                if (!z || connectionSpecSelector.connectionFailed(e)) {
                    throw routeException;
                }
                do {
                    if (!this.route.requiresTunnel()) {
                    }
                    establishProtocol(connectionSpecSelector);
                    if (this.http2Connection == null) {
                    }
                } while (connectionSpecSelector.connectionFailed(e));
                throw routeException;
            }
        } while (connectionSpecSelector.connectionFailed(e));
        throw routeException;
    }

    private void connectTunnel(int i, int i2, int i3) throws IOException {
        Request createTunnelRequest = createTunnelRequest();
        HttpUrl url = createTunnelRequest.url();
        int i4 = 0;
        while (true) {
            i4++;
            if (i4 > 21) {
                throw new ProtocolException("Too many tunnel connections attempted: 21");
            }
            connectSocket(i, i2);
            createTunnelRequest = createTunnel(i2, i3, createTunnelRequest, url);
            if (createTunnelRequest != null) {
                Util.closeQuietly(this.rawSocket);
                this.rawSocket = null;
                this.sink = null;
                this.source = null;
            } else {
                return;
            }
        }
    }

    private void connectSocket(int i, int i2) throws IOException {
        Proxy proxy = this.route.proxy();
        this.rawSocket = (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.HTTP) ? this.route.address().socketFactory().createSocket() : new Socket(proxy);
        this.rawSocket.setSoTimeout(i2);
        try {
            Platform.get().connectSocket(this.rawSocket, this.route.socketAddress(), i);
            this.source = k.a(k.b(this.rawSocket));
            this.sink = k.a(k.a(this.rawSocket));
        } catch (ConnectException e) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.route.socketAddress());
            connectException.initCause(e);
            throw connectException;
        }
    }

    private void establishProtocol(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        if (this.route.address().sslSocketFactory() == null) {
            this.protocol = Protocol.HTTP_1_1;
            this.socket = this.rawSocket;
            return;
        }
        connectTls(connectionSpecSelector);
        if (this.protocol == Protocol.HTTP_2) {
            this.socket.setSoTimeout(0);
            this.http2Connection = new Http2Connection.Builder(true).socket(this.socket, this.route.address().url().host(), this.source, this.sink).listener(this).build();
            this.http2Connection.start();
        }
    }

    private void connectTls(ConnectionSpecSelector connectionSpecSelector) throws IOException {
        SSLSocket sSLSocket;
        SSLSocket sSLSocket2 = null;
        String str = null;
        Address address = this.route.address();
        try {
            try {
                sSLSocket = (SSLSocket) address.sslSocketFactory().createSocket(this.rawSocket, address.url().host(), address.url().port(), true);
            } catch (AssertionError e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            ConnectionSpec configureSecureSocket = connectionSpecSelector.configureSecureSocket(sSLSocket);
            if (configureSecureSocket.supportsTlsExtensions()) {
                Platform.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            Handshake handshake = Handshake.get(sSLSocket.getSession());
            if (!address.hostnameVerifier().verify(address.url().host(), sSLSocket.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) handshake.peerCertificates().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified:\n    certificate: " + CertificatePinner.pin(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + OkHostnameVerifier.allSubjectAltNames(x509Certificate));
            }
            address.certificatePinner().check(address.url().host(), handshake.peerCertificates());
            if (configureSecureSocket.supportsTlsExtensions()) {
                str = Platform.get().getSelectedProtocol(sSLSocket);
            }
            this.socket = sSLSocket;
            this.source = k.a(k.b(this.socket));
            this.sink = k.a(k.a(this.socket));
            this.handshake = handshake;
            this.protocol = str != null ? Protocol.get(str) : Protocol.HTTP_1_1;
            if (sSLSocket != null) {
                Platform.get().afterHandshake(sSLSocket);
            }
        } catch (AssertionError e2) {
            e = e2;
            if (!Util.isAndroidGetsocknameError(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            sSLSocket2 = sSLSocket;
            th = th2;
            if (sSLSocket2 != null) {
                Platform.get().afterHandshake(sSLSocket2);
            }
            Util.closeQuietly((Socket) sSLSocket2);
            throw th;
        }
    }

    private Request createTunnel(int i, int i2, Request request, HttpUrl httpUrl) throws IOException {
        Response build;
        String str = "CONNECT " + Util.hostHeader(httpUrl, true) + " HTTP/1.1";
        do {
            Http1Codec http1Codec = new Http1Codec(null, null, this.source, this.sink);
            this.source.timeout().timeout(i, TimeUnit.MILLISECONDS);
            this.sink.timeout().timeout(i2, TimeUnit.MILLISECONDS);
            http1Codec.writeRequest(request.headers(), str);
            http1Codec.finishRequest();
            build = http1Codec.readResponseHeaders(false).request(request).build();
            long contentLength = HttpHeaders.contentLength(build);
            if (contentLength == -1) {
                contentLength = 0;
            }
            r newFixedLengthSource = http1Codec.newFixedLengthSource(contentLength);
            Util.skipAll(newFixedLengthSource, Integer.MAX_VALUE, TimeUnit.MILLISECONDS);
            newFixedLengthSource.close();
            switch (build.code()) {
                case 200:
                    if (this.source.b().e() && this.sink.b().e()) {
                        return null;
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                case 407:
                    request = this.route.address().proxyAuthenticator().authenticate(this.route, build);
                    if (request != null) {
                        break;
                    } else {
                        throw new IOException("Failed to authenticate with proxy");
                    }
                default:
                    throw new IOException("Unexpected response code for CONNECT: " + build.code());
            }
        } while (!"close".equalsIgnoreCase(build.header("Connection")));
        return request;
    }

    private Request createTunnelRequest() {
        return new Request.Builder().url(this.route.address().url()).header("Host", Util.hostHeader(this.route.address().url(), true)).header("Proxy-Connection", "Keep-Alive").header("User-Agent", Version.userAgent()).build();
    }

    public boolean isEligible(Address address) {
        return this.allocations.size() < this.allocationLimit && address.equals(route().address()) && !this.noNewStreams;
    }

    public HttpCodec newCodec(OkHttpClient okHttpClient, StreamAllocation streamAllocation) throws SocketException {
        if (this.http2Connection != null) {
            return new Http2Codec(okHttpClient, streamAllocation, this.http2Connection);
        }
        this.socket.setSoTimeout(okHttpClient.readTimeoutMillis());
        this.source.timeout().timeout(okHttpClient.readTimeoutMillis(), TimeUnit.MILLISECONDS);
        this.sink.timeout().timeout(okHttpClient.writeTimeoutMillis(), TimeUnit.MILLISECONDS);
        return new Http1Codec(okHttpClient, streamAllocation, this.source, this.sink);
    }

    public RealWebSocket.Streams newWebSocketStreams(final StreamAllocation streamAllocation) {
        return new RealWebSocket.Streams(true, this.source, this.sink) { // from class: okhttp3.internal.connection.RealConnection.1
            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                streamAllocation.streamFinished(true, streamAllocation.codec());
            }
        };
    }

    @Override // okhttp3.Connection
    public Route route() {
        return this.route;
    }

    public void cancel() {
        Util.closeQuietly(this.rawSocket);
    }

    @Override // okhttp3.Connection
    public Socket socket() {
        return this.socket;
    }

    public boolean isHealthy(boolean z) {
        boolean z2 = true;
        if (this.socket.isClosed() || this.socket.isInputShutdown() || this.socket.isOutputShutdown()) {
            return false;
        }
        if (this.http2Connection != null) {
            return !this.http2Connection.isShutdown();
        } else if (!z) {
            return true;
        } else {
            try {
                int soTimeout = this.socket.getSoTimeout();
                this.socket.setSoTimeout(1);
                if (this.source.e()) {
                    this.socket.setSoTimeout(soTimeout);
                    z2 = false;
                } else {
                    this.socket.setSoTimeout(soTimeout);
                }
                return z2;
            } catch (SocketTimeoutException e) {
                return z2;
            } catch (IOException e2) {
                return false;
            }
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(Http2Stream http2Stream) throws IOException {
        http2Stream.close(ErrorCode.REFUSED_STREAM);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onSettings(Http2Connection http2Connection) {
        synchronized (this.connectionPool) {
            this.allocationLimit = http2Connection.maxConcurrentStreams();
        }
    }

    @Override // okhttp3.Connection
    public Handshake handshake() {
        return this.handshake;
    }

    public boolean isMultiplexed() {
        return this.http2Connection != null;
    }

    @Override // okhttp3.Connection
    public Protocol protocol() {
        return this.protocol;
    }

    public String toString() {
        return "Connection{" + this.route.address().url().host() + ":" + this.route.address().url().port() + ", proxy=" + this.route.proxy() + " hostAddress=" + this.route.socketAddress() + " cipherSuite=" + (this.handshake != null ? this.handshake.cipherSuite() : "none") + " protocol=" + this.protocol + '}';
    }
}
