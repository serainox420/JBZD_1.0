package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.http.Streaming;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class BuiltInConverters extends Converter.Factory {
    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (type == ResponseBody.class) {
            if (Utils.isAnnotationPresent(annotationArr, Streaming.class)) {
                return StreamingResponseBodyConverter.INSTANCE;
            }
            return BufferingResponseBodyConverter.INSTANCE;
        } else if (type == Void.class) {
            return VoidResponseBodyConverter.INSTANCE;
        } else {
            return null;
        }
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        if (RequestBody.class.isAssignableFrom(Utils.getRawType(type))) {
            return RequestBodyConverter.INSTANCE;
        }
        return null;
    }

    /* loaded from: classes3.dex */
    static final class VoidResponseBodyConverter implements Converter<ResponseBody, Void> {
        static final VoidResponseBodyConverter INSTANCE = new VoidResponseBodyConverter();

        VoidResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public Void convert(ResponseBody responseBody) throws IOException {
            responseBody.close();
            return null;
        }
    }

    /* loaded from: classes3.dex */
    static final class RequestBodyConverter implements Converter<RequestBody, RequestBody> {
        static final RequestBodyConverter INSTANCE = new RequestBodyConverter();

        RequestBodyConverter() {
        }

        @Override // retrofit2.Converter
        public RequestBody convert(RequestBody requestBody) throws IOException {
            return requestBody;
        }
    }

    /* loaded from: classes3.dex */
    static final class StreamingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final StreamingResponseBodyConverter INSTANCE = new StreamingResponseBodyConverter();

        StreamingResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            return responseBody;
        }
    }

    /* loaded from: classes3.dex */
    static final class BufferingResponseBodyConverter implements Converter<ResponseBody, ResponseBody> {
        static final BufferingResponseBodyConverter INSTANCE = new BufferingResponseBodyConverter();

        BufferingResponseBodyConverter() {
        }

        @Override // retrofit2.Converter
        public ResponseBody convert(ResponseBody responseBody) throws IOException {
            try {
                return Utils.buffer(responseBody);
            } finally {
                responseBody.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class ToStringConverter implements Converter<Object, String> {
        static final ToStringConverter INSTANCE = new ToStringConverter();

        ToStringConverter() {
        }

        @Override // retrofit2.Converter
        public String convert(Object obj) {
            return obj.toString();
        }
    }
}
