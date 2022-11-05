package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import okhttp3.ResponseBody;
import okio.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Utils {
    static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> getRawType(Type type) {
        if (type == null) {
            throw new NullPointerException("type == null");
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return getRawType(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    static boolean equals(Type type, Type type2) {
        boolean z = true;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            if (!equal(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z = false;
            }
            return z;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                z = false;
            }
            return z;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                z = false;
            }
            return z;
        }
    }

    static Type getGenericSupertype(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        return cls.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(interfaces[i])) {
                        return getGenericSupertype(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(superclass)) {
                        return getGenericSupertype(cls.getGenericSuperclass(), superclass, cls2);
                    }
                    cls = superclass;
                }
            }
            return cls2;
        }
        return type;
    }

    private static int indexOf(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    private static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int hashCodeOrZero(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getSupertype(Type type, Class<?> cls, Class<?> cls2) {
        if (!cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException();
        }
        return resolve(type, cls, getGenericSupertype(type, cls, cls2));
    }

    static Type resolve(Type type, Class<?> cls, Type type2) {
        Type resolve;
        while (true) {
            Type type3 = type2;
            if (!(type3 instanceof TypeVariable)) {
                if ((type3 instanceof Class) && ((Class) type3).isArray()) {
                    Class cls2 = (Class) type3;
                    Class<?> componentType = cls2.getComponentType();
                    Type resolve2 = resolve(type, cls, componentType);
                    return componentType != resolve2 ? new GenericArrayTypeImpl(resolve2) : cls2;
                } else if (type3 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type3;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type resolve3 = resolve(type, cls, genericComponentType);
                    return genericComponentType != resolve3 ? new GenericArrayTypeImpl(resolve3) : genericArrayType;
                } else if (type3 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type3;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type resolve4 = resolve(type, cls, ownerType);
                    boolean z = resolve4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length = actualTypeArguments.length;
                    boolean z2 = z;
                    Type[] typeArr = actualTypeArguments;
                    for (int i = 0; i < length; i++) {
                        Type resolve5 = resolve(type, cls, typeArr[i]);
                        if (resolve5 != typeArr[i]) {
                            if (!z2) {
                                typeArr = (Type[]) typeArr.clone();
                                z2 = true;
                            }
                            typeArr[i] = resolve5;
                        }
                    }
                    if (z2) {
                        return new ParameterizedTypeImpl(resolve4, parameterizedType.getRawType(), typeArr);
                    }
                    return parameterizedType;
                } else if (type3 instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type3;
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type resolve6 = resolve(type, cls, lowerBounds[0]);
                        if (resolve6 != lowerBounds[0]) {
                            return new WildcardTypeImpl(new Type[]{Object.class}, new Type[]{resolve6});
                        }
                        return wildcardType;
                    } else if (upperBounds.length == 1 && (resolve = resolve(type, cls, upperBounds[0])) != upperBounds[0]) {
                        return new WildcardTypeImpl(new Type[]{resolve}, EMPTY_TYPE_ARRAY);
                    } else {
                        return wildcardType;
                    }
                } else {
                    return type3;
                }
            }
            TypeVariable typeVariable = (TypeVariable) type3;
            type2 = resolveTypeVariable(type, cls, typeVariable);
            if (type2 == typeVariable) {
                return type2;
            }
        }
    }

    private static Type resolveTypeVariable(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> declaringClassOf = declaringClassOf(typeVariable);
        if (declaringClassOf != null) {
            Type genericSupertype = getGenericSupertype(type, cls, declaringClassOf);
            if (genericSupertype instanceof ParameterizedType) {
                return ((ParameterizedType) genericSupertype).getActualTypeArguments()[indexOf(declaringClassOf.getTypeParameters(), typeVariable)];
            }
            return typeVariable;
        }
        return typeVariable;
    }

    private static Class<?> declaringClassOf(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static void checkNotPrimitive(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T checkNotNull(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isAnnotationPresent(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResponseBody buffer(ResponseBody responseBody) throws IOException {
        c cVar = new c();
        responseBody.source().a(cVar);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void validateServiceInterface(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        }
        if (cls.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getParameterUpperBound(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i < 0 || i >= actualTypeArguments.length) {
            throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
        }
        Type type = actualTypeArguments[i];
        if (type instanceof WildcardType) {
            return ((WildcardType) type).getUpperBounds()[0];
        }
        return type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasUnresolvableType(Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (hasUnresolvableType(type2)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return hasUnresolvableType(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof TypeVariable) && !(type instanceof WildcardType)) {
                throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? "null" : type.getClass().getName()));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type getCallResponseType(Type type) {
        if (!(type instanceof ParameterizedType)) {
            throw new IllegalArgumentException("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
        }
        return getParameterUpperBound(0, (ParameterizedType) type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType {
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        ParameterizedTypeImpl(Type type, Type type2, Type... typeArr) {
            Type[] typeArr2;
            boolean z = true;
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : z)) {
                    throw new IllegalArgumentException();
                }
            }
            this.ownerType = type;
            this.rawType = type2;
            this.typeArguments = (Type[]) typeArr.clone();
            for (Type type3 : this.typeArguments) {
                if (type3 == null) {
                    throw new NullPointerException();
                }
                Utils.checkNotPrimitive(type3);
            }
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && Utils.equals(this, (ParameterizedType) obj);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ Utils.hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.typeArguments.length + 1) * 30);
            sb.append(Utils.typeToString(this.rawType));
            if (this.typeArguments.length == 0) {
                return sb.toString();
            }
            sb.append("<").append(Utils.typeToString(this.typeArguments[0]));
            for (int i = 1; i < this.typeArguments.length; i++) {
                sb.append(", ").append(Utils.typeToString(this.typeArguments[i]));
            }
            return sb.append(">").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType {
        private final Type componentType;

        GenericArrayTypeImpl(Type type) {
            this.componentType = type;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && Utils.equals(this, (GenericArrayType) obj);
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return Utils.typeToString(this.componentType) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class WildcardTypeImpl implements WildcardType {
        private final Type lowerBound;
        private final Type upperBound;

        WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            }
            if (typeArr2.length == 1) {
                if (typeArr2[0] == null) {
                    throw new NullPointerException();
                }
                Utils.checkNotPrimitive(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    throw new IllegalArgumentException();
                }
                this.lowerBound = typeArr2[0];
                this.upperBound = Object.class;
            } else if (typeArr[0] == null) {
                throw new NullPointerException();
            } else {
                Utils.checkNotPrimitive(typeArr[0]);
                this.lowerBound = null;
                this.upperBound = typeArr[0];
            }
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return this.lowerBound != null ? new Type[]{this.lowerBound} : Utils.EMPTY_TYPE_ARRAY;
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && Utils.equals(this, (WildcardType) obj);
        }

        public int hashCode() {
            return (this.lowerBound != null ? this.lowerBound.hashCode() + 31 : 1) ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            return this.lowerBound != null ? "? super " + Utils.typeToString(this.lowerBound) : this.upperBound == Object.class ? "?" : "? extends " + Utils.typeToString(this.upperBound);
        }
    }
}
