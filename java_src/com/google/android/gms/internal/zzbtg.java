package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.e;
import com.google.firebase.database.g;
import com.google.firebase.database.h;
import com.google.firebase.database.j;
import com.google.firebase.database.l;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2.dex */
public class zzbtg {
    private static final ConcurrentMap<Class<?>, zza<?>> zzckL = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza<T> {
        private final Class<T> zzckM;
        private final Constructor<T> zzckN;
        private final boolean zzckO;
        private final boolean zzckP;
        private final Map<String, String> zzckQ;
        private final Map<String, Method> zzckR;
        private final Map<String, Method> zzckS;
        private final Map<String, Field> zzckT;

        public zza(Class<T> cls) {
            Constructor<T> constructor;
            Method[] methods;
            Field[] fields;
            Method[] declaredMethods;
            Field[] declaredFields;
            this.zzckM = cls;
            this.zzckO = cls.isAnnotationPresent(l.class);
            this.zzckP = !cls.isAnnotationPresent(h.class);
            this.zzckQ = new HashMap();
            this.zzckS = new HashMap();
            this.zzckR = new HashMap();
            this.zzckT = new HashMap();
            try {
                constructor = cls.getDeclaredConstructor(new Class[0]);
                constructor.setAccessible(true);
            } catch (NoSuchMethodException e) {
                constructor = null;
            }
            this.zzckN = constructor;
            for (Method method : cls.getMethods()) {
                if (zza(method)) {
                    String zzc = zzc(method);
                    zzjr(zzc);
                    method.setAccessible(true);
                    if (this.zzckR.containsKey(zzc)) {
                        String valueOf = String.valueOf(method.getName());
                        throw new DatabaseException(valueOf.length() != 0 ? "Found conflicting getters for name: ".concat(valueOf) : new String("Found conflicting getters for name: "));
                    }
                    this.zzckR.put(zzc, method);
                }
            }
            for (Field field : cls.getFields()) {
                if (zza(field)) {
                    zzjr(zzb(field));
                }
            }
            Class<T> cls2 = cls;
            while (true) {
                for (Method method2 : cls2.getDeclaredMethods()) {
                    if (zzb(method2)) {
                        String zzc2 = zzc(method2);
                        String str = this.zzckQ.get(zzc2.toLowerCase());
                        if (str == null) {
                            continue;
                        } else if (!str.equals(zzc2)) {
                            String valueOf2 = String.valueOf(method2.getName());
                            throw new DatabaseException(valueOf2.length() != 0 ? "Found setter with invalid case-sensitive name: ".concat(valueOf2) : new String("Found setter with invalid case-sensitive name: "));
                        } else {
                            Method method3 = this.zzckS.get(zzc2);
                            if (method3 == null) {
                                method2.setAccessible(true);
                                this.zzckS.put(zzc2, method2);
                            } else if (!zza(method2, method3)) {
                                String valueOf3 = String.valueOf(method2.getName());
                                String valueOf4 = String.valueOf(method3.getName());
                                String valueOf5 = String.valueOf(method3.getDeclaringClass().getName());
                                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf3).length() + 69 + String.valueOf(valueOf4).length() + String.valueOf(valueOf5).length()).append("Found a conflicting setters with name: ").append(valueOf3).append(" (conflicts with ").append(valueOf4).append(" defined on ").append(valueOf5).append(")").toString());
                            }
                        }
                    }
                }
                for (Field field2 : cls2.getDeclaredFields()) {
                    String zzb = zzb(field2);
                    if (this.zzckQ.containsKey(zzb.toLowerCase()) && !this.zzckT.containsKey(zzb)) {
                        field2.setAccessible(true);
                        this.zzckT.put(zzb, field2);
                    }
                }
                Class<T> superclass = cls2.getSuperclass();
                if (superclass == null || superclass.equals(Object.class)) {
                    break;
                }
                cls2 = superclass;
            }
            if (this.zzckQ.isEmpty()) {
                String valueOf6 = String.valueOf(cls.getName());
                throw new DatabaseException(valueOf6.length() != 0 ? "No properties to serialize found on class ".concat(valueOf6) : new String("No properties to serialize found on class "));
            }
        }

        private static String zza(AccessibleObject accessibleObject) {
            if (accessibleObject.isAnnotationPresent(j.class)) {
                return ((j) accessibleObject.getAnnotation(j.class)).a();
            }
            return null;
        }

        private Type zza(Type type, Map<TypeVariable<Class<T>>, Type> map) {
            if (type instanceof TypeVariable) {
                Type type2 = map.get(type);
                if (type2 != null) {
                    return type2;
                }
                String valueOf = String.valueOf(type);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 23).append("Could not resolve type ").append(valueOf).toString());
            }
            return type;
        }

        private static boolean zza(Field field) {
            return !field.getDeclaringClass().equals(Object.class) && Modifier.isPublic(field.getModifiers()) && !Modifier.isStatic(field.getModifiers()) && !Modifier.isTransient(field.getModifiers()) && !field.isAnnotationPresent(e.class);
        }

        private static boolean zza(Method method) {
            return (method.getName().startsWith("get") || method.getName().startsWith("is")) && !method.getDeclaringClass().equals(Object.class) && Modifier.isPublic(method.getModifiers()) && !Modifier.isStatic(method.getModifiers()) && !method.getReturnType().equals(Void.TYPE) && method.getParameterTypes().length == 0 && !method.isAnnotationPresent(e.class);
        }

        private static boolean zza(Method method, Method method2) {
            zzbte.zzb(method.getDeclaringClass().isAssignableFrom(method2.getDeclaringClass()), "Expected override from a base class");
            zzbte.zzb(method.getReturnType().equals(Void.TYPE), "Expected void return type");
            zzbte.zzb(method2.getReturnType().equals(Void.TYPE), "Expected void return type");
            Class<?>[] parameterTypes = method.getParameterTypes();
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            zzbte.zzb(parameterTypes.length == 1, "Expected exactly one parameter");
            zzbte.zzb(parameterTypes2.length == 1, "Expected exactly one parameter");
            return method.getName().equals(method2.getName()) && parameterTypes[0].equals(parameterTypes2[0]);
        }

        private static String zzb(Field field) {
            String zza = zza((AccessibleObject) field);
            return zza != null ? zza : field.getName();
        }

        private static boolean zzb(Method method) {
            return method.getName().startsWith("set") && !method.getDeclaringClass().equals(Object.class) && !Modifier.isStatic(method.getModifiers()) && method.getReturnType().equals(Void.TYPE) && method.getParameterTypes().length == 1 && !method.isAnnotationPresent(e.class);
        }

        private static String zzc(Method method) {
            String zza = zza((AccessibleObject) method);
            return zza != null ? zza : zzjs(method.getName());
        }

        private void zzjr(String str) {
            String put = this.zzckQ.put(str.toLowerCase(), str);
            if (put == null || str.equals(put)) {
                return;
            }
            String valueOf = String.valueOf(str.toLowerCase());
            throw new DatabaseException(valueOf.length() != 0 ? "Found two getters or fields with conflicting case sensitivity for property: ".concat(valueOf) : new String("Found two getters or fields with conflicting case sensitivity for property: "));
        }

        private static String zzjs(String str) {
            String[] strArr = {"get", "set", "is"};
            String str2 = null;
            int i = 0;
            while (i < 3) {
                String str3 = strArr[i];
                if (!str.startsWith(str3)) {
                    str3 = str2;
                }
                i++;
                str2 = str3;
            }
            if (str2 == null) {
                String valueOf = String.valueOf(str);
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Unknown Bean prefix for method: ".concat(valueOf) : new String("Unknown Bean prefix for method: "));
            }
            char[] charArray = str.substring(str2.length()).toCharArray();
            for (int i2 = 0; i2 < charArray.length && Character.isUpperCase(charArray[i2]); i2++) {
                charArray[i2] = Character.toLowerCase(charArray[i2]);
            }
            return new String(charArray);
        }

        public T zzaH(Map<String, Object> map) {
            return zze(map, Collections.emptyMap());
        }

        public Map<String, Object> zzaH(T t) {
            Object obj;
            if (!this.zzckM.isAssignableFrom(t.getClass())) {
                String valueOf = String.valueOf(t.getClass());
                String valueOf2 = String.valueOf(this.zzckM);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 59 + String.valueOf(valueOf2).length()).append("Can't serialize object of class ").append(valueOf).append(" with BeanMapper for class ").append(valueOf2).toString());
            }
            HashMap hashMap = new HashMap();
            for (String str : this.zzckQ.values()) {
                if (this.zzckR.containsKey(str)) {
                    try {
                        obj = this.zzckR.get(str).invoke(t, new Object[0]);
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (InvocationTargetException e2) {
                        throw new RuntimeException(e2);
                    }
                } else {
                    Field field = this.zzckT.get(str);
                    if (field == null) {
                        String valueOf3 = String.valueOf(str);
                        throw new IllegalStateException(valueOf3.length() != 0 ? "Bean property without field or getter:".concat(valueOf3) : new String("Bean property without field or getter:"));
                    }
                    try {
                        obj = field.get(t);
                    } catch (IllegalAccessException e3) {
                        throw new RuntimeException(e3);
                    }
                }
                hashMap.put(str, zzbtg.zzaz(obj));
            }
            return hashMap;
        }

        public T zze(Map<String, Object> map, Map<TypeVariable<Class<T>>, Type> map2) {
            if (this.zzckN == null) {
                String valueOf = String.valueOf(this.zzckM.getName());
                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 49).append("Class ").append(valueOf).append(" is missing a constructor with no arguments").toString());
            }
            try {
                T newInstance = this.zzckN.newInstance(new Object[0]);
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (this.zzckS.containsKey(key)) {
                        Method method = this.zzckS.get(key);
                        Type[] genericParameterTypes = method.getGenericParameterTypes();
                        if (genericParameterTypes.length != 1) {
                            throw new IllegalStateException("Setter does not have exactly one parameter");
                        }
                        try {
                            method.invoke(newInstance, zzbtg.zza(entry.getValue(), zza(genericParameterTypes[0], map2)));
                        } catch (IllegalAccessException e) {
                            throw new RuntimeException(e);
                        } catch (InvocationTargetException e2) {
                            throw new RuntimeException(e2);
                        }
                    } else if (this.zzckT.containsKey(key)) {
                        Field field = this.zzckT.get(key);
                        try {
                            field.set(newInstance, zzbtg.zza(entry.getValue(), zza(field.getGenericType(), map2)));
                        } catch (IllegalAccessException e3) {
                            throw new RuntimeException(e3);
                        }
                    } else {
                        String valueOf2 = String.valueOf(this.zzckM.getName());
                        String sb = new StringBuilder(String.valueOf(key).length() + 36 + String.valueOf(valueOf2).length()).append("No setter/field for ").append(key).append(" found on class ").append(valueOf2).toString();
                        if (this.zzckQ.containsKey(key.toLowerCase())) {
                            sb = String.valueOf(sb).concat(" (fields/setters are case sensitive!)");
                        }
                        if (this.zzckO) {
                            throw new DatabaseException(sb);
                        }
                        if (this.zzckP) {
                            Log.w("ClassMapper", sb);
                        }
                    }
                }
                return newInstance;
            } catch (IllegalAccessException e4) {
                throw new RuntimeException(e4);
            } catch (InstantiationException e5) {
                throw new RuntimeException(e5);
            } catch (InvocationTargetException e6) {
                throw new RuntimeException(e6);
            }
        }
    }

    public static <T> T zza(Object obj, g<T> gVar) {
        Type genericSuperclass = gVar.getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof ParameterizedType)) {
            String valueOf = String.valueOf(genericSuperclass);
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Not a direct subclass of GenericTypeIndicator: ").append(valueOf).toString());
        }
        ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
        if (parameterizedType.getRawType().equals(g.class)) {
            return (T) zza(obj, parameterizedType.getActualTypeArguments()[0]);
        }
        String valueOf2 = String.valueOf(genericSuperclass);
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf2).length() + 47).append("Not a direct subclass of GenericTypeIndicator: ").append(valueOf2).toString());
    }

    public static <T> T zza(Object obj, Class<T> cls) {
        return (T) zzb(obj, (Class<Object>) cls);
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [java.util.List, T, java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v8, types: [T, java.util.HashMap] */
    private static <T> T zza(Object obj, ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        if (List.class.isAssignableFrom(cls)) {
            Type type = parameterizedType.getActualTypeArguments()[0];
            if (!(obj instanceof List)) {
                String valueOf = String.valueOf(obj.getClass());
                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 47).append("Expected a List while deserializing, but got a ").append(valueOf).toString());
            }
            List<Object> list = (List) obj;
            ?? r0 = (T) new ArrayList(list.size());
            for (Object obj2 : list) {
                r0.add(zza(obj2, type));
            }
            return r0;
        } else if (Map.class.isAssignableFrom(cls)) {
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            Type type3 = parameterizedType.getActualTypeArguments()[1];
            if (!type2.equals(String.class)) {
                String valueOf2 = String.valueOf(type2);
                throw new DatabaseException(new StringBuilder(String.valueOf(valueOf2).length() + 70).append("Only Maps with string keys are supported, but found Map with key type ").append(valueOf2).toString());
            }
            Map<String, Object> zzaA = zzaA(obj);
            ?? r2 = (T) new HashMap();
            for (Map.Entry<String, Object> entry : zzaA.entrySet()) {
                r2.put(entry.getKey(), zza(entry.getValue(), type3));
            }
            return r2;
        } else if (Collection.class.isAssignableFrom(cls)) {
            throw new DatabaseException("Collections are not supported, please use Lists instead");
        } else {
            Map<String, Object> zzaA2 = zzaA(obj);
            zza zzi = zzi(cls);
            HashMap hashMap = new HashMap();
            TypeVariable<Class<T>>[] typeParameters = zzi.zzckM.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (actualTypeArguments.length != typeParameters.length) {
                throw new IllegalStateException("Mismatched lengths for type variables and actual types");
            }
            for (int i = 0; i < typeParameters.length; i++) {
                hashMap.put(typeParameters[i], actualTypeArguments[i]);
            }
            return (T) zzi.zze(zzaA2, hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T zza(Object obj, Type type) {
        if (obj == null) {
            return null;
        }
        if (type instanceof ParameterizedType) {
            return (T) zza(obj, (ParameterizedType) type);
        }
        if (type instanceof Class) {
            return (T) zzb(obj, (Class<Object>) type);
        }
        if (type instanceof WildcardType) {
            throw new DatabaseException("Generic wildcard types are not supported");
        }
        if (type instanceof GenericArrayType) {
            throw new DatabaseException("Generic Arrays are not supported, please use Lists instead");
        }
        String valueOf = String.valueOf(type);
        throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 26).append("Unknown type encountered: ").append(valueOf).toString());
    }

    private static Map<String, Object> zzaA(Object obj) {
        if (obj instanceof Map) {
            return (Map) obj;
        }
        String valueOf = String.valueOf(obj.getClass());
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected a Map while deserializing, but got a ").append(valueOf).toString());
    }

    private static Integer zzaB(Object obj) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (!(obj instanceof Long) && !(obj instanceof Double)) {
            String valueOf = String.valueOf(obj.getClass().getName());
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 41).append("Failed to convert a value of type ").append(valueOf).append(" to int").toString());
        }
        double doubleValue = ((Number) obj).doubleValue();
        if (doubleValue >= -2.147483648E9d && doubleValue <= 2.147483647E9d) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        throw new DatabaseException(new StringBuilder((int) MetadataChangeSet.CUSTOM_PROPERTY_SIZE_LIMIT_BYTES).append("Numeric value out of 32-bit integer range: ").append(doubleValue).append(". Did you mean to use a long or double instead of an int?").toString());
    }

    private static Long zzaC(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).longValue());
        }
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (!(obj instanceof Double)) {
            String valueOf = String.valueOf(obj.getClass().getName());
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 42).append("Failed to convert a value of type ").append(valueOf).append(" to long").toString());
        }
        Double d = (Double) obj;
        if (d.doubleValue() >= -9.223372036854776E18d && d.doubleValue() <= 9.223372036854776E18d) {
            return Long.valueOf(d.longValue());
        }
        String valueOf2 = String.valueOf(d);
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf2).length() + 89).append("Numeric value out of 64-bit long range: ").append(valueOf2).append(". Did you mean to use a double instead of a long?").toString());
    }

    private static Double zzaD(Object obj) {
        if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        }
        if (!(obj instanceof Long)) {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            String valueOf = String.valueOf(obj.getClass().getName());
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 44).append("Failed to convert a value of type ").append(valueOf).append(" to double").toString());
        }
        Double valueOf2 = Double.valueOf(((Long) obj).doubleValue());
        if (valueOf2.longValue() == ((Long) obj).longValue()) {
            return valueOf2;
        }
        String valueOf3 = String.valueOf(obj);
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf3).length() + 97).append("Loss of precision while converting number to double: ").append(valueOf3).append(". Did you mean to use a 64-bit long instead?").toString());
    }

    private static Boolean zzaE(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        String valueOf = String.valueOf(obj.getClass().getName());
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 43).append("Failed to convert value of type ").append(valueOf).append(" to boolean").toString());
    }

    private static String zzaF(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        String valueOf = String.valueOf(obj.getClass().getName());
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 42).append("Failed to convert value of type ").append(valueOf).append(" to String").toString());
    }

    public static Map<String, Object> zzaG(Map<String, Object> map) {
        Object zzaz = zzaz(map);
        zzbte.zzbb(zzaz instanceof Map);
        return (Map) zzaz;
    }

    public static Object zzay(Object obj) {
        return zzaz(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Object zzaz(T t) {
        if (t == null) {
            return null;
        }
        if (t instanceof Number) {
            if (t instanceof Float) {
                return Double.valueOf(((Float) t).doubleValue());
            }
            if (t instanceof Short) {
                throw new DatabaseException("Shorts are not supported, please use int or long");
            }
            if (!(t instanceof Byte)) {
                return t;
            }
            throw new DatabaseException("Bytes are not supported, please use int or long");
        } else if ((t instanceof String) || (t instanceof Boolean)) {
            return t;
        } else {
            if (t instanceof Character) {
                throw new DatabaseException("Characters are not supported, please strings");
            }
            if (t instanceof Map) {
                HashMap hashMap = new HashMap();
                for (Map.Entry entry : ((Map) t).entrySet()) {
                    Object key = entry.getKey();
                    if (!(key instanceof String)) {
                        throw new DatabaseException("Maps with non-string keys are not supported");
                    }
                    hashMap.put((String) key, zzaz(entry.getValue()));
                }
                return hashMap;
            } else if (!(t instanceof Collection)) {
                if (t.getClass().isArray()) {
                    throw new DatabaseException("Serializing Arrays is not supported, please use Lists instead");
                }
                return t instanceof Enum ? ((Enum) t).name() : zzi(t.getClass()).zzaH((zza) t);
            } else if (!(t instanceof List)) {
                throw new DatabaseException("Serializing Collections is not supported, please use Lists instead");
            } else {
                List<Object> list = (List) t;
                ArrayList arrayList = new ArrayList(list.size());
                for (Object obj : list) {
                    arrayList.add(zzaz(obj));
                }
                return arrayList;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T zzb(Object obj, Class<T> cls) {
        if (obj == 0) {
            return null;
        }
        if (cls.isPrimitive() || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls) || Character.class.isAssignableFrom(cls)) {
            return (T) zzc(obj, cls);
        }
        if (String.class.isAssignableFrom(cls)) {
            return (T) zzaF(obj);
        }
        if (cls.isArray()) {
            throw new DatabaseException("Converting to Arrays is not supported, please use Listsinstead");
        }
        if (cls.getTypeParameters().length <= 0) {
            return !cls.equals(Object.class) ? cls.isEnum() ? (T) zzd(obj, cls) : (T) zze(obj, cls) : obj;
        }
        String valueOf = String.valueOf(cls.getName());
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 75).append("Class ").append(valueOf).append(" has generic type parameters, please use GenericTypeIndicator instead").toString());
    }

    private static <T> T zzc(Object obj, Class<T> cls) {
        if (Integer.class.isAssignableFrom(cls) || Integer.TYPE.isAssignableFrom(cls)) {
            return (T) zzaB(obj);
        }
        if (Boolean.class.isAssignableFrom(cls) || Boolean.TYPE.isAssignableFrom(cls)) {
            return (T) zzaE(obj);
        }
        if (Double.class.isAssignableFrom(cls) || Double.TYPE.isAssignableFrom(cls)) {
            return (T) zzaD(obj);
        }
        if (Long.class.isAssignableFrom(cls) || Long.TYPE.isAssignableFrom(cls)) {
            return (T) zzaC(obj);
        }
        if (Float.class.isAssignableFrom(cls) || Float.TYPE.isAssignableFrom(cls)) {
            return (T) Float.valueOf(zzaD(obj).floatValue());
        }
        if (Short.class.isAssignableFrom(cls) || Short.TYPE.isAssignableFrom(cls)) {
            throw new DatabaseException("Deserializing to shorts is not supported");
        }
        if (Byte.class.isAssignableFrom(cls) || Byte.TYPE.isAssignableFrom(cls)) {
            throw new DatabaseException("Deserializing to bytes is not supported");
        }
        if (Character.class.isAssignableFrom(cls) || Character.TYPE.isAssignableFrom(cls)) {
            throw new DatabaseException("Deserializing to char is not supported");
        }
        String valueOf = String.valueOf(cls);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 24).append("Unknown primitive type: ").append(valueOf).toString());
    }

    private static <T> T zzd(Object obj, Class<T> cls) {
        if (!(obj instanceof String)) {
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(obj.getClass());
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("Expected a String while deserializing to enum ").append(valueOf).append(" but got a ").append(valueOf2).toString());
        }
        String str = (String) obj;
        try {
            return (T) Enum.valueOf(cls, str);
        } catch (IllegalArgumentException e) {
            String valueOf3 = String.valueOf(cls.getName());
            throw new DatabaseException(new StringBuilder(String.valueOf(valueOf3).length() + 42 + String.valueOf(str).length()).append("Could not find enum value of ").append(valueOf3).append(" for value \"").append(str).append("\"").toString());
        }
    }

    private static <T> T zze(Object obj, Class<T> cls) {
        zza zzi = zzi(cls);
        if (obj instanceof Map) {
            return (T) zzi.zzaH(zzaA(obj));
        }
        String valueOf = String.valueOf(obj.getClass().getName());
        String valueOf2 = String.valueOf(cls.getName());
        throw new DatabaseException(new StringBuilder(String.valueOf(valueOf).length() + 38 + String.valueOf(valueOf2).length()).append("Can't convert object of type ").append(valueOf).append(" to type ").append(valueOf2).toString());
    }

    private static <T> zza<T> zzi(Class<T> cls) {
        zza<T> zzaVar = (zza<T>) zzckL.get(cls);
        if (zzaVar == null) {
            zza<T> zzaVar2 = new zza<>(cls);
            zzckL.put(cls, zzaVar2);
            return zzaVar2;
        }
        return zzaVar;
    }
}
