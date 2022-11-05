package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes.dex */
public class BasicClassIntrospector extends ClassIntrospector implements Serializable {
    private static final long serialVersionUID = 1;
    protected final LRUMap<JavaType, BasicBeanDescription> _cachedFCA = new LRUMap<>(16, 64);
    protected static final BasicBeanDescription STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), AnnotatedClass.constructWithoutSuperTypes(String.class, null));
    protected static final BasicBeanDescription BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Boolean.TYPE), AnnotatedClass.constructWithoutSuperTypes(Boolean.TYPE, null));
    protected static final BasicBeanDescription INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Integer.TYPE), AnnotatedClass.constructWithoutSuperTypes(Integer.TYPE, null));
    protected static final BasicBeanDescription LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Long.TYPE), AnnotatedClass.constructWithoutSuperTypes(Long.TYPE, null));
    @Deprecated
    public static final BasicClassIntrospector instance = new BasicClassIntrospector();

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forClassAnnotations */
    public /* bridge */ /* synthetic */ BeanDescription mo336forClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return mo336forClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forDirectClassAnnotations */
    public /* bridge */ /* synthetic */ BeanDescription mo340forDirectClassAnnotations(MapperConfig mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        return mo340forDirectClassAnnotations((MapperConfig<?>) mapperConfig, javaType, mixInResolver);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forSerialization  reason: collision with other method in class */
    public BasicBeanDescription mo341forSerialization(SerializationConfig serializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc == null) {
            _findStdTypeDesc = _findStdJdkCollectionDesc(serializationConfig, javaType);
            if (_findStdTypeDesc == null) {
                _findStdTypeDesc = BasicBeanDescription.forSerialization(collectProperties(serializationConfig, javaType, mixInResolver, true, "set"));
            }
            this._cachedFCA.putIfAbsent(javaType, _findStdTypeDesc);
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forDeserialization  reason: collision with other method in class */
    public BasicBeanDescription mo338forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc == null) {
            _findStdTypeDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType);
            if (_findStdTypeDesc == null) {
                _findStdTypeDesc = BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false, "set"));
            }
            this._cachedFCA.putIfAbsent(javaType, _findStdTypeDesc);
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forDeserializationWithBuilder  reason: collision with other method in class */
    public BasicBeanDescription mo339forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription forDeserialization = BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(deserializationConfig, javaType, mixInResolver, false));
        this._cachedFCA.putIfAbsent(javaType, forDeserialization);
        return forDeserialization;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forCreation  reason: collision with other method in class */
    public BasicBeanDescription mo337forCreation(DeserializationConfig deserializationConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc == null) {
            BasicBeanDescription _findStdJdkCollectionDesc = _findStdJdkCollectionDesc(deserializationConfig, javaType);
            if (_findStdJdkCollectionDesc == null) {
                return BasicBeanDescription.forDeserialization(collectProperties(deserializationConfig, javaType, mixInResolver, false, "set"));
            }
            return _findStdJdkCollectionDesc;
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forClassAnnotations  reason: collision with other method in class */
    public BasicBeanDescription mo336forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc == null) {
            BasicBeanDescription basicBeanDescription = this._cachedFCA.get(javaType);
            if (basicBeanDescription == null) {
                BasicBeanDescription forOtherUse = BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.construct(javaType, mapperConfig, mixInResolver));
                this._cachedFCA.put(javaType, forOtherUse);
                return forOtherUse;
            }
            return basicBeanDescription;
        }
        return _findStdTypeDesc;
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector
    /* renamed from: forDirectClassAnnotations  reason: collision with other method in class */
    public BasicBeanDescription mo340forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver) {
        BasicBeanDescription _findStdTypeDesc = _findStdTypeDesc(javaType);
        if (_findStdTypeDesc == null) {
            return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.constructWithoutSuperTypes(javaType.getRawClass(), mapperConfig, mixInResolver));
        }
        return _findStdTypeDesc;
    }

    protected POJOPropertiesCollector collectProperties(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z, String str) {
        return constructPropertyCollector(mapperConfig, AnnotatedClass.construct(javaType, mapperConfig, mixInResolver), javaType, z, str);
    }

    protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> mapperConfig, JavaType javaType, ClassIntrospector.MixInResolver mixInResolver, boolean z) {
        JsonPOJOBuilder.Value value = null;
        AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
        AnnotatedClass construct = AnnotatedClass.construct(javaType, mapperConfig, mixInResolver);
        if (annotationIntrospector != null) {
            value = annotationIntrospector.findPOJOBuilderConfig(construct);
        }
        return constructPropertyCollector(mapperConfig, construct, javaType, z, value == null ? "with" : value.withPrefix);
    }

    protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType, boolean z, String str) {
        return new POJOPropertiesCollector(mapperConfig, z, javaType, annotatedClass, str);
    }

    protected BasicBeanDescription _findStdTypeDesc(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass.isPrimitive()) {
            if (rawClass == Boolean.TYPE) {
                return BOOLEAN_DESC;
            }
            if (rawClass == Integer.TYPE) {
                return INT_DESC;
            }
            if (rawClass == Long.TYPE) {
                return LONG_DESC;
            }
        } else if (rawClass == String.class) {
            return STRING_DESC;
        }
        return null;
    }

    protected boolean _isStdJDKCollection(JavaType javaType) {
        Class<?> rawClass;
        String packageName;
        if (!javaType.isContainerType() || javaType.isArrayType() || (packageName = ClassUtil.getPackageName((rawClass = javaType.getRawClass()))) == null) {
            return false;
        }
        if (!packageName.startsWith("java.lang") && !packageName.startsWith("java.util")) {
            return false;
        }
        return Collection.class.isAssignableFrom(rawClass) || Map.class.isAssignableFrom(rawClass);
    }

    protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> mapperConfig, JavaType javaType) {
        if (_isStdJDKCollection(javaType)) {
            return BasicBeanDescription.forOtherUse(mapperConfig, javaType, AnnotatedClass.construct(javaType, mapperConfig));
        }
        return null;
    }
}
