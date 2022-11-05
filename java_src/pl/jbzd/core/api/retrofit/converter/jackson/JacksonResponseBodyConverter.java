package pl.jbzd.core.api.retrofit.converter.jackson;

import com.fasterxml.jackson.databind.ObjectReader;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;
/* loaded from: classes3.dex */
final class JacksonResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private final ObjectReader adapter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JacksonResponseBodyConverter(ObjectReader objectReader) {
        this.adapter = objectReader;
    }

    @Override // retrofit2.Converter
    public T convert(ResponseBody responseBody) throws IOException {
        try {
            System.currentTimeMillis();
            return (T) this.adapter.readValue(responseBody.charStream());
        } finally {
            responseBody.close();
        }
    }
}
