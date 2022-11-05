package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Closeable;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class AnnotationIntrospector implements Versioned, Serializable {
    @Override // com.fasterxml.jackson.core.Versioned
    public abstract Version version();

    /* loaded from: classes.dex */
    public static class ReferenceProperty {
        private final String _name;
        private final Type _type;

        /* loaded from: classes.dex */
        public enum Type {
            MANAGED_REFERENCE,
            BACK_REFERENCE
        }

        public ReferenceProperty(Type type, String str) {
            this._type = type;
            this._name = str;
        }

        public static ReferenceProperty managed(String str) {
            return new ReferenceProperty(Type.MANAGED_REFERENCE, str);
        }

        public static ReferenceProperty back(String str) {
            return new ReferenceProperty(Type.BACK_REFERENCE, str);
        }

        public Type getType() {
            return this._type;
        }

        public String getName() {
            return this._name;
        }

        public boolean isManagedReference() {
            return this._type == Type.MANAGED_REFERENCE;
        }

        public boolean isBackReference() {
            return this._type == Type.BACK_REFERENCE;
        }
    }

    public static AnnotationIntrospector nopInstance() {
        return NopAnnotationIntrospector.instance;
    }

    public static AnnotationIntrospector pair(AnnotationIntrospector annotationIntrospector, AnnotationIntrospector annotationIntrospector2) {
        return new AnnotationIntrospectorPair(annotationIntrospector, annotationIntrospector2);
    }

    public Collection<AnnotationIntrospector> allIntrospectors() {
        return Collections.singletonList(this);
    }

    public Collection<AnnotationIntrospector> allIntrospectors(Collection<AnnotationIntrospector> collection) {
        collection.add(this);
        return collection;
    }

    public boolean isAnnotationBundle(Annotation annotation) {
        return false;
    }

    public ObjectIdInfo findObjectIdInfo(Annotated annotated) {
        return null;
    }

    public ObjectIdInfo findObjectReferenceInfo(Annotated annotated, ObjectIdInfo objectIdInfo) {
        return objectIdInfo;
    }

    public PropertyName findRootName(AnnotatedClass annotatedClass) {
        return null;
    }

    public JsonIgnoreProperties.Value findPropertyIgnorals(Annotated annotated) {
        JsonIgnoreProperties.Value forIgnoredProperties;
        String[] findPropertiesToIgnore = findPropertiesToIgnore(annotated, true);
        Boolean findIgnoreUnknownProperties = annotated instanceof AnnotatedClass ? findIgnoreUnknownProperties((AnnotatedClass) annotated) : null;
        if (findPropertiesToIgnore == null) {
            if (findIgnoreUnknownProperties == null) {
                return null;
            }
            forIgnoredProperties = JsonIgnoreProperties.Value.empty();
        } else {
            forIgnoredProperties = JsonIgnoreProperties.Value.forIgnoredProperties(findPropertiesToIgnore);
        }
        if (findIgnoreUnknownProperties != null) {
            return findIgnoreUnknownProperties.booleanValue() ? forIgnoredProperties.withIgnoreUnknown() : forIgnoredProperties.withoutIgnoreUnknown();
        }
        return forIgnoredProperties;
    }

    @Deprecated
    public String[] findPropertiesToIgnore(Annotated annotated, boolean z) {
        return null;
    }

    @Deprecated
    public String[] findPropertiesToIgnore(Annotated annotated) {
        return null;
    }

    @Deprecated
    public Boolean findIgnoreUnknownProperties(AnnotatedClass annotatedClass) {
        return null;
    }

    public Boolean isIgnorableType(AnnotatedClass annotatedClass) {
        return null;
    }

    public Object findFilterId(Annotated annotated) {
        return null;
    }

    public Object findNamingStrategy(AnnotatedClass annotatedClass) {
        return null;
    }

    public String findClassDescription(AnnotatedClass annotatedClass) {
        return null;
    }

    public VisibilityChecker<?> findAutoDetectVisibility(AnnotatedClass annotatedClass, VisibilityChecker<?> visibilityChecker) {
        return visibilityChecker;
    }

    public TypeResolverBuilder<?> findTypeResolver(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, JavaType javaType) {
        return null;
    }

    public TypeResolverBuilder<?> findPropertyTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        return null;
    }

    public TypeResolverBuilder<?> findPropertyContentTypeResolver(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, JavaType javaType) {
        return null;
    }

    public List<NamedType> findSubtypes(Annotated annotated) {
        return null;
    }

    public String findTypeName(AnnotatedClass annotatedClass) {
        return null;
    }

    public Boolean isTypeId(AnnotatedMember annotatedMember) {
        return null;
    }

    public ReferenceProperty findReferenceType(AnnotatedMember annotatedMember) {
        return null;
    }

    public NameTransformer findUnwrappingNameTransformer(AnnotatedMember annotatedMember) {
        return null;
    }

    public boolean hasIgnoreMarker(AnnotatedMember annotatedMember) {
        return false;
    }

    public Object findInjectableValueId(AnnotatedMember annotatedMember) {
        return null;
    }

    public Boolean hasRequiredMarker(AnnotatedMember annotatedMember) {
        return null;
    }

    public Class<?>[] findViews(Annotated annotated) {
        return null;
    }

    public JsonFormat.Value findFormat(Annotated annotated) {
        return null;
    }

    public PropertyName findWrapperName(Annotated annotated) {
        return null;
    }

    public String findPropertyDefaultValue(Annotated annotated) {
        return null;
    }

    public String findPropertyDescription(Annotated annotated) {
        return null;
    }

    public Integer findPropertyIndex(Annotated annotated) {
        return null;
    }

    public String findImplicitPropertyName(AnnotatedMember annotatedMember) {
        return null;
    }

    public JsonProperty.Access findPropertyAccess(Annotated annotated) {
        return null;
    }

    public AnnotatedMethod resolveSetterConflict(MapperConfig<?> mapperConfig, AnnotatedMethod annotatedMethod, AnnotatedMethod annotatedMethod2) {
        return null;
    }

    public Object findSerializer(Annotated annotated) {
        return null;
    }

    public Object findKeySerializer(Annotated annotated) {
        return null;
    }

    public Object findContentSerializer(Annotated annotated) {
        return null;
    }

    public Object findNullSerializer(Annotated annotated) {
        return null;
    }

    public JsonSerialize.Typing findSerializationTyping(Annotated annotated) {
        return null;
    }

    public Object findSerializationConverter(Annotated annotated) {
        return null;
    }

    public Object findSerializationContentConverter(AnnotatedMember annotatedMember) {
        return null;
    }

    @Deprecated
    public JsonInclude.Include findSerializationInclusion(Annotated annotated, JsonInclude.Include include) {
        return include;
    }

    @Deprecated
    public JsonInclude.Include findSerializationInclusionForContent(Annotated annotated, JsonInclude.Include include) {
        return include;
    }

    public JsonInclude.Value findPropertyInclusion(Annotated annotated) {
        return JsonInclude.Value.empty();
    }

    @Deprecated
    public Class<?> findSerializationType(Annotated annotated) {
        return null;
    }

    @Deprecated
    public Class<?> findSerializationKeyType(Annotated annotated, JavaType javaType) {
        return null;
    }

    @Deprecated
    public Class<?> findSerializationContentType(Annotated annotated, JavaType javaType) {
        return null;
    }

    public JavaType refineSerializationType(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) throws JsonMappingException {
        MapLikeType mapLikeType;
        Class<?> findSerializationContentType;
        JavaType constructSpecializedType;
        JavaType mo449getKeyType;
        Class<?> findSerializationKeyType;
        JavaType constructSpecializedType2;
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        Class<?> findSerializationType = findSerializationType(annotated);
        if (findSerializationType == null) {
            mapLikeType = javaType;
        } else if (javaType.hasRawClass(findSerializationType)) {
            mapLikeType = javaType.mo471withStaticTyping();
        } else {
            Class<?> rawClass = javaType.getRawClass();
            try {
                if (findSerializationType.isAssignableFrom(rawClass)) {
                    mapLikeType = typeFactory.constructGeneralizedType(javaType, findSerializationType);
                } else if (rawClass.isAssignableFrom(findSerializationType)) {
                    mapLikeType = typeFactory.constructSpecializedType(javaType, findSerializationType);
                } else {
                    throw new JsonMappingException((Closeable) null, String.format("Can not refine serialization type %s into %s; types not related", javaType, findSerializationType.getName()));
                }
            } catch (IllegalArgumentException e) {
                throw new JsonMappingException((Closeable) null, String.format("Failed to widen type %s with annotation (value %s), from '%s': %s", javaType, findSerializationType.getName(), annotated.getName(), e.getMessage()), e);
            }
        }
        if (mapLikeType.isMapLikeType() && (findSerializationKeyType = findSerializationKeyType(annotated, (mo449getKeyType = mapLikeType.mo449getKeyType()))) != null) {
            if (mo449getKeyType.hasRawClass(findSerializationKeyType)) {
                constructSpecializedType2 = mo449getKeyType.mo471withStaticTyping();
            } else {
                Class<?> rawClass2 = mo449getKeyType.getRawClass();
                try {
                    if (findSerializationKeyType.isAssignableFrom(rawClass2)) {
                        constructSpecializedType2 = typeFactory.constructGeneralizedType(mo449getKeyType, findSerializationKeyType);
                    } else if (rawClass2.isAssignableFrom(findSerializationKeyType)) {
                        constructSpecializedType2 = typeFactory.constructSpecializedType(mo449getKeyType, findSerializationKeyType);
                    } else {
                        throw new JsonMappingException((Closeable) null, String.format("Can not refine serialization key type %s into %s; types not related", mo449getKeyType, findSerializationKeyType.getName()));
                    }
                } catch (IllegalArgumentException e2) {
                    throw new JsonMappingException((Closeable) null, String.format("Failed to widen key type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, findSerializationKeyType.getName(), annotated.getName(), e2.getMessage()), e2);
                }
            }
            mapLikeType = ((MapLikeType) mapLikeType).mo457withKeyType(constructSpecializedType2);
        }
        JavaType mo463getContentType = mapLikeType.mo463getContentType();
        if (mo463getContentType != null && (findSerializationContentType = findSerializationContentType(annotated, mo463getContentType)) != null) {
            if (mo463getContentType.hasRawClass(findSerializationContentType)) {
                constructSpecializedType = mo463getContentType.mo471withStaticTyping();
            } else {
                Class<?> rawClass3 = mo463getContentType.getRawClass();
                try {
                    if (findSerializationContentType.isAssignableFrom(rawClass3)) {
                        constructSpecializedType = typeFactory.constructGeneralizedType(mo463getContentType, findSerializationContentType);
                    } else if (rawClass3.isAssignableFrom(findSerializationContentType)) {
                        constructSpecializedType = typeFactory.constructSpecializedType(mo463getContentType, findSerializationContentType);
                    } else {
                        throw new JsonMappingException((Closeable) null, String.format("Can not refine serialization content type %s into %s; types not related", mo463getContentType, findSerializationContentType.getName()));
                    }
                } catch (IllegalArgumentException e3) {
                    throw new JsonMappingException((Closeable) null, String.format("Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, findSerializationContentType.getName(), annotated.getName(), e3.getMessage()), e3);
                }
            }
            return mapLikeType.withContentType(constructSpecializedType);
        }
        return mapLikeType;
    }

    public String[] findSerializationPropertyOrder(AnnotatedClass annotatedClass) {
        return null;
    }

    public Boolean findSerializationSortAlphabetically(Annotated annotated) {
        return null;
    }

    public void findAndAddVirtualProperties(MapperConfig<?> mapperConfig, AnnotatedClass annotatedClass, List<BeanPropertyWriter> list) {
    }

    public PropertyName findNameForSerialization(Annotated annotated) {
        return null;
    }

    public boolean hasAsValueAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    @Deprecated
    public String findEnumValue(Enum<?> r2) {
        return r2.name();
    }

    public String[] findEnumValues(Class<?> cls, Enum<?>[] enumArr, String[] strArr) {
        int length = enumArr.length;
        for (int i = 0; i < length; i++) {
            if (strArr[i] == null) {
                strArr[i] = findEnumValue(enumArr[i]);
            }
        }
        return strArr;
    }

    public Enum<?> findDefaultEnumValue(Class<Enum<?>> cls) {
        return null;
    }

    public Object findDeserializer(Annotated annotated) {
        return null;
    }

    public Object findKeyDeserializer(Annotated annotated) {
        return null;
    }

    public Object findContentDeserializer(Annotated annotated) {
        return null;
    }

    public Object findDeserializationConverter(Annotated annotated) {
        return null;
    }

    public Object findDeserializationContentConverter(AnnotatedMember annotatedMember) {
        return null;
    }

    public JavaType refineDeserializationType(MapperConfig<?> mapperConfig, Annotated annotated, JavaType javaType) throws JsonMappingException {
        MapLikeType mapLikeType;
        Class<?> findDeserializationContentType;
        JavaType mo449getKeyType;
        Class<?> findDeserializationKeyType;
        TypeFactory typeFactory = mapperConfig.getTypeFactory();
        Class<?> findDeserializationType = findDeserializationType(annotated, javaType);
        if (findDeserializationType == null || javaType.hasRawClass(findDeserializationType)) {
            mapLikeType = javaType;
        } else {
            try {
                mapLikeType = typeFactory.constructSpecializedType(javaType, findDeserializationType);
            } catch (IllegalArgumentException e) {
                throw new JsonMappingException((Closeable) null, String.format("Failed to narrow type %s with annotation (value %s), from '%s': %s", javaType, findDeserializationType.getName(), annotated.getName(), e.getMessage()), e);
            }
        }
        if (mapLikeType.isMapLikeType() && (findDeserializationKeyType = findDeserializationKeyType(annotated, (mo449getKeyType = mapLikeType.mo449getKeyType()))) != null) {
            try {
                mapLikeType = ((MapLikeType) mapLikeType).mo457withKeyType(typeFactory.constructSpecializedType(mo449getKeyType, findDeserializationKeyType));
            } catch (IllegalArgumentException e2) {
                throw new JsonMappingException((Closeable) null, String.format("Failed to narrow key type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, findDeserializationKeyType.getName(), annotated.getName(), e2.getMessage()), e2);
            }
        }
        JavaType mo463getContentType = mapLikeType.mo463getContentType();
        if (mo463getContentType != null && (findDeserializationContentType = findDeserializationContentType(annotated, mo463getContentType)) != null) {
            try {
                return mapLikeType.withContentType(typeFactory.constructSpecializedType(mo463getContentType, findDeserializationContentType));
            } catch (IllegalArgumentException e3) {
                throw new JsonMappingException((Closeable) null, String.format("Failed to narrow value type of %s with concrete-type annotation (value %s), from '%s': %s", mapLikeType, findDeserializationContentType.getName(), annotated.getName(), e3.getMessage()), e3);
            }
        }
        return mapLikeType;
    }

    @Deprecated
    public Class<?> findDeserializationType(Annotated annotated, JavaType javaType) {
        return null;
    }

    @Deprecated
    public Class<?> findDeserializationKeyType(Annotated annotated, JavaType javaType) {
        return null;
    }

    @Deprecated
    public Class<?> findDeserializationContentType(Annotated annotated, JavaType javaType) {
        return null;
    }

    public Object findValueInstantiator(AnnotatedClass annotatedClass) {
        return null;
    }

    public Class<?> findPOJOBuilder(AnnotatedClass annotatedClass) {
        return null;
    }

    public JsonPOJOBuilder.Value findPOJOBuilderConfig(AnnotatedClass annotatedClass) {
        return null;
    }

    public PropertyName findNameForDeserialization(Annotated annotated) {
        return null;
    }

    public boolean hasAnySetterAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public boolean hasAnyGetterAnnotation(AnnotatedMethod annotatedMethod) {
        return false;
    }

    public boolean hasCreatorAnnotation(Annotated annotated) {
        return false;
    }

    public JsonCreator.Mode findCreatorBinding(Annotated annotated) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <A extends Annotation> A _findAnnotation(Annotated annotated, Class<A> cls) {
        return (A) annotated.getAnnotation(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean _hasAnnotation(Annotated annotated, Class<? extends Annotation> cls) {
        return annotated.hasAnnotation(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean _hasOneOf(Annotated annotated, Class<? extends Annotation>[] clsArr) {
        return annotated.hasOneOf(clsArr);
    }
}
