package com.commit451.youtubeextractor;

import okhttp3.OkHttpClient;
import retrofit2.CallAdapter;
import retrofit2.Retrofit;
/* compiled from: BaseExtractor.java */
/* loaded from: classes.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f2000a;
    private final f b = new f();

    public a(Class<T> cls, OkHttpClient.Builder builder, CallAdapter.Factory factory) {
        builder = builder == null ? new OkHttpClient.Builder() : builder;
        builder.addInterceptor(this.b);
        Retrofit.Builder builder2 = new Retrofit.Builder();
        builder2.baseUrl("https://www.youtube.com/").client(builder.build()).addConverterFactory(d.a());
        if (factory != null) {
            builder2.addCallAdapterFactory(factory);
        }
        this.f2000a = (T) builder2.build().create(cls);
    }

    public T a() {
        return this.f2000a;
    }
}
