package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* loaded from: classes3.dex */
public interface CallAdapter<R, T> {
    T adapt(Call<R> call);

    Type responseType();

    /* loaded from: classes3.dex */
    public static abstract class Factory {
        public abstract CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);

        protected static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i, parameterizedType);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }
    }
}
