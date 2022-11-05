package pl.jbzd.core.api.retrofit.converter.jackson;

import com.fasterxml.jackson.databind.ObjectWriter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;
/* loaded from: classes3.dex */
final class JacksonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.parse("application/json; charset=UTF-8");
    private final ObjectWriter adapter;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) throws IOException {
        return convert2((JacksonRequestBodyConverter<T>) obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JacksonRequestBodyConverter(ObjectWriter objectWriter) {
        this.adapter = objectWriter;
    }

    @Override // retrofit2.Converter
    /* renamed from: convert  reason: avoid collision after fix types in other method */
    public RequestBody convert2(T t) throws IOException {
        return RequestBody.create(MEDIA_TYPE, this.adapter.writeValueAsBytes(t));
    }
}
