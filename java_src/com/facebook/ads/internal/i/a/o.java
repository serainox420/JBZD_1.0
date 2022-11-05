package com.facebook.ads.internal.i.a;

import android.os.Build;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
/* loaded from: classes.dex */
public class o {
    private static String a(byte[] bArr, String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.reset();
        return Base64.encodeToString(messageDigest.digest(bArr), 0);
    }

    public static void a(HttpsURLConnection httpsURLConnection, Set<String> set, Set<String> set2) {
        if (Build.VERSION.SDK_INT != 15 || !"4.0.3".equals(Build.VERSION.RELEASE)) {
            try {
                for (Certificate certificate : httpsURLConnection.getServerCertificates()) {
                    X509Certificate x509Certificate = (X509Certificate) certificate;
                    String a2 = a(x509Certificate.getEncoded(), "SHA-1");
                    if (set != null && set.contains(a2)) {
                        return;
                    }
                    String a3 = a(x509Certificate.getPublicKey().getEncoded(), "SHA-1");
                    if (set2 != null && set2.contains(a3)) {
                        return;
                    }
                }
                throw new CertificateException("Unable to find valid certificate or public key.");
            } catch (Exception e) {
                throw e;
            }
        }
    }
}
