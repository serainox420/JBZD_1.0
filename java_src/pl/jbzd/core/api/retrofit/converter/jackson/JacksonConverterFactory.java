package pl.jbzd.core.api.retrofit.converter.jackson;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
/* loaded from: classes3.dex */
public final class JacksonConverterFactory extends Converter.Factory {
    private final ObjectMapper mapper;

    public static JacksonConverterFactory create() {
        return create(new ObjectMapper());
    }

    public static JacksonConverterFactory create(ObjectMapper objectMapper) {
        return new JacksonConverterFactory(objectMapper);
    }

    private JacksonConverterFactory(ObjectMapper objectMapper) {
        if (objectMapper == null) {
            throw new NullPointerException("mapper == null");
        }
        this.mapper = objectMapper;
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new JacksonResponseBodyConverter(this.mapper.readerFor(this.mapper.getTypeFactory().constructType(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new JacksonRequestBodyConverter(this.mapper.writerFor(this.mapper.getTypeFactory().constructType(type)));
    }
}
