package com.mopub.common.util;

import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Reflection {

    /* loaded from: classes3.dex */
    public static class MethodBuilder {

        /* renamed from: a  reason: collision with root package name */
        private final Object f4392a;
        private final String b;
        private Class<?> c;
        private List<Class<?>> d = new ArrayList();
        private List<Object> e = new ArrayList();
        private boolean f;
        private boolean g;

        public MethodBuilder(Object obj, String str) {
            this.f4392a = obj;
            this.b = str;
            this.c = obj != null ? obj.getClass() : null;
        }

        public <T> MethodBuilder addParam(Class<T> cls, T t) {
            this.d.add(cls);
            this.e.add(t);
            return this;
        }

        public MethodBuilder setAccessible() {
            this.f = true;
            return this;
        }

        public MethodBuilder setStatic(Class<?> cls) {
            this.g = true;
            this.c = cls;
            return this;
        }

        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.c, this.b, (Class[]) this.d.toArray(new Class[this.d.size()]));
            if (this.f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.e.toArray();
            return this.g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f4392a, array);
        }
    }

    public static Method getDeclaredMethodWithTraversal(Class<?> cls, String str, Class<?>... clsArr) throws NoSuchMethodException {
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static boolean classFound(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    public static <T> T instantiateClassWithEmptyConstructor(String str, Class<? extends T> cls) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, NullPointerException {
        Preconditions.checkNotNull(str);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }

    public static <T> T instantiateClassWithConstructor(String str, Class<? extends T> cls, Class[] clsArr, Object[] objArr) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(clsArr);
        Preconditions.checkNotNull(objArr);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }
}
