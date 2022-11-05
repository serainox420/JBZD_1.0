package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
/* compiled from: NetworkUtils.java */
/* loaded from: classes3.dex */
public final class d {
    public static final SSLSocketFactory a(e eVar) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new TrustManager[]{new f(new g(eVar.getKeyStoreStream(), eVar.getKeyStorePassword()), eVar)}, null);
        return sSLContext.getSocketFactory();
    }
}
