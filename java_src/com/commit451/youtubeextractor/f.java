package com.commit451.youtubeextractor;

import java.io.IOException;
import java.util.Locale;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
/* compiled from: YoutubeExtractorInterceptor.java */
/* loaded from: classes.dex */
class f implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    String f2001a = Locale.getDefault().getLanguage();

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        return chain.proceed(request.newBuilder().addHeader("Accept-Language", this.f2001a).url(request.url().newBuilder().addQueryParameter("language", this.f2001a).build()).build());
    }
}
