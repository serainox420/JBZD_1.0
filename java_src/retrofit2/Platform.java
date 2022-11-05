package retrofit2;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import retrofit2.CallAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Platform {
    private static final Platform PLATFORM = findPlatform();

    Platform() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Platform get() {
        return PLATFORM;
    }

    private static Platform findPlatform() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new Android();
            }
        } catch (ClassNotFoundException e) {
        }
        try {
            Class.forName("java.util.Optional");
            return new Java8();
        } catch (ClassNotFoundException e2) {
            return new Platform();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Executor defaultCallbackExecutor() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallAdapter.Factory defaultCallAdapterFactory(Executor executor) {
        return executor != null ? new ExecutorCallAdapterFactory(executor) : DefaultCallAdapterFactory.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDefaultMethod(Method method) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static class Java8 extends Platform {
        Java8() {
        }

        @Override // retrofit2.Platform
        boolean isDefaultMethod(Method method) {
            return method.isDefault();
        }

        @Override // retrofit2.Platform
        Object invokeDefaultMethod(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Android extends Platform {
        Android() {
        }

        @Override // retrofit2.Platform
        public Executor defaultCallbackExecutor() {
            return new MainThreadExecutor();
        }

        @Override // retrofit2.Platform
        CallAdapter.Factory defaultCallAdapterFactory(Executor executor) {
            return new ExecutorCallAdapterFactory(executor);
        }

        /* loaded from: classes3.dex */
        static class MainThreadExecutor implements Executor {
            private final Handler handler = new Handler(Looper.getMainLooper());

            MainThreadExecutor() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.handler.post(runnable);
            }
        }
    }
}
