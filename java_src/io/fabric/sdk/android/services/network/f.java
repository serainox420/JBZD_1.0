package io.fabric.sdk.android.services.network;

import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
/* compiled from: PinningTrustManager.java */
/* loaded from: classes3.dex */
class f implements X509TrustManager {

    /* renamed from: a  reason: collision with root package name */
    private static final X509Certificate[] f5709a = new X509Certificate[0];
    private final TrustManager[] b;
    private final g c;
    private final long d;
    private final List<byte[]> e = new LinkedList();
    private final Set<X509Certificate> f = Collections.synchronizedSet(new HashSet());

    public f(g gVar, e eVar) {
        this.b = a(gVar);
        this.c = gVar;
        this.d = eVar.getPinCreationTimeInMillis();
        for (String str : eVar.getPins()) {
            this.e.add(a(str));
        }
    }

    private TrustManager[] a(g gVar) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
            trustManagerFactory.init(gVar.f5710a);
            return trustManagerFactory.getTrustManagers();
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    private boolean a(X509Certificate x509Certificate) throws CertificateException {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(x509Certificate.getPublicKey().getEncoded());
            for (byte[] bArr : this.e) {
                if (Arrays.equals(bArr, digest)) {
                    return true;
                }
            }
            return false;
        } catch (NoSuchAlgorithmException e) {
            throw new CertificateException(e);
        }
    }

    private void a(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        for (TrustManager trustManager : this.b) {
            ((X509TrustManager) trustManager).checkServerTrusted(x509CertificateArr, str);
        }
    }

    private void a(X509Certificate[] x509CertificateArr) throws CertificateException {
        if (this.d != -1 && System.currentTimeMillis() - this.d > 15552000000L) {
            io.fabric.sdk.android.c.h().d("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.d) + " millis vs 15552000000 millis) falling back to system trust.");
            return;
        }
        for (X509Certificate x509Certificate : a.a(x509CertificateArr, this.c)) {
            if (a(x509Certificate)) {
                return;
            }
        }
        throw new CertificateException("No valid pins found in chain!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        if (!this.f.contains(x509CertificateArr[0])) {
            a(x509CertificateArr, str);
            a(x509CertificateArr);
            this.f.add(x509CertificateArr[0]);
        }
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return f5709a;
    }

    private byte[] a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
