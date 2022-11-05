package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class TypeFactory implements Serializable {
    private static final long serialVersionUID = 1;
    protected final ClassLoader _classLoader;
    protected final TypeModifier[] _modifiers;
    protected final TypeParser _parser;
    protected final LRUMap<Object, JavaType> _typeCache;
    private static final JavaType[] NO_TYPES = new JavaType[0];
    protected static final TypeFactory instance = new TypeFactory();
    protected static final TypeBindings EMPTY_BINDINGS = TypeBindings.emptyBindings();
    private static final Class<?> CLS_STRING = String.class;
    private static final Class<?> CLS_OBJECT = Object.class;
    private static final Class<?> CLS_COMPARABLE = Comparable.class;
    private static final Class<?> CLS_CLASS = Class.class;
    private static final Class<?> CLS_ENUM = Enum.class;
    private static final Class<?> CLS_BOOL = Boolean.TYPE;
    private static final Class<?> CLS_INT = Integer.TYPE;
    private static final Class<?> CLS_LONG = Long.TYPE;
    protected static final SimpleType CORE_TYPE_BOOL = new SimpleType(CLS_BOOL);
    protected static final SimpleType CORE_TYPE_INT = new SimpleType(CLS_INT);
    protected static final SimpleType CORE_TYPE_LONG = new SimpleType(CLS_LONG);
    protected static final SimpleType CORE_TYPE_STRING = new SimpleType(CLS_STRING);
    protected static final SimpleType CORE_TYPE_OBJECT = new SimpleType(CLS_OBJECT);
    protected static final SimpleType CORE_TYPE_COMPARABLE = new SimpleType(CLS_COMPARABLE);
    protected static final SimpleType CORE_TYPE_ENUM = new SimpleType(CLS_ENUM);
    protected static final SimpleType CORE_TYPE_CLASS = new SimpleType(CLS_CLASS);

    private TypeFactory() {
        this(null);
    }

    protected TypeFactory(LRUMap<Object, JavaType> lRUMap) {
        this._typeCache = lRUMap == null ? new LRUMap<>(16, 200) : lRUMap;
        this._parser = new TypeParser(this);
        this._modifiers = null;
        this._classLoader = null;
    }

    protected TypeFactory(LRUMap<Object, JavaType> lRUMap, TypeParser typeParser, TypeModifier[] typeModifierArr, ClassLoader classLoader) {
        this._typeCache = lRUMap == null ? new LRUMap<>(16, 200) : lRUMap;
        this._parser = typeParser.withFactory(this);
        this._modifiers = typeModifierArr;
        this._classLoader = classLoader;
    }

    public TypeFactory withModifier(TypeModifier typeModifier) {
        TypeModifier[] typeModifierArr = null;
        LRUMap<Object, JavaType> lRUMap = this._typeCache;
        if (typeModifier == null) {
            lRUMap = null;
        } else {
            typeModifierArr = this._modifiers == null ? new TypeModifier[]{typeModifier} : (TypeModifier[]) ArrayBuilders.insertInListNoDup(this._modifiers, typeModifier);
        }
        return new TypeFactory(lRUMap, this._parser, typeModifierArr, this._classLoader);
    }

    public TypeFactory withClassLoader(ClassLoader classLoader) {
        return new TypeFactory(this._typeCache, this._parser, this._modifiers, classLoader);
    }

    public TypeFactory withCache(LRUMap<Object, JavaType> lRUMap) {
        return new TypeFactory(lRUMap, this._parser, this._modifiers, this._classLoader);
    }

    public static TypeFactory defaultInstance() {
        return instance;
    }

    public void clearCache() {
        this._typeCache.clear();
    }

    public ClassLoader getClassLoader() {
        return this._classLoader;
    }

    public static JavaType unknownType() {
        return defaultInstance()._unknownType();
    }

    public static Class<?> rawClass(Type type) {
        return type instanceof Class ? (Class) type : defaultInstance().constructType(type).getRawClass();
    }

    public Class<?> findClass(String str) throws ClassNotFoundException {
        Class<?> _findPrimitive;
        if (str.indexOf(46) >= 0 || (_findPrimitive = _findPrimitive(str)) == null) {
            Throwable th = null;
            ClassLoader classLoader = getClassLoader();
            if (classLoader == null) {
                classLoader = Thread.currentThread().getContextClassLoader();
            }
            if (classLoader != null) {
                try {
                    return classForName(str, true, classLoader);
                } catch (Exception e) {
                    th = ClassUtil.getRootCause(e);
                }
            }
            try {
                return classForName(str);
            } catch (Exception e2) {
                if (th == null) {
                    th = ClassUtil.getRootCause(e2);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new ClassNotFoundException(th.getMessage(), th);
            }
        }
        return _findPrimitive;
    }

    protected Class<?> classForName(String str, boolean z, ClassLoader classLoader) throws ClassNotFoundException {
        return Class.forName(str, true, classLoader);
    }

    protected Class<?> classForName(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    protected Class<?> _findPrimitive(String str) {
        if ("int".equals(str)) {
            return Integer.TYPE;
        }
        if ("long".equals(str)) {
            return Long.TYPE;
        }
        if ("float".equals(str)) {
            return Float.TYPE;
        }
        if ("double".equals(str)) {
            return Double.TYPE;
        }
        if ("boolean".equals(str)) {
            return Boolean.TYPE;
        }
        if ("byte".equals(str)) {
            return Byte.TYPE;
        }
        if ("char".equals(str)) {
            return Character.TYPE;
        }
        if ("short".equals(str)) {
            return Short.TYPE;
        }
        if (!"void".equals(str)) {
            return null;
        }
        return Void.TYPE;
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        JavaType refine;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass != cls) {
            if (rawClass == Object.class) {
                refine = _fromClass(null, cls, TypeBindings.emptyBindings());
            } else if (!rawClass.isAssignableFrom(cls)) {
                throw new IllegalArgumentException(String.format("Class %s not subtype of %s", cls.getName(), javaType));
            } else {
                if (javaType.getBindings().isEmpty()) {
                    refine = _fromClass(null, cls, TypeBindings.emptyBindings());
                } else {
                    if (javaType.isContainerType()) {
                        if (javaType.isMapLikeType()) {
                            if (cls == HashMap.class || cls == LinkedHashMap.class || cls == EnumMap.class || cls == TreeMap.class) {
                                refine = _fromClass(null, cls, TypeBindings.create(cls, javaType.mo449getKeyType(), javaType.mo463getContentType()));
                            }
                        } else if (javaType.isCollectionLikeType()) {
                            if (cls == ArrayList.class || cls == LinkedList.class || cls == HashSet.class || cls == TreeSet.class) {
                                refine = _fromClass(null, cls, TypeBindings.create(cls, javaType.mo463getContentType()));
                            } else if (rawClass == EnumSet.class) {
                                return javaType;
                            }
                        }
                    }
                    int length = cls.getTypeParameters().length;
                    if (length == 0) {
                        refine = _fromClass(null, cls, TypeBindings.emptyBindings());
                    } else {
                        TypeBindings _bindingsForSubtype = _bindingsForSubtype(javaType, length, cls);
                        refine = javaType.isInterface() ? javaType.refine(cls, _bindingsForSubtype, null, new JavaType[]{javaType}) : javaType.refine(cls, _bindingsForSubtype, javaType, NO_TYPES);
                        if (refine == null) {
                            refine = _fromClass(null, cls, _bindingsForSubtype);
                        }
                    }
                }
            }
            return refine.withHandlersFrom(javaType);
        }
        return javaType;
    }

    private TypeBindings _bindingsForSubtype(JavaType javaType, int i, Class<?> cls) {
        int containedTypeCount = javaType.containedTypeCount();
        if (containedTypeCount == i) {
            if (i == 1) {
                return TypeBindings.create(cls, javaType.mo474containedType(0));
            }
            if (i == 2) {
                return TypeBindings.create(cls, javaType.mo474containedType(0), javaType.mo474containedType(1));
            }
            ArrayList arrayList = new ArrayList(containedTypeCount);
            for (int i2 = 0; i2 < containedTypeCount; i2++) {
                arrayList.add(javaType.mo474containedType(i2));
            }
            return TypeBindings.create(cls, arrayList);
        }
        return TypeBindings.emptyBindings();
    }

    public JavaType constructGeneralizedType(JavaType javaType, Class<?> cls) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass != cls) {
            JavaType findSuperType = javaType.findSuperType(cls);
            if (findSuperType != null) {
                return findSuperType;
            }
            if (!cls.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException(String.format("Class %s not a super-type of %s", cls.getName(), javaType));
            }
            throw new IllegalArgumentException(String.format("Internal error: class %s not included as super-type for %s", cls.getName(), javaType));
        }
        return javaType;
    }

    public JavaType constructFromCanonical(String str) throws IllegalArgumentException {
        return this._parser.parse(str);
    }

    public JavaType[] findTypeParameters(JavaType javaType, Class<?> cls) {
        JavaType findSuperType = javaType.findSuperType(cls);
        return findSuperType == null ? NO_TYPES : findSuperType.getBindings().typeParameterArray();
    }

    @Deprecated
    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2, TypeBindings typeBindings) {
        return findTypeParameters(constructType(cls, typeBindings), cls2);
    }

    @Deprecated
    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2) {
        return findTypeParameters(constructType(cls), cls2);
    }

    public JavaType moreSpecificType(JavaType javaType, JavaType javaType2) {
        Class<?> rawClass;
        Class<?> rawClass2;
        return javaType == null ? javaType2 : (javaType2 == null || (rawClass = javaType.getRawClass()) == (rawClass2 = javaType2.getRawClass()) || !rawClass.isAssignableFrom(rawClass2)) ? javaType : javaType2;
    }

    public JavaType constructType(Type type) {
        return _fromAny(null, type, EMPTY_BINDINGS);
    }

    public JavaType constructType(Type type, TypeBindings typeBindings) {
        return _fromAny(null, type, typeBindings);
    }

    public JavaType constructType(TypeReference<?> typeReference) {
        return _fromAny(null, typeReference.getType(), EMPTY_BINDINGS);
    }

    @Deprecated
    public JavaType constructType(Type type, Class<?> cls) {
        return constructType(type, cls == null ? null : constructType(cls));
    }

    @Deprecated
    public JavaType constructType(Type type, JavaType javaType) {
        TypeBindings bindings;
        if (javaType == null) {
            bindings = TypeBindings.emptyBindings();
        } else {
            bindings = javaType.getBindings();
            if (type.getClass() != Class.class) {
                while (bindings.isEmpty() && (javaType = javaType.getSuperClass()) != null) {
                    bindings = javaType.getBindings();
                }
            }
        }
        return _fromAny(null, type, bindings);
    }

    public ArrayType constructArrayType(Class<?> cls) {
        return ArrayType.construct(_fromAny(null, cls, null), null);
    }

    public ArrayType constructArrayType(JavaType javaType) {
        return ArrayType.construct(javaType, null);
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, Class<?> cls2) {
        return constructCollectionType(cls, _fromClass(null, cls2, EMPTY_BINDINGS));
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, JavaType javaType) {
        return (CollectionType) _fromClass(null, cls, TypeBindings.create(cls, javaType));
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, Class<?> cls2) {
        return constructCollectionLikeType(cls, _fromClass(null, cls2, EMPTY_BINDINGS));
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, JavaType javaType) {
        JavaType _fromClass = _fromClass(null, cls, TypeBindings.createIfNeeded(cls, javaType));
        return _fromClass instanceof CollectionLikeType ? (CollectionLikeType) _fromClass : CollectionLikeType.upgradeFrom(_fromClass, javaType);
    }

    public MapType constructMapType(Class<? extends Map> cls, Class<?> cls2, Class<?> cls3) {
        JavaType _fromClass;
        JavaType _fromClass2;
        if (cls == Properties.class) {
            _fromClass2 = CORE_TYPE_STRING;
            _fromClass = _fromClass2;
        } else {
            _fromClass = _fromClass(null, cls2, EMPTY_BINDINGS);
            _fromClass2 = _fromClass(null, cls3, EMPTY_BINDINGS);
        }
        return constructMapType(cls, _fromClass, _fromClass2);
    }

    public MapType constructMapType(Class<? extends Map> cls, JavaType javaType, JavaType javaType2) {
        return (MapType) _fromClass(null, cls, TypeBindings.create(cls, new JavaType[]{javaType, javaType2}));
    }

    public MapLikeType constructMapLikeType(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        return constructMapLikeType(cls, _fromClass(null, cls2, EMPTY_BINDINGS), _fromClass(null, cls3, EMPTY_BINDINGS));
    }

    public MapLikeType constructMapLikeType(Class<?> cls, JavaType javaType, JavaType javaType2) {
        JavaType _fromClass = _fromClass(null, cls, TypeBindings.createIfNeeded(cls, new JavaType[]{javaType, javaType2}));
        return _fromClass instanceof MapLikeType ? (MapLikeType) _fromClass : MapLikeType.upgradeFrom(_fromClass, javaType, javaType2);
    }

    public JavaType constructSimpleType(Class<?> cls, JavaType[] javaTypeArr) {
        return _fromClass(null, cls, TypeBindings.create(cls, javaTypeArr));
    }

    @Deprecated
    public JavaType constructSimpleType(Class<?> cls, Class<?> cls2, JavaType[] javaTypeArr) {
        return constructSimpleType(cls, javaTypeArr);
    }

    public JavaType constructReferenceType(Class<?> cls, JavaType javaType) {
        return ReferenceType.construct(cls, null, null, null, javaType);
    }

    @Deprecated
    public JavaType uncheckedSimpleType(Class<?> cls) {
        return _constructSimple(cls, EMPTY_BINDINGS, null, null);
    }

    public JavaType constructParametricType(Class<?> cls, Class<?>... clsArr) {
        int length = clsArr.length;
        JavaType[] javaTypeArr = new JavaType[length];
        for (int i = 0; i < length; i++) {
            javaTypeArr[i] = _fromClass(null, clsArr[i], null);
        }
        return constructParametricType(cls, javaTypeArr);
    }

    public JavaType constructParametricType(Class<?> cls, JavaType... javaTypeArr) {
        return _fromClass(null, cls, TypeBindings.create(cls, javaTypeArr));
    }

    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, JavaType... javaTypeArr) {
        return constructParametricType(cls, javaTypeArr);
    }

    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, Class<?>... clsArr) {
        return constructParametricType(cls, clsArr);
    }

    public CollectionType constructRawCollectionType(Class<? extends Collection> cls) {
        return constructCollectionType(cls, unknownType());
    }

    public CollectionLikeType constructRawCollectionLikeType(Class<?> cls) {
        return constructCollectionLikeType(cls, unknownType());
    }

    public MapType constructRawMapType(Class<? extends Map> cls) {
        return constructMapType(cls, unknownType(), unknownType());
    }

    public MapLikeType constructRawMapLikeType(Class<?> cls) {
        return constructMapLikeType(cls, unknownType(), unknownType());
    }

    private JavaType _mapType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType javaType2;
        JavaType javaType3;
        if (cls == Properties.class) {
            javaType2 = CORE_TYPE_STRING;
            javaType3 = javaType2;
        } else {
            List<JavaType> typeParameters = typeBindings.getTypeParameters();
            switch (typeParameters.size()) {
                case 0:
                    javaType2 = _unknownType();
                    javaType3 = javaType2;
                    break;
                case 1:
                default:
                    throw new IllegalArgumentException("Strange Map type " + cls.getName() + ": can not determine type parameters");
                case 2:
                    javaType2 = typeParameters.get(1);
                    javaType3 = typeParameters.get(0);
                    break;
            }
        }
        return MapType.construct(cls, typeBindings, javaType, javaTypeArr, javaType3, javaType2);
    }

    private JavaType _collectionType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType javaType2;
        List<JavaType> typeParameters = typeBindings.getTypeParameters();
        if (typeParameters.isEmpty()) {
            javaType2 = _unknownType();
        } else if (typeParameters.size() == 1) {
            javaType2 = typeParameters.get(0);
        } else {
            throw new IllegalArgumentException("Strange Collection type " + cls.getName() + ": can not determine type parameters");
        }
        return CollectionType.construct(cls, typeBindings, javaType, javaTypeArr, javaType2);
    }

    private JavaType _referenceType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType javaType2;
        List<JavaType> typeParameters = typeBindings.getTypeParameters();
        if (typeParameters.isEmpty()) {
            javaType2 = _unknownType();
        } else if (typeParameters.size() == 1) {
            javaType2 = typeParameters.get(0);
        } else {
            throw new IllegalArgumentException("Strange Reference type " + cls.getName() + ": can not determine type parameters");
        }
        return ReferenceType.construct(cls, typeBindings, javaType, javaTypeArr, javaType2);
    }

    protected JavaType _constructSimple(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType _findWellKnownSimple;
        return (!typeBindings.isEmpty() || (_findWellKnownSimple = _findWellKnownSimple(cls)) == null) ? _newSimpleType(cls, typeBindings, javaType, javaTypeArr) : _findWellKnownSimple;
    }

    protected JavaType _newSimpleType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new SimpleType(cls, typeBindings, javaType, javaTypeArr);
    }

    protected JavaType _unknownType() {
        return CORE_TYPE_OBJECT;
    }

    protected JavaType _findWellKnownSimple(Class<?> cls) {
        if (cls.isPrimitive()) {
            if (cls == CLS_BOOL) {
                return CORE_TYPE_BOOL;
            }
            if (cls == CLS_INT) {
                return CORE_TYPE_INT;
            }
            if (cls == CLS_LONG) {
                return CORE_TYPE_LONG;
            }
        } else if (cls == CLS_STRING) {
            return CORE_TYPE_STRING;
        } else {
            if (cls == CLS_OBJECT) {
                return CORE_TYPE_OBJECT;
            }
        }
        return null;
    }

    protected JavaType _fromAny(ClassStack classStack, Type type, TypeBindings typeBindings) {
        JavaType _fromWildcard;
        if (type instanceof Class) {
            _fromWildcard = _fromClass(classStack, (Class) type, EMPTY_BINDINGS);
        } else if (type instanceof ParameterizedType) {
            _fromWildcard = _fromParamType(classStack, (ParameterizedType) type, typeBindings);
        } else if (type instanceof JavaType) {
            return (JavaType) type;
        } else {
            if (type instanceof GenericArrayType) {
                _fromWildcard = _fromArrayType(classStack, (GenericArrayType) type, typeBindings);
            } else if (type instanceof TypeVariable) {
                _fromWildcard = _fromVariable(classStack, (TypeVariable) type, typeBindings);
            } else if (type instanceof WildcardType) {
                _fromWildcard = _fromWildcard(classStack, (WildcardType) type, typeBindings);
            } else {
                throw new IllegalArgumentException("Unrecognized Type: " + (type == null ? "[null]" : type.toString()));
            }
        }
        if (this._modifiers != null) {
            TypeBindings bindings = _fromWildcard.getBindings();
            if (bindings == null) {
                bindings = EMPTY_BINDINGS;
            }
            TypeModifier[] typeModifierArr = this._modifiers;
            int length = typeModifierArr.length;
            int i = 0;
            while (i < length) {
                TypeModifier typeModifier = typeModifierArr[i];
                JavaType modifyType = typeModifier.modifyType(_fromWildcard, type, bindings, this);
                if (modifyType != null) {
                    i++;
                    _fromWildcard = modifyType;
                } else {
                    throw new IllegalStateException(String.format("TypeModifier %s (of type %s) return null for type %s", typeModifier, typeModifier.getClass().getName(), _fromWildcard));
                }
            }
        }
        return _fromWildcard;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType _fromClass(ClassStack classStack, Class<?> cls, TypeBindings typeBindings) {
        ClassStack child;
        JavaType _resolveSuperClass;
        JavaType[] _resolveSuperInterfaces;
        JavaType _findWellKnownSimple = _findWellKnownSimple(cls);
        if (_findWellKnownSimple == null) {
            Class<?> asKey = (typeBindings == null || typeBindings.isEmpty()) ? cls : typeBindings.asKey(cls);
            JavaType javaType = this._typeCache.get(asKey);
            if (javaType == null) {
                if (classStack == null) {
                    child = new ClassStack(cls);
                } else {
                    ClassStack find = classStack.find(cls);
                    if (find != null) {
                        ResolvedRecursiveType resolvedRecursiveType = new ResolvedRecursiveType(cls, EMPTY_BINDINGS);
                        find.addSelfReference(resolvedRecursiveType);
                        return resolvedRecursiveType;
                    }
                    child = classStack.child(cls);
                }
                if (cls.isArray()) {
                    javaType = ArrayType.construct(_fromAny(child, cls.getComponentType(), typeBindings), typeBindings);
                } else {
                    if (cls.isInterface()) {
                        _resolveSuperClass = null;
                        _resolveSuperInterfaces = _resolveSuperInterfaces(child, cls, typeBindings);
                    } else {
                        _resolveSuperClass = _resolveSuperClass(child, cls, typeBindings);
                        _resolveSuperInterfaces = _resolveSuperInterfaces(child, cls, typeBindings);
                    }
                    if (cls == Properties.class) {
                        javaType = MapType.construct(cls, typeBindings, _resolveSuperClass, _resolveSuperInterfaces, CORE_TYPE_STRING, CORE_TYPE_STRING);
                    } else if (_resolveSuperClass != null) {
                        javaType = _resolveSuperClass.refine(cls, typeBindings, _resolveSuperClass, _resolveSuperInterfaces);
                    }
                    if (javaType == null && (javaType = _fromWellKnownClass(child, cls, typeBindings, _resolveSuperClass, _resolveSuperInterfaces)) == null && (javaType = _fromWellKnownInterface(child, cls, typeBindings, _resolveSuperClass, _resolveSuperInterfaces)) == null) {
                        javaType = _newSimpleType(cls, typeBindings, _resolveSuperClass, _resolveSuperInterfaces);
                    }
                }
                child.resolveSelfReferences(javaType);
                if (!javaType.hasHandlers()) {
                    this._typeCache.putIfAbsent(asKey, javaType);
                    return javaType;
                }
                return javaType;
            }
            return javaType;
        }
        return _findWellKnownSimple;
    }

    protected JavaType _resolveSuperClass(ClassStack classStack, Class<?> cls, TypeBindings typeBindings) {
        Type genericSuperclass = ClassUtil.getGenericSuperclass(cls);
        if (genericSuperclass == null) {
            return null;
        }
        return _fromAny(classStack, genericSuperclass, typeBindings);
    }

    protected JavaType[] _resolveSuperInterfaces(ClassStack classStack, Class<?> cls, TypeBindings typeBindings) {
        Type[] genericInterfaces = ClassUtil.getGenericInterfaces(cls);
        if (genericInterfaces == null || genericInterfaces.length == 0) {
            return NO_TYPES;
        }
        int length = genericInterfaces.length;
        JavaType[] javaTypeArr = new JavaType[length];
        for (int i = 0; i < length; i++) {
            javaTypeArr[i] = _fromAny(classStack, genericInterfaces[i], typeBindings);
        }
        return javaTypeArr;
    }

    protected JavaType _fromWellKnownClass(ClassStack classStack, Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        if (typeBindings == null) {
            typeBindings = TypeBindings.emptyBindings();
        }
        if (cls == Map.class) {
            return _mapType(cls, typeBindings, javaType, javaTypeArr);
        }
        if (cls == Collection.class) {
            return _collectionType(cls, typeBindings, javaType, javaTypeArr);
        }
        if (cls == AtomicReference.class) {
            return _referenceType(cls, typeBindings, javaType, javaTypeArr);
        }
        return null;
    }

    protected JavaType _fromWellKnownInterface(ClassStack classStack, Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        for (JavaType javaType2 : javaTypeArr) {
            JavaType refine = javaType2.refine(cls, typeBindings, javaType, javaTypeArr);
            if (refine != null) {
                return refine;
            }
        }
        return null;
    }

    protected JavaType _fromParamType(ClassStack classStack, ParameterizedType parameterizedType, TypeBindings typeBindings) {
        TypeBindings create;
        Class<?> cls = (Class) parameterizedType.getRawType();
        if (cls == CLS_ENUM) {
            return CORE_TYPE_ENUM;
        }
        if (cls == CLS_COMPARABLE) {
            return CORE_TYPE_COMPARABLE;
        }
        if (cls == CLS_CLASS) {
            return CORE_TYPE_CLASS;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int length = actualTypeArguments == null ? 0 : actualTypeArguments.length;
        if (length == 0) {
            create = EMPTY_BINDINGS;
        } else {
            JavaType[] javaTypeArr = new JavaType[length];
            for (int i = 0; i < length; i++) {
                javaTypeArr[i] = _fromAny(classStack, actualTypeArguments[i], typeBindings);
            }
            create = TypeBindings.create(cls, javaTypeArr);
        }
        return _fromClass(classStack, cls, create);
    }

    protected JavaType _fromArrayType(ClassStack classStack, GenericArrayType genericArrayType, TypeBindings typeBindings) {
        return ArrayType.construct(_fromAny(classStack, genericArrayType.getGenericComponentType(), typeBindings), typeBindings);
    }

    protected JavaType _fromVariable(ClassStack classStack, TypeVariable<?> typeVariable, TypeBindings typeBindings) {
        String name = typeVariable.getName();
        JavaType findBoundType = typeBindings.findBoundType(name);
        if (findBoundType == null) {
            if (typeBindings.hasUnbound(name)) {
                return CORE_TYPE_OBJECT;
            }
            return _fromAny(classStack, typeVariable.getBounds()[0], typeBindings.withUnboundVariable(name));
        }
        return findBoundType;
    }

    protected JavaType _fromWildcard(ClassStack classStack, WildcardType wildcardType, TypeBindings typeBindings) {
        return _fromAny(classStack, wildcardType.getUpperBounds()[0], typeBindings);
    }
}
