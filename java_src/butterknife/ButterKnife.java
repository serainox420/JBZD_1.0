package butterknife;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class ButterKnife {
    private static boolean b = false;

    /* renamed from: a  reason: collision with root package name */
    static final Map<Class<?>, Constructor<? extends Unbinder>> f949a = new LinkedHashMap();

    /* loaded from: classes.dex */
    public interface Action<T extends View> {
    }

    /* loaded from: classes.dex */
    public interface Setter<T extends View, V> {
    }

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    public static Unbinder a(Activity activity) {
        return b(activity, activity.getWindow().getDecorView());
    }

    public static Unbinder a(View view) {
        return b(view, view);
    }

    public static Unbinder a(Object obj, View view) {
        return b(obj, view);
    }

    private static Unbinder b(Object obj, View view) {
        Class<?> cls = obj.getClass();
        if (b) {
            Log.d("ButterKnife", "Looking up binding for " + cls.getName());
        }
        Constructor<? extends Unbinder> a2 = a(cls);
        if (a2 == null) {
            return Unbinder.f953a;
        }
        try {
            return a2.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + a2, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + a2, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unable to create binding instance.", cause);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Constructor<? extends Unbinder> a(Class<?> cls) {
        Constructor<? extends Unbinder> a2;
        Constructor<? extends Unbinder> constructor = f949a.get(cls);
        if (constructor != null) {
            if (b) {
                Log.d("ButterKnife", "HIT: Cached in binding map.");
                return constructor;
            }
            return constructor;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.")) {
            if (b) {
                Log.d("ButterKnife", "MISS: Reached framework class. Abandoning search.");
            }
            return null;
        }
        try {
            a2 = Class.forName(name + "_ViewBinding").getConstructor(cls, View.class);
            if (b) {
                Log.d("ButterKnife", "HIT: Loaded binding class and constructor.");
            }
        } catch (ClassNotFoundException e) {
            if (b) {
                Log.d("ButterKnife", "Not found. Trying superclass " + cls.getSuperclass().getName());
            }
            a2 = a(cls.getSuperclass());
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException("Unable to find binding constructor for " + name, e2);
        }
        f949a.put(cls, a2);
        return a2;
    }
}
