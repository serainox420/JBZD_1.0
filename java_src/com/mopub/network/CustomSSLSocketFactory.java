package com.mopub.network;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes3.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    private SSLSocketFactory f4650a;

    private CustomSSLSocketFactory() {
    }

    public static CustomSSLSocketFactory getDefault(int i) {
        CustomSSLSocketFactory customSSLSocketFactory = new CustomSSLSocketFactory();
        customSSLSocketFactory.f4650a = SSLCertificateSocketFactory.getDefault(i, null);
        return customSSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4650a.createSocket();
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4650a.createSocket(str, i);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4650a.createSocket(str, i, inetAddress, i2);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4650a.createSocket(inetAddress, i);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        Socket createSocket = this.f4650a.createSocket(inetAddress, i, inetAddress2, i2);
        a(createSocket);
        return createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.f4650a == null ? new String[0] : this.f4650a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.f4650a == null ? new String[0] : this.f4650a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (z && socket != null) {
            socket.close();
        }
        Socket createSocket = this.f4650a.createSocket(InetAddressUtils.getInetAddressByName(str), i);
        a(createSocket);
        a(createSocket, str);
        return createSocket;
    }

    private void a(Socket socket, String str) throws IOException {
        Preconditions.checkNotNull(socket);
        if (this.f4650a == null) {
            throw new SocketException("SSLSocketFactory was null. Unable to create socket.");
        }
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            a((SSLCertificateSocketFactory) this.f4650a, sSLSocket, str);
            a(sSLSocket, str);
        }
    }

    @VisibleForTesting
    static void a(SSLCertificateSocketFactory sSLCertificateSocketFactory, SSLSocket sSLSocket, String str) {
        Preconditions.checkNotNull(sSLCertificateSocketFactory);
        Preconditions.checkNotNull(sSLSocket);
        if (Build.VERSION.SDK_INT >= 17) {
            sSLCertificateSocketFactory.setHostname(sSLSocket, str);
            return;
        }
        try {
            new Reflection.MethodBuilder(sSLSocket, "setHostname").addParam(String.class, str).execute();
        } catch (Exception e) {
            MoPubLog.d("Unable to call setHostname() on the socket");
        }
    }

    @VisibleForTesting
    static void a(SSLSocket sSLSocket, String str) throws IOException {
        Preconditions.checkNotNull(sSLSocket);
        sSLSocket.startHandshake();
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSocket.getSession())) {
            throw new SSLHandshakeException("Server Name Identification failed.");
        }
    }

    private void a(Socket socket) {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
        }
    }
}
