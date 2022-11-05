package com.millennialmedia.internal.utils;

import com.millennialmedia.MMLog;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.HashSet;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3.dex */
public class MMSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4176a = MMSSLSocketFactory.class.getSimpleName();
    private static final String[] b = {"TLSv1.1", "TLSv1.2"};
    private static final String[] c = {"TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"};
    private static MMSSLSocketFactory g = new MMSSLSocketFactory().a();
    private SSLSocketFactory d;
    private String[] e = null;
    private String[] f = null;

    private MMSSLSocketFactory() {
    }

    private MMSSLSocketFactory a() {
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4176a, "Initializing MMSSLSocketFactory");
        }
        try {
            this.d = (SSLSocketFactory) SSLSocketFactory.getDefault();
            SSLSocket sSLSocket = (SSLSocket) this.d.createSocket();
            this.f = a(sSLSocket.getSupportedProtocols(), b);
            this.e = a(sSLSocket.getSupportedCipherSuites(), c);
            sSLSocket.close();
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4176a, "Protocols enabled: " + Arrays.toString(this.f));
                MMLog.d(f4176a, "Cipher suites enabled: " + Arrays.toString(this.e));
                return this;
            }
            return this;
        } catch (Exception e) {
            MMLog.e(f4176a, "Failed to initialize MMSSLSocketFactory", e);
            return null;
        }
    }

    public static MMSSLSocketFactory getInstance() {
        return g;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.e;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.e;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return a(this.d.createSocket(socket, str, i, z));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return a(this.d.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return a(this.d.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return a(this.d.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return a(this.d.createSocket(inetAddress, i, inetAddress2, i2));
    }

    private Socket a(Socket socket) {
        if (socket instanceof SSLSocket) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4176a, "Setting enabled protocols and cipher suites on secure socket");
            }
            try {
                ((SSLSocket) socket).setEnabledProtocols(this.f);
                ((SSLSocket) socket).setEnabledCipherSuites(this.e);
            } catch (Exception e) {
                MMLog.e(f4176a, "Failed to set secure socket properties - " + e.getMessage());
            }
        }
        return socket;
    }

    private static String[] a(String[] strArr, String[] strArr2) {
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        HashSet hashSet2 = new HashSet(Arrays.asList(strArr2));
        hashSet2.retainAll(hashSet);
        return (String[]) hashSet2.toArray(new String[0]);
    }
}
