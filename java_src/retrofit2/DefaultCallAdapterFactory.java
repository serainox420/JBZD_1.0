package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import retrofit2.CallAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class DefaultCallAdapterFactory extends CallAdapter.Factory {
    static final CallAdapter.Factory INSTANCE = new DefaultCallAdapterFactory();

    DefaultCallAdapterFactory() {
    }

    @Override // retrofit2.CallAdapter.Factory
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        if (getRawType(type) != Call.class) {
            return null;
        }
        final Type callResponseType = Utils.getCallResponseType(type);
        return new CallAdapter<Object, Call<?>>() { // from class: retrofit2.DefaultCallAdapterFactory.1
            @Override // retrofit2.CallAdapter
            public Type responseType() {
                return callResponseType;
            }

            @Override // retrofit2.CallAdapter
            public Call<?> adapt(Call<Object> call) {
                return call;
            }
        };
    }
}
