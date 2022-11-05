package com.commit451.youtubeextractor;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* compiled from: YouTubeExtractionConverterFactory.java */
/* loaded from: classes.dex */
class d extends Converter.Factory {
    d() {
    }

    public static d a() {
        return new d();
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == YouTubeExtractionResult.class) {
            return new c(retrofit.baseUrl());
        }
        return null;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        throw new IllegalStateException("Not supported");
    }
}
