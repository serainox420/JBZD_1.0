package pl.jbzd.api.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import pl.jbzd.api.response.BaseApiResponse;
/* loaded from: classes3.dex */
public final class ApiUtils {
    public static boolean isSuccessful(BaseApiResponse baseApiResponse) {
        return (baseApiResponse == null || baseApiResponse.status == null || !baseApiResponse.status.equalsIgnoreCase("ok")) ? false : true;
    }

    public static String toString(Object obj, Class<?> cls) {
        ObjectMapper objectMapper = new ObjectMapper();
        try {
            return cls.getSimpleName() + ": " + objectMapper.writerFor(objectMapper.getTypeFactory().constructType(cls)).writeValueAsString(obj);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return cls.getSimpleName() + ": Invalid data";
        }
    }
}
