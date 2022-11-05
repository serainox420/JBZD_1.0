package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializable;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IndexedStringListSerializer;
import com.fasterxml.jackson.databind.ser.impl.IteratorSerializer;
import com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringArraySerializer;
import com.fasterxml.jackson.databind.ser.impl.StringCollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.BooleanSerializer;
import com.fasterxml.jackson.databind.ser.std.ByteBufferSerializer;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.CollectionSerializer;
import com.fasterxml.jackson.databind.ser.std.DateSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSerializer;
import com.fasterxml.jackson.databind.ser.std.EnumSetSerializer;
import com.fasterxml.jackson.databind.ser.std.InetAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.InetSocketAddressSerializer;
import com.fasterxml.jackson.databind.ser.std.IterableSerializer;
import com.fasterxml.jackson.databind.ser.std.JsonValueSerializer;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializer;
import com.fasterxml.jackson.databind.ser.std.NumberSerializers;
import com.fasterxml.jackson.databind.ser.std.ObjectArraySerializer;
import com.fasterxml.jackson.databind.ser.std.SerializableSerializer;
import com.fasterxml.jackson.databind.ser.std.StdArraySerializers;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.ser.std.StdJdkSerializers;
import com.fasterxml.jackson.databind.ser.std.StdKeySerializers;
import com.fasterxml.jackson.databind.ser.std.StringSerializer;
import com.fasterxml.jackson.databind.ser.std.TimeZoneSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.TimeZone;
/* loaded from: classes.dex */
public abstract class BasicSerializerFactory extends SerializerFactory implements Serializable {
    protected static final HashMap<String, JsonSerializer<?>> _concrete;
    protected static final HashMap<String, Class<? extends JsonSerializer<?>>> _concreteLazy;
    protected final SerializerFactoryConfig _factoryConfig;

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public abstract JsonSerializer<Object> createSerializer(SerializerProvider serializerProvider, JavaType javaType) throws JsonMappingException;

    protected abstract Iterable<Serializers> customSerializers();

    public abstract SerializerFactory withConfig(SerializerFactoryConfig serializerFactoryConfig);

    static {
        HashMap<String, Class<? extends JsonSerializer<?>>> hashMap = new HashMap<>();
        HashMap<String, JsonSerializer<?>> hashMap2 = new HashMap<>();
        hashMap2.put(String.class.getName(), new StringSerializer());
        ToStringSerializer toStringSerializer = ToStringSerializer.instance;
        hashMap2.put(StringBuffer.class.getName(), toStringSerializer);
        hashMap2.put(StringBuilder.class.getName(), toStringSerializer);
        hashMap2.put(Character.class.getName(), toStringSerializer);
        hashMap2.put(Character.TYPE.getName(), toStringSerializer);
        NumberSerializers.addAll(hashMap2);
        hashMap2.put(Boolean.TYPE.getName(), new BooleanSerializer(true));
        hashMap2.put(Boolean.class.getName(), new BooleanSerializer(false));
        hashMap2.put(BigInteger.class.getName(), new NumberSerializer(BigInteger.class));
        hashMap2.put(BigDecimal.class.getName(), new NumberSerializer(BigDecimal.class));
        hashMap2.put(Calendar.class.getName(), CalendarSerializer.instance);
        hashMap2.put(Date.class.getName(), DateSerializer.instance);
        for (Map.Entry<Class<?>, Object> entry : StdJdkSerializers.all()) {
            Object value = entry.getValue();
            if (value instanceof JsonSerializer) {
                hashMap2.put(entry.getKey().getName(), (JsonSerializer) value);
            } else if (value instanceof Class) {
                hashMap.put(entry.getKey().getName(), (Class) value);
            } else {
                throw new IllegalStateException("Internal error: unrecognized value of type " + entry.getClass().getName());
            }
        }
        hashMap.put(TokenBuffer.class.getName(), TokenBufferSerializer.class);
        _concrete = hashMap2;
        _concreteLazy = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicSerializerFactory(SerializerFactoryConfig serializerFactoryConfig) {
        this._factoryConfig = serializerFactoryConfig == null ? new SerializerFactoryConfig() : serializerFactoryConfig;
    }

    public SerializerFactoryConfig getFactoryConfig() {
        return this._factoryConfig;
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public final SerializerFactory withAdditionalSerializers(Serializers serializers) {
        return withConfig(this._factoryConfig.withAdditionalSerializers(serializers));
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public final SerializerFactory withAdditionalKeySerializers(Serializers serializers) {
        return withConfig(this._factoryConfig.withAdditionalKeySerializers(serializers));
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public final SerializerFactory withSerializerModifier(BeanSerializerModifier beanSerializerModifier) {
        return withConfig(this._factoryConfig.withSerializerModifier(beanSerializerModifier));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public JsonSerializer<Object> createKeySerializer(SerializationConfig serializationConfig, JavaType javaType, JsonSerializer<Object> jsonSerializer) {
        BeanDescription introspectClassAnnotations = serializationConfig.introspectClassAnnotations(javaType.getRawClass());
        JsonSerializer<?> jsonSerializer2 = null;
        if (this._factoryConfig.hasKeySerializers()) {
            Iterator<Serializers> it = this._factoryConfig.keySerializers().iterator();
            while (it.hasNext() && (jsonSerializer2 = it.next().findSerializer(serializationConfig, javaType, introspectClassAnnotations)) == null) {
            }
        }
        if (jsonSerializer2 != null) {
            jsonSerializer = jsonSerializer2;
        } else if (jsonSerializer == null && (jsonSerializer = StdKeySerializers.getStdKeySerializer(serializationConfig, javaType.getRawClass(), false)) == null) {
            BeanDescription introspect = serializationConfig.introspect(javaType);
            AnnotatedMethod findJsonValueMethod = introspect.findJsonValueMethod();
            if (findJsonValueMethod != null) {
                JsonSerializer<Object> stdKeySerializer = StdKeySerializers.getStdKeySerializer(serializationConfig, findJsonValueMethod.getRawReturnType(), true);
                Method mo354getAnnotated = findJsonValueMethod.mo354getAnnotated();
                if (serializationConfig.canOverrideAccessModifiers()) {
                    ClassUtil.checkAndFixAccess(mo354getAnnotated, serializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                }
                jsonSerializer = new JsonValueSerializer(findJsonValueMethod, stdKeySerializer);
                introspectClassAnnotations = introspect;
            } else {
                jsonSerializer = StdKeySerializers.getFallbackKeySerializer(serializationConfig, javaType.getRawClass());
                introspectClassAnnotations = introspect;
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            for (BeanSerializerModifier beanSerializerModifier : this._factoryConfig.serializerModifiers()) {
                jsonSerializer = beanSerializerModifier.modifyKeySerializer(serializationConfig, javaType, introspectClassAnnotations, jsonSerializer);
            }
        }
        return jsonSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.SerializerFactory
    public TypeSerializer createTypeSerializer(SerializationConfig serializationConfig, JavaType javaType) {
        Collection<NamedType> collectAndResolveSubtypesByClass;
        AnnotatedClass classInfo = serializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> findTypeResolver = serializationConfig.getAnnotationIntrospector().findTypeResolver(serializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = serializationConfig.getDefaultTyper(javaType);
            collectAndResolveSubtypesByClass = null;
        } else {
            collectAndResolveSubtypesByClass = serializationConfig.getSubtypeResolver().collectAndResolveSubtypesByClass(serializationConfig, classInfo);
        }
        if (findTypeResolver == null) {
            return null;
        }
        return findTypeResolver.buildTypeSerializer(serializationConfig, javaType, collectAndResolveSubtypesByClass);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<?> findSerializerByLookup(JavaType javaType, SerializationConfig serializationConfig, BeanDescription beanDescription, boolean z) {
        Class<? extends JsonSerializer<?>> cls;
        String name = javaType.getRawClass().getName();
        JsonSerializer<?> jsonSerializer = _concrete.get(name);
        if (jsonSerializer == null && (cls = _concreteLazy.get(name)) != null) {
            try {
                return cls.newInstance();
            } catch (Exception e) {
                throw new IllegalStateException("Failed to instantiate standard serializer (of type " + cls.getName() + "): " + e.getMessage(), e);
            }
        }
        return jsonSerializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<?> findSerializerByAnnotations(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        if (JsonSerializable.class.isAssignableFrom(javaType.getRawClass())) {
            return SerializableSerializer.instance;
        }
        AnnotatedMethod findJsonValueMethod = beanDescription.findJsonValueMethod();
        if (findJsonValueMethod != null) {
            Method mo354getAnnotated = findJsonValueMethod.mo354getAnnotated();
            if (serializerProvider.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(mo354getAnnotated, serializerProvider.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return new JsonValueSerializer(findJsonValueMethod, findSerializerFromAnnotation(serializerProvider, findJsonValueMethod));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<?> findSerializerByPrimaryType(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        JsonSerializer<?> findOptionalStdSerializer = findOptionalStdSerializer(serializerProvider, javaType, beanDescription, z);
        if (findOptionalStdSerializer == null) {
            if (Calendar.class.isAssignableFrom(rawClass)) {
                return CalendarSerializer.instance;
            }
            if (Date.class.isAssignableFrom(rawClass)) {
                return DateSerializer.instance;
            }
            if (Map.Entry.class.isAssignableFrom(rawClass)) {
                JavaType findSuperType = javaType.findSuperType(Map.Entry.class);
                return buildMapEntrySerializer(serializerProvider.mo255getConfig(), javaType, beanDescription, z, findSuperType.containedTypeOrUnknown(0), findSuperType.containedTypeOrUnknown(1));
            } else if (ByteBuffer.class.isAssignableFrom(rawClass)) {
                return new ByteBufferSerializer();
            } else {
                if (InetAddress.class.isAssignableFrom(rawClass)) {
                    return new InetAddressSerializer();
                }
                if (InetSocketAddress.class.isAssignableFrom(rawClass)) {
                    return new InetSocketAddressSerializer();
                }
                if (TimeZone.class.isAssignableFrom(rawClass)) {
                    return new TimeZoneSerializer();
                }
                if (Charset.class.isAssignableFrom(rawClass)) {
                    return ToStringSerializer.instance;
                }
                if (Number.class.isAssignableFrom(rawClass)) {
                    if (beanDescription.findExpectedFormat(null) != null) {
                        switch (r0.getShape()) {
                            case STRING:
                                return ToStringSerializer.instance;
                            case OBJECT:
                            case ARRAY:
                                return null;
                        }
                    }
                    return NumberSerializer.instance;
                } else if (!Enum.class.isAssignableFrom(rawClass)) {
                    return null;
                } else {
                    return buildEnumSerializer(serializerProvider.mo255getConfig(), javaType, beanDescription);
                }
            }
        }
        return findOptionalStdSerializer;
    }

    protected JsonSerializer<?> findOptionalStdSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findSerializer(serializerProvider.mo255getConfig(), javaType, beanDescription);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final JsonSerializer<?> findSerializerByAddonType(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (Iterator.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterator.class);
            return buildIteratorSerializer(serializationConfig, javaType, beanDescription, z, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]);
        } else if (Iterable.class.isAssignableFrom(rawClass)) {
            JavaType[] findTypeParameters2 = serializationConfig.getTypeFactory().findTypeParameters(javaType, Iterable.class);
            return buildIterableSerializer(serializationConfig, javaType, beanDescription, z, (findTypeParameters2 == null || findTypeParameters2.length != 1) ? TypeFactory.unknownType() : findTypeParameters2[0]);
        } else if (CharSequence.class.isAssignableFrom(rawClass)) {
            return ToStringSerializer.instance;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonSerializer<Object> findSerializerFromAnnotation(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializer = serializerProvider.getAnnotationIntrospector().findSerializer(annotated);
        if (findSerializer == null) {
            return null;
        }
        return findConvertingSerializer(serializerProvider, annotated, serializerProvider.serializerInstance(annotated, findSerializer));
    }

    protected JsonSerializer<?> findConvertingSerializer(SerializerProvider serializerProvider, Annotated annotated, JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        Converter<Object, Object> findConverter = findConverter(serializerProvider, annotated);
        return findConverter == null ? jsonSerializer : new StdDelegatingSerializer(findConverter, findConverter.getOutputType(serializerProvider.getTypeFactory()), jsonSerializer);
    }

    protected Converter<Object, Object> findConverter(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findSerializationConverter = serializerProvider.getAnnotationIntrospector().findSerializationConverter(annotated);
        if (findSerializationConverter == null) {
            return null;
        }
        return serializerProvider.converterInstance(annotated, findSerializationConverter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonSerializer<?> buildContainerSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanDescription beanDescription, boolean z) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer;
        SerializationConfig mo255getConfig = serializerProvider.mo255getConfig();
        if (!z && javaType.useStaticType() && (!javaType.isContainerType() || javaType.mo463getContentType().getRawClass() != Object.class)) {
            z = true;
        }
        TypeSerializer createTypeSerializer = createTypeSerializer(mo255getConfig, javaType.mo463getContentType());
        boolean z2 = createTypeSerializer != null ? false : z;
        JsonSerializer<Object> _findContentSerializer = _findContentSerializer(serializerProvider, beanDescription.getClassInfo());
        if (javaType.isMapLikeType()) {
            MapLikeType mapLikeType = (MapLikeType) javaType;
            JsonSerializer<Object> _findKeySerializer = _findKeySerializer(serializerProvider, beanDescription.getClassInfo());
            if (mapLikeType.isTrueMapType()) {
                return buildMapSerializer(serializerProvider, (MapType) mapLikeType, beanDescription, z2, _findKeySerializer, createTypeSerializer, _findContentSerializer);
            }
            JsonSerializer<?> jsonSerializer2 = null;
            MapLikeType mapLikeType2 = (MapLikeType) javaType;
            Iterator<Serializers> it = customSerializers().iterator();
            while (it.hasNext() && (jsonSerializer2 = it.next().findMapLikeSerializer(mo255getConfig, mapLikeType2, beanDescription, _findKeySerializer, createTypeSerializer, _findContentSerializer)) == null) {
            }
            if (jsonSerializer2 == null) {
                jsonSerializer2 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            if (jsonSerializer2 != null && this._factoryConfig.hasSerializerModifiers()) {
                Iterator<BeanSerializerModifier> it2 = this._factoryConfig.serializerModifiers().iterator();
                while (true) {
                    jsonSerializer = jsonSerializer2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    jsonSerializer2 = it2.next().modifyMapLikeSerializer(mo255getConfig, mapLikeType2, beanDescription, jsonSerializer);
                }
            } else {
                return jsonSerializer2;
            }
        } else if (javaType.isCollectionLikeType()) {
            CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
            if (collectionLikeType.isTrueCollectionType()) {
                return buildCollectionSerializer(serializerProvider, (CollectionType) collectionLikeType, beanDescription, z2, createTypeSerializer, _findContentSerializer);
            }
            JsonSerializer<?> jsonSerializer3 = null;
            CollectionLikeType collectionLikeType2 = (CollectionLikeType) javaType;
            Iterator<Serializers> it3 = customSerializers().iterator();
            while (it3.hasNext() && (jsonSerializer3 = it3.next().findCollectionLikeSerializer(mo255getConfig, collectionLikeType2, beanDescription, createTypeSerializer, _findContentSerializer)) == null) {
            }
            if (jsonSerializer3 == null) {
                jsonSerializer3 = findSerializerByAnnotations(serializerProvider, javaType, beanDescription);
            }
            if (jsonSerializer3 != null && this._factoryConfig.hasSerializerModifiers()) {
                Iterator<BeanSerializerModifier> it4 = this._factoryConfig.serializerModifiers().iterator();
                while (true) {
                    jsonSerializer = jsonSerializer3;
                    if (!it4.hasNext()) {
                        break;
                    }
                    jsonSerializer3 = it4.next().modifyCollectionLikeSerializer(mo255getConfig, collectionLikeType2, beanDescription, jsonSerializer);
                }
            } else {
                return jsonSerializer3;
            }
        } else if (javaType.isArrayType()) {
            return buildArraySerializer(serializerProvider, (ArrayType) javaType, beanDescription, z2, createTypeSerializer, _findContentSerializer);
        } else {
            return null;
        }
        return jsonSerializer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected JsonSerializer<?> buildCollectionSerializer(SerializerProvider serializerProvider, CollectionType collectionType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer2;
        JavaType javaType = null;
        SerializationConfig mo255getConfig = serializerProvider.mo255getConfig();
        Iterator<Serializers> it = customSerializers().iterator();
        JsonSerializer<?> jsonSerializer3 = null;
        while (it.hasNext() && (jsonSerializer3 = it.next().findCollectionSerializer(mo255getConfig, collectionType, beanDescription, typeSerializer, jsonSerializer)) == null) {
        }
        if (jsonSerializer3 == null && (jsonSerializer3 = findSerializerByAnnotations(serializerProvider, collectionType, beanDescription)) == null) {
            JsonFormat.Value findExpectedFormat = beanDescription.findExpectedFormat(null);
            if (findExpectedFormat != null && findExpectedFormat.getShape() == JsonFormat.Shape.OBJECT) {
                return null;
            }
            Class<?> rawClass = collectionType.getRawClass();
            if (EnumSet.class.isAssignableFrom(rawClass)) {
                JavaType contentType = collectionType.mo463getContentType();
                if (contentType.isEnumType()) {
                    javaType = contentType;
                }
                jsonSerializer3 = buildEnumSetSerializer(javaType);
            } else {
                Class<?> rawClass2 = collectionType.mo463getContentType().getRawClass();
                if (isIndexedList(rawClass)) {
                    if (rawClass2 == String.class) {
                        if (jsonSerializer == null || ClassUtil.isJacksonStdImpl(jsonSerializer)) {
                            jsonSerializer3 = IndexedStringListSerializer.instance;
                        }
                    } else {
                        jsonSerializer3 = buildIndexedListSerializer(collectionType.mo463getContentType(), z, typeSerializer, jsonSerializer);
                    }
                } else if (rawClass2 == String.class && (jsonSerializer == null || ClassUtil.isJacksonStdImpl(jsonSerializer))) {
                    jsonSerializer3 = StringCollectionSerializer.instance;
                }
                if (jsonSerializer3 == null) {
                    jsonSerializer3 = buildCollectionSerializer(collectionType.mo463getContentType(), z, typeSerializer, jsonSerializer);
                }
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it2 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                jsonSerializer2 = jsonSerializer3;
                if (!it2.hasNext()) {
                    break;
                }
                jsonSerializer3 = it2.next().modifyCollectionSerializer(mo255getConfig, collectionType, beanDescription, jsonSerializer2);
            }
        } else {
            jsonSerializer2 = jsonSerializer3;
        }
        return jsonSerializer2;
    }

    protected boolean isIndexedList(Class<?> cls) {
        return RandomAccess.class.isAssignableFrom(cls);
    }

    public ContainerSerializer<?> buildIndexedListSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new IndexedListSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    public ContainerSerializer<?> buildCollectionSerializer(JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        return new CollectionSerializer(javaType, z, typeSerializer, jsonSerializer);
    }

    public JsonSerializer<?> buildEnumSetSerializer(JavaType javaType) {
        return new EnumSetSerializer(javaType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.fasterxml.jackson.databind.ser.std.MapSerializer] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.fasterxml.jackson.databind.ser.std.MapSerializer] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.fasterxml.jackson.databind.JsonSerializer] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.fasterxml.jackson.databind.JsonSerializer] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.databind.type.MapType] */
    protected JsonSerializer<?> buildMapSerializer(SerializerProvider serializerProvider, MapType mapType, BeanDescription beanDescription, boolean z, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer2) throws JsonMappingException {
        SerializationConfig mo255getConfig = serializerProvider.mo255getConfig();
        ?? r0 = 0;
        for (Serializers serializers : customSerializers()) {
            r0 = serializers.findMapSerializer(mo255getConfig, mapType, beanDescription, jsonSerializer, typeSerializer, jsonSerializer2);
            r0 = r0;
            if (r0 != 0) {
                break;
            }
        }
        if (r0 == 0 && (r0 = findSerializerByAnnotations(serializerProvider, mapType, beanDescription)) == 0) {
            Object findFilterId = findFilterId(mo255getConfig, beanDescription);
            JsonIgnoreProperties.Value defaultPropertyIgnorals = mo255getConfig.getDefaultPropertyIgnorals(Map.class, beanDescription.getClassInfo());
            r0 = MapSerializer.construct(defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForSerialization(), (JavaType) mapType, z, typeSerializer, jsonSerializer, jsonSerializer2, findFilterId);
            Object findSuppressableContentValue = findSuppressableContentValue(mo255getConfig, mapType.mo463getContentType(), beanDescription);
            if (findSuppressableContentValue != null) {
                r0 = r0.withContentInclusion(findSuppressableContentValue);
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it = this._factoryConfig.serializerModifiers().iterator();
            JsonSerializer<?> jsonSerializer3 = r0;
            while (true) {
                JsonSerializer<?> jsonSerializer4 = jsonSerializer3;
                if (it.hasNext()) {
                    jsonSerializer3 = it.next().modifyMapSerializer(mo255getConfig, mapType, beanDescription, jsonSerializer4);
                } else {
                    return jsonSerializer4;
                }
            }
        } else {
            return r0;
        }
    }

    protected Object findSuppressableContentValue(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonInclude.Value findPropertyInclusion = beanDescription.findPropertyInclusion(serializationConfig.getDefaultPropertyInclusion());
        if (findPropertyInclusion == null) {
            return null;
        }
        JsonInclude.Include contentInclusion = findPropertyInclusion.getContentInclusion();
        switch (contentInclusion) {
            case USE_DEFAULTS:
                return null;
            case NON_DEFAULT:
            default:
                return contentInclusion;
        }
    }

    protected JsonSerializer<?> buildArraySerializer(SerializerProvider serializerProvider, ArrayType arrayType, BeanDescription beanDescription, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) throws JsonMappingException {
        SerializationConfig mo255getConfig = serializerProvider.mo255getConfig();
        JsonSerializer<?> jsonSerializer2 = null;
        Iterator<Serializers> it = customSerializers().iterator();
        while (it.hasNext() && (jsonSerializer2 = it.next().findArraySerializer(mo255getConfig, arrayType, beanDescription, typeSerializer, jsonSerializer)) == null) {
        }
        if (jsonSerializer2 == null) {
            Class<?> rawClass = arrayType.getRawClass();
            if (jsonSerializer == null || ClassUtil.isJacksonStdImpl(jsonSerializer)) {
                if (String[].class == rawClass) {
                    jsonSerializer2 = StringArraySerializer.instance;
                } else {
                    jsonSerializer2 = StdArraySerializers.findStandardImpl(rawClass);
                }
            }
            if (jsonSerializer2 == null) {
                jsonSerializer2 = new ObjectArraySerializer(arrayType.mo463getContentType(), z, typeSerializer, jsonSerializer);
            }
        }
        if (this._factoryConfig.hasSerializerModifiers()) {
            Iterator<BeanSerializerModifier> it2 = this._factoryConfig.serializerModifiers().iterator();
            while (true) {
                JsonSerializer<?> jsonSerializer3 = jsonSerializer2;
                if (it2.hasNext()) {
                    jsonSerializer2 = it2.next().modifyArraySerializer(mo255getConfig, arrayType, beanDescription, jsonSerializer3);
                } else {
                    return jsonSerializer3;
                }
            }
        } else {
            return jsonSerializer2;
        }
    }

    protected JsonSerializer<?> buildIteratorSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IteratorSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    protected JsonSerializer<?> buildIterableSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2) throws JsonMappingException {
        return new IterableSerializer(javaType2, z, createTypeSerializer(serializationConfig, javaType2));
    }

    protected JsonSerializer<?> buildMapEntrySerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription, boolean z, JavaType javaType2, JavaType javaType3) throws JsonMappingException {
        return new MapEntrySerializer(javaType3, javaType2, javaType3, z, createTypeSerializer(serializationConfig, javaType3), null);
    }

    protected JsonSerializer<?> buildEnumSerializer(SerializationConfig serializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonFormat.Value findExpectedFormat = beanDescription.findExpectedFormat(null);
        if (findExpectedFormat != null && findExpectedFormat.getShape() == JsonFormat.Shape.OBJECT) {
            ((BasicBeanDescription) beanDescription).removeProperty("declaringClass");
            return null;
        }
        JsonSerializer<?> construct = EnumSerializer.construct(javaType.getRawClass(), serializationConfig, beanDescription, findExpectedFormat);
        if (!this._factoryConfig.hasSerializerModifiers()) {
            return construct;
        }
        Iterator<BeanSerializerModifier> it = this._factoryConfig.serializerModifiers().iterator();
        while (true) {
            JsonSerializer<?> jsonSerializer = construct;
            if (it.hasNext()) {
                construct = it.next().modifyEnumSerializer(serializationConfig, javaType, beanDescription, jsonSerializer);
            } else {
                return jsonSerializer;
            }
        }
    }

    protected JsonSerializer<Object> _findKeySerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findKeySerializer = serializerProvider.getAnnotationIntrospector().findKeySerializer(annotated);
        if (findKeySerializer != null) {
            return serializerProvider.serializerInstance(annotated, findKeySerializer);
        }
        return null;
    }

    protected JsonSerializer<Object> _findContentSerializer(SerializerProvider serializerProvider, Annotated annotated) throws JsonMappingException {
        Object findContentSerializer = serializerProvider.getAnnotationIntrospector().findContentSerializer(annotated);
        if (findContentSerializer != null) {
            return serializerProvider.serializerInstance(annotated, findContentSerializer);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object findFilterId(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        return serializationConfig.getAnnotationIntrospector().findFilterId(beanDescription.getClassInfo());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean usesStaticTyping(SerializationConfig serializationConfig, BeanDescription beanDescription, TypeSerializer typeSerializer) {
        if (typeSerializer != null) {
            return false;
        }
        JsonSerialize.Typing findSerializationTyping = serializationConfig.getAnnotationIntrospector().findSerializationTyping(beanDescription.getClassInfo());
        if (findSerializationTyping == null || findSerializationTyping == JsonSerialize.Typing.DEFAULT_TYPING) {
            return serializationConfig.isEnabled(MapperFeature.USE_STATIC_TYPING);
        }
        return findSerializationTyping == JsonSerialize.Typing.STATIC;
    }

    protected Class<?> _verifyAsClass(Object obj, String str, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector." + str + "() returned value of type " + obj.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
        }
        Class<?> cls2 = (Class) obj;
        if (cls2 != cls && !ClassUtil.isBogusClass(cls2)) {
            return cls2;
        }
        return null;
    }
}
