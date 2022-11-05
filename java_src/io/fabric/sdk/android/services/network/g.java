package io.fabric.sdk.android.services.network;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;
/* compiled from: SystemKeyStore.java */
/* loaded from: classes3.dex */
class g {

    /* renamed from: a  reason: collision with root package name */
    final KeyStore f5710a;
    private final HashMap<Principal, X509Certificate> b;

    public g(InputStream inputStream, String str) {
        KeyStore a2 = a(inputStream, str);
        this.b = a(a2);
        this.f5710a = a2;
    }

    public boolean a(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.b.get(x509Certificate.getSubjectX500Principal());
        return x509Certificate2 != null && x509Certificate2.getPublicKey().equals(x509Certificate.getPublicKey());
    }

    public X509Certificate b(X509Certificate x509Certificate) {
        X509Certificate x509Certificate2 = this.b.get(x509Certificate.getIssuerX500Principal());
        if (x509Certificate2 != null && !x509Certificate2.getSubjectX500Principal().equals(x509Certificate.getSubjectX500Principal())) {
            try {
                x509Certificate.verify(x509Certificate2.getPublicKey());
                return x509Certificate2;
            } catch (GeneralSecurityException e) {
                return null;
            }
        }
        return null;
    }

    private HashMap<Principal, X509Certificate> a(KeyStore keyStore) {
        try {
            HashMap<Principal, X509Certificate> hashMap = new HashMap<>();
            Enumeration<String> aliases = keyStore.aliases();
            while (aliases.hasMoreElements()) {
                X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(aliases.nextElement());
                if (x509Certificate != null) {
                    hashMap.put(x509Certificate.getSubjectX500Principal(), x509Certificate);
                }
            }
            return hashMap;
        } catch (KeyStoreException e) {
            throw new AssertionError(e);
        }
    }

    private KeyStore a(InputStream inputStream, String str) {
        try {
            KeyStore keyStore = KeyStore.getInstance("BKS");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                keyStore.load(bufferedInputStream, str.toCharArray());
                return keyStore;
            } finally {
                bufferedInputStream.close();
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        } catch (KeyStoreException e2) {
            throw new AssertionError(e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new AssertionError(e3);
        } catch (CertificateException e4) {
            throw new AssertionError(e4);
        }
    }
}
