package net.gotev.uploadservice.okhttp;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;
/* compiled from: OkHttpStack.java */
/* loaded from: classes.dex */
public class b implements net.gotev.uploadservice.a.c {

    /* renamed from: a  reason: collision with root package name */
    private OkHttpClient f5854a = new OkHttpClient.Builder().followRedirects(true).followSslRedirects(true).retryOnConnectionFailure(true).connectTimeout(15, TimeUnit.SECONDS).writeTimeout(30, TimeUnit.SECONDS).readTimeout(30, TimeUnit.SECONDS).cache(null).build();

    @Override // net.gotev.uploadservice.a.c
    public net.gotev.uploadservice.a.b a(String str, String str2) throws IOException {
        return new c(this.f5854a, str, str2);
    }
}
