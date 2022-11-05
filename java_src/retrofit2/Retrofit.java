package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import okhttp3.Call;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.BuiltInConverters;
import retrofit2.CallAdapter;
import retrofit2.Converter;
import retrofit2.ServiceMethod;
/* loaded from: classes3.dex */
public final class Retrofit {
    final List<CallAdapter.Factory> adapterFactories;
    final HttpUrl baseUrl;
    final Call.Factory callFactory;
    final Executor callbackExecutor;
    final List<Converter.Factory> converterFactories;
    private final Map<Method, ServiceMethod<?, ?>> serviceMethodCache = new ConcurrentHashMap();
    final boolean validateEagerly;

    Retrofit(Call.Factory factory, HttpUrl httpUrl, List<Converter.Factory> list, List<CallAdapter.Factory> list2, Executor executor, boolean z) {
        this.callFactory = factory;
        this.baseUrl = httpUrl;
        this.converterFactories = Collections.unmodifiableList(list);
        this.adapterFactories = Collections.unmodifiableList(list2);
        this.callbackExecutor = executor;
        this.validateEagerly = z;
    }

    public <T> T create(final Class<T> cls) {
        Utils.validateServiceInterface(cls);
        if (this.validateEagerly) {
            eagerlyValidateMethods(cls);
        }
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: retrofit2.Retrofit.1
            private final Platform platform = Platform.get();

            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (this.platform.isDefaultMethod(method)) {
                    return this.platform.invokeDefaultMethod(method, cls, obj, objArr);
                }
                ServiceMethod<?, ?> loadServiceMethod = Retrofit.this.loadServiceMethod(method);
                return loadServiceMethod.callAdapter.adapt(new OkHttpCall(loadServiceMethod, objArr));
            }
        });
    }

    private void eagerlyValidateMethods(Class<?> cls) {
        Method[] declaredMethods;
        Platform platform = Platform.get();
        for (Method method : cls.getDeclaredMethods()) {
            if (!platform.isDefaultMethod(method)) {
                loadServiceMethod(method);
            }
        }
    }

    ServiceMethod<?, ?> loadServiceMethod(Method method) {
        ServiceMethod serviceMethod = this.serviceMethodCache.get(method);
        if (serviceMethod == null) {
            synchronized (this.serviceMethodCache) {
                serviceMethod = this.serviceMethodCache.get(method);
                if (serviceMethod == null) {
                    serviceMethod = new ServiceMethod.Builder(this, method).build();
                    this.serviceMethodCache.put(method, serviceMethod);
                }
            }
        }
        return serviceMethod;
    }

    public Call.Factory callFactory() {
        return this.callFactory;
    }

    public HttpUrl baseUrl() {
        return this.baseUrl;
    }

    public List<CallAdapter.Factory> callAdapterFactories() {
        return this.adapterFactories;
    }

    public CallAdapter<?, ?> callAdapter(Type type, Annotation[] annotationArr) {
        return nextCallAdapter(null, type, annotationArr);
    }

    public CallAdapter<?, ?> nextCallAdapter(CallAdapter.Factory factory, Type type, Annotation[] annotationArr) {
        Utils.checkNotNull(type, "returnType == null");
        Utils.checkNotNull(annotationArr, "annotations == null");
        int indexOf = this.adapterFactories.indexOf(factory) + 1;
        int size = this.adapterFactories.size();
        for (int i = indexOf; i < size; i++) {
            CallAdapter<?, ?> callAdapter = this.adapterFactories.get(i).get(type, annotationArr, this);
            if (callAdapter != null) {
                return callAdapter;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate call adapter for ").append(type).append(".\n");
        if (factory != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.adapterFactories.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.adapterFactories.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.adapterFactories.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public List<Converter.Factory> converterFactories() {
        return this.converterFactories;
    }

    public <T> Converter<T, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        return nextRequestBodyConverter(null, type, annotationArr, annotationArr2);
    }

    public <T> Converter<T, RequestBody> nextRequestBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr, Annotation[] annotationArr2) {
        Utils.checkNotNull(type, "type == null");
        Utils.checkNotNull(annotationArr, "parameterAnnotations == null");
        Utils.checkNotNull(annotationArr2, "methodAnnotations == null");
        int indexOf = this.converterFactories.indexOf(factory) + 1;
        int size = this.converterFactories.size();
        for (int i = indexOf; i < size; i++) {
            Converter<T, RequestBody> converter = (Converter<T, RequestBody>) this.converterFactories.get(i).requestBodyConverter(type, annotationArr, annotationArr2, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate RequestBody converter for ").append(type).append(".\n");
        if (factory != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.converterFactories.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.converterFactories.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.converterFactories.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public <T> Converter<ResponseBody, T> responseBodyConverter(Type type, Annotation[] annotationArr) {
        return nextResponseBodyConverter(null, type, annotationArr);
    }

    public <T> Converter<ResponseBody, T> nextResponseBodyConverter(Converter.Factory factory, Type type, Annotation[] annotationArr) {
        Utils.checkNotNull(type, "type == null");
        Utils.checkNotNull(annotationArr, "annotations == null");
        int indexOf = this.converterFactories.indexOf(factory) + 1;
        int size = this.converterFactories.size();
        for (int i = indexOf; i < size; i++) {
            Converter<ResponseBody, T> converter = (Converter<ResponseBody, T>) this.converterFactories.get(i).responseBodyConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        StringBuilder append = new StringBuilder("Could not locate ResponseBody converter for ").append(type).append(".\n");
        if (factory != null) {
            append.append("  Skipped:");
            for (int i2 = 0; i2 < indexOf; i2++) {
                append.append("\n   * ").append(this.converterFactories.get(i2).getClass().getName());
            }
            append.append('\n');
        }
        append.append("  Tried:");
        int size2 = this.converterFactories.size();
        while (indexOf < size2) {
            append.append("\n   * ").append(this.converterFactories.get(indexOf).getClass().getName());
            indexOf++;
        }
        throw new IllegalArgumentException(append.toString());
    }

    public <T> Converter<T, String> stringConverter(Type type, Annotation[] annotationArr) {
        Utils.checkNotNull(type, "type == null");
        Utils.checkNotNull(annotationArr, "annotations == null");
        int size = this.converterFactories.size();
        for (int i = 0; i < size; i++) {
            Converter<T, String> converter = (Converter<T, String>) this.converterFactories.get(i).stringConverter(type, annotationArr, this);
            if (converter != null) {
                return converter;
            }
        }
        return BuiltInConverters.ToStringConverter.INSTANCE;
    }

    public Executor callbackExecutor() {
        return this.callbackExecutor;
    }

    public Builder newBuilder() {
        return new Builder(this);
    }

    /* loaded from: classes3.dex */
    public static final class Builder {
        private final List<CallAdapter.Factory> adapterFactories;
        private HttpUrl baseUrl;
        private Call.Factory callFactory;
        private Executor callbackExecutor;
        private final List<Converter.Factory> converterFactories;
        private final Platform platform;
        private boolean validateEagerly;

        Builder(Platform platform) {
            this.converterFactories = new ArrayList();
            this.adapterFactories = new ArrayList();
            this.platform = platform;
            this.converterFactories.add(new BuiltInConverters());
        }

        public Builder() {
            this(Platform.get());
        }

        Builder(Retrofit retrofit) {
            this.converterFactories = new ArrayList();
            this.adapterFactories = new ArrayList();
            this.platform = Platform.get();
            this.callFactory = retrofit.callFactory;
            this.baseUrl = retrofit.baseUrl;
            this.converterFactories.addAll(retrofit.converterFactories);
            this.adapterFactories.addAll(retrofit.adapterFactories);
            this.adapterFactories.remove(this.adapterFactories.size() - 1);
            this.callbackExecutor = retrofit.callbackExecutor;
            this.validateEagerly = retrofit.validateEagerly;
        }

        public Builder client(OkHttpClient okHttpClient) {
            return callFactory((Call.Factory) Utils.checkNotNull(okHttpClient, "client == null"));
        }

        public Builder callFactory(Call.Factory factory) {
            this.callFactory = (Call.Factory) Utils.checkNotNull(factory, "factory == null");
            return this;
        }

        public Builder baseUrl(String str) {
            Utils.checkNotNull(str, "baseUrl == null");
            HttpUrl parse = HttpUrl.parse(str);
            if (parse == null) {
                throw new IllegalArgumentException("Illegal URL: " + str);
            }
            return baseUrl(parse);
        }

        public Builder baseUrl(HttpUrl httpUrl) {
            Utils.checkNotNull(httpUrl, "baseUrl == null");
            List<String> pathSegments = httpUrl.pathSegments();
            if (!"".equals(pathSegments.get(pathSegments.size() - 1))) {
                throw new IllegalArgumentException("baseUrl must end in /: " + httpUrl);
            }
            this.baseUrl = httpUrl;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addConverterFactory(Converter.Factory factory) {
            this.converterFactories.add(Utils.checkNotNull(factory, "factory == null"));
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Builder addCallAdapterFactory(CallAdapter.Factory factory) {
            this.adapterFactories.add(Utils.checkNotNull(factory, "factory == null"));
            return this;
        }

        public Builder callbackExecutor(Executor executor) {
            this.callbackExecutor = (Executor) Utils.checkNotNull(executor, "executor == null");
            return this;
        }

        public Builder validateEagerly(boolean z) {
            this.validateEagerly = z;
            return this;
        }

        public Retrofit build() {
            if (this.baseUrl == null) {
                throw new IllegalStateException("Base URL required.");
            }
            Call.Factory factory = this.callFactory;
            if (factory == null) {
                factory = new OkHttpClient();
            }
            Executor executor = this.callbackExecutor;
            if (executor == null) {
                executor = this.platform.defaultCallbackExecutor();
            }
            ArrayList arrayList = new ArrayList(this.adapterFactories);
            arrayList.add(this.platform.defaultCallAdapterFactory(executor));
            return new Retrofit(factory, this.baseUrl, new ArrayList(this.converterFactories), arrayList, executor, this.validateEagerly);
        }
    }
}
