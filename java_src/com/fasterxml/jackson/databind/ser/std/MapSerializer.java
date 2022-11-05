package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonMapFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
@JacksonStdImpl
/* loaded from: classes.dex */
public class MapSerializer extends ContainerSerializer<Map<?, ?>> implements ContextualSerializer {
    protected static final JavaType UNSPECIFIED_TYPE = TypeFactory.unknownType();
    private static final long serialVersionUID = 1;
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final Object _filterId;
    protected final Set<String> _ignoredEntries;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected final boolean _sortKeys;
    protected final Object _suppressableValue;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;

    protected MapSerializer(Set<String> set, JavaType javaType, JavaType javaType2, boolean z, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        super(Map.class, false);
        this._ignoredEntries = (set == null || set.isEmpty()) ? null : set;
        this._keyType = javaType;
        this._valueType = javaType2;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
        this._property = null;
        this._filterId = null;
        this._sortKeys = false;
        this._suppressableValue = null;
    }

    protected void _ensureOverride() {
        if (getClass() != MapSerializer.class) {
            throw new IllegalStateException("Missing override in class " + getClass().getName());
        }
    }

    protected MapSerializer(MapSerializer mapSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Set<String> set) {
        super(Map.class, false);
        this._ignoredEntries = (set == null || set.isEmpty()) ? null : set;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = beanProperty;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    @Deprecated
    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer) {
        this(mapSerializer, typeSerializer, mapSerializer._suppressableValue);
    }

    protected MapSerializer(MapSerializer mapSerializer, TypeSerializer typeSerializer, Object obj) {
        super(Map.class, false);
        Object obj2;
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = typeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = mapSerializer._filterId;
        this._sortKeys = mapSerializer._sortKeys;
        if (obj == JsonInclude.Include.NON_ABSENT) {
            obj2 = this._valueType.isReferenceType() ? JsonInclude.Include.NON_EMPTY : JsonInclude.Include.NON_NULL;
        } else {
            obj2 = obj;
        }
        this._suppressableValue = obj2;
    }

    protected MapSerializer(MapSerializer mapSerializer, Object obj, boolean z) {
        super(Map.class, false);
        this._ignoredEntries = mapSerializer._ignoredEntries;
        this._keyType = mapSerializer._keyType;
        this._valueType = mapSerializer._valueType;
        this._valueTypeIsStatic = mapSerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapSerializer._valueTypeSerializer;
        this._keySerializer = mapSerializer._keySerializer;
        this._valueSerializer = mapSerializer._valueSerializer;
        this._dynamicValueSerializers = mapSerializer._dynamicValueSerializers;
        this._property = mapSerializer._property;
        this._filterId = obj;
        this._sortKeys = z;
        this._suppressableValue = mapSerializer._suppressableValue;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    /* renamed from: _withValueTypeSerializer  reason: collision with other method in class */
    public MapSerializer mo429_withValueTypeSerializer(TypeSerializer typeSerializer) {
        if (this._valueTypeSerializer != typeSerializer) {
            _ensureOverride();
            return new MapSerializer(this, typeSerializer, (Object) null);
        }
        return this;
    }

    public MapSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2, Set<String> set, boolean z) {
        _ensureOverride();
        MapSerializer mapSerializer = new MapSerializer(this, beanProperty, jsonSerializer, jsonSerializer2, set);
        if (z != mapSerializer._sortKeys) {
            return new MapSerializer(mapSerializer, this._filterId, z);
        }
        return mapSerializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    /* renamed from: withFilterId  reason: collision with other method in class */
    public MapSerializer mo430withFilterId(Object obj) {
        if (this._filterId != obj) {
            _ensureOverride();
            return new MapSerializer(this, obj, this._sortKeys);
        }
        return this;
    }

    public MapSerializer withContentInclusion(Object obj) {
        if (obj != this._suppressableValue) {
            _ensureOverride();
            return new MapSerializer(this, this._valueTypeSerializer, obj);
        }
        return this;
    }

    @Deprecated
    public static MapSerializer construct(String[] strArr, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        return construct((strArr == null || strArr.length == 0) ? null : ArrayBuilders.arrayToSet(strArr), javaType, z, typeSerializer, jsonSerializer, jsonSerializer2, obj);
    }

    public static MapSerializer construct(Set<String> set, JavaType javaType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2, Object obj) {
        JavaType mo449getKeyType;
        JavaType mo463getContentType;
        boolean z2;
        boolean z3 = false;
        if (javaType == null) {
            mo463getContentType = UNSPECIFIED_TYPE;
            mo449getKeyType = mo463getContentType;
        } else {
            mo449getKeyType = javaType.mo449getKeyType();
            mo463getContentType = javaType.mo463getContentType();
        }
        if (!z) {
            if (mo463getContentType != null && mo463getContentType.isFinal()) {
                z3 = true;
            }
            z2 = z3;
        } else {
            z2 = mo463getContentType.getRawClass() == Object.class ? false : z;
        }
        MapSerializer mapSerializer = new MapSerializer(set, mo449getKeyType, mo463getContentType, z2, typeSerializer, jsonSerializer, jsonSerializer2);
        if (obj != null) {
            return mapSerializer.mo430withFilterId(obj);
        }
        return mapSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer;
        JsonSerializer<?> handleSecondaryContextualization;
        AnnotatedMember member;
        Object findFilterId;
        Boolean feature;
        Set<String> findIgnoredForSerialization;
        boolean z = false;
        JsonSerializer<Object> jsonSerializer2 = null;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        AnnotatedMember member2 = beanProperty == null ? null : beanProperty.getMember();
        Object obj = this._suppressableValue;
        if (member2 == null || annotationIntrospector == null) {
            jsonSerializer = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member2);
            jsonSerializer = findKeySerializer != null ? serializerProvider.serializerInstance(member2, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member2);
            if (findContentSerializer != null) {
                jsonSerializer2 = serializerProvider.serializerInstance(member2, findContentSerializer);
            }
        }
        Object contentInclusion = findIncludeOverrides(serializerProvider, beanProperty, Map.class).getContentInclusion();
        Object obj2 = (contentInclusion == null || contentInclusion == JsonInclude.Include.USE_DEFAULTS) ? obj : contentInclusion;
        if (jsonSerializer2 == null) {
            jsonSerializer2 = this._valueSerializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer2);
        if (findConvertingContentSerializer == null) {
            if (this._valueTypeIsStatic && !this._valueType.isJavaLangObject()) {
                findConvertingContentSerializer = serializerProvider.findValueSerializer(this._valueType, beanProperty);
            }
        } else {
            findConvertingContentSerializer = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        }
        if (jsonSerializer == null) {
            jsonSerializer = this._keySerializer;
        }
        if (jsonSerializer == null) {
            handleSecondaryContextualization = serializerProvider.findKeySerializer(this._keyType, beanProperty);
        } else {
            handleSecondaryContextualization = serializerProvider.handleSecondaryContextualization(jsonSerializer, beanProperty);
        }
        HashSet hashSet = this._ignoredEntries;
        if (annotationIntrospector != null && member2 != null) {
            JsonIgnoreProperties.Value findPropertyIgnorals = annotationIntrospector.findPropertyIgnorals(member2);
            if (findPropertyIgnorals != null && (findIgnoredForSerialization = findPropertyIgnorals.findIgnoredForSerialization()) != null && !findIgnoredForSerialization.isEmpty()) {
                hashSet = hashSet == null ? new HashSet() : new HashSet(hashSet);
                for (String str : findIgnoredForSerialization) {
                    hashSet.add(str);
                }
            }
            Boolean findSerializationSortAlphabetically = annotationIntrospector.findSerializationSortAlphabetically(member2);
            z = findSerializationSortAlphabetically != null && findSerializationSortAlphabetically.booleanValue();
        }
        JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, Map.class);
        if (findFormatOverrides != null && (feature = findFormatOverrides.getFeature(JsonFormat.Feature.WRITE_SORTED_MAP_ENTRIES)) != null) {
            z = feature.booleanValue();
        }
        MapSerializer withResolved = withResolved(beanProperty, handleSecondaryContextualization, findConvertingContentSerializer, hashSet, z);
        if (obj2 != this._suppressableValue) {
            withResolved = withResolved.withContentInclusion(obj2);
        }
        if (beanProperty != null && (member = beanProperty.getMember()) != null && (findFilterId = annotationIntrospector.findFilterId(member)) != null) {
            return withResolved.mo430withFilterId(findFilterId);
        }
        return withResolved;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._valueType;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Map<?, ?> map) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        Object obj = this._suppressableValue;
        if (obj == null || obj == JsonInclude.Include.ALWAYS) {
            return false;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            for (Object obj2 : map.values()) {
                if (obj2 != null && !jsonSerializer.isEmpty(serializerProvider, obj2)) {
                    return false;
                }
            }
            return true;
        }
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        for (Object obj3 : map.values()) {
            if (obj3 != null) {
                Class<?> cls = obj3.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
                if (serializerFor == null) {
                    try {
                        serializerFor = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
                        propertySerializerMap = this._dynamicValueSerializers;
                    } catch (JsonMappingException e) {
                        return false;
                    }
                }
                if (!serializerFor.isEmpty(serializerProvider, obj3)) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Map<?, ?> map) {
        return map.size() == 1;
    }

    public JsonSerializer<?> getKeySerializer() {
        return this._keySerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        PropertyFilter findPropertyFilter;
        jsonGenerator.writeStartObject(map);
        if (!map.isEmpty()) {
            Object obj = this._suppressableValue;
            if (obj == JsonInclude.Include.ALWAYS) {
                obj = null;
            } else if (obj == null && !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
                obj = JsonInclude.Include.NON_NULL;
            }
            Map<?, ?> _orderEntries = (this._sortKeys || serializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS)) ? _orderEntries(map, jsonGenerator, serializerProvider, obj) : map;
            if (this._filterId != null && (findPropertyFilter = findPropertyFilter(serializerProvider, this._filterId, _orderEntries)) != null) {
                serializeFilteredFields(_orderEntries, jsonGenerator, serializerProvider, findPropertyFilter, obj);
            } else if (obj != null) {
                serializeOptionalFields(_orderEntries, jsonGenerator, serializerProvider, obj);
            } else if (this._valueSerializer != null) {
                serializeFieldsUsing(_orderEntries, jsonGenerator, serializerProvider, this._valueSerializer);
            } else {
                serializeFields(_orderEntries, jsonGenerator, serializerProvider);
            }
        }
        jsonGenerator.writeEndObject();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Map<?, ?> map2;
        PropertyFilter findPropertyFilter;
        typeSerializer.writeTypePrefixForObject(map, jsonGenerator);
        jsonGenerator.setCurrentValue(map);
        if (!map.isEmpty()) {
            Object obj = this._suppressableValue;
            if (obj == JsonInclude.Include.ALWAYS) {
                obj = null;
            } else if (obj == null && !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
                obj = JsonInclude.Include.NON_NULL;
            }
            map2 = (this._sortKeys || serializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS)) ? _orderEntries(map, jsonGenerator, serializerProvider, obj) : map;
            if (this._filterId != null && (findPropertyFilter = findPropertyFilter(serializerProvider, this._filterId, map2)) != null) {
                serializeFilteredFields(map2, jsonGenerator, serializerProvider, findPropertyFilter, obj);
            } else if (obj != null) {
                serializeOptionalFields(map2, jsonGenerator, serializerProvider, obj);
            } else if (this._valueSerializer != null) {
                serializeFieldsUsing(map2, jsonGenerator, serializerProvider, this._valueSerializer);
            } else {
                serializeFields(map2, jsonGenerator, serializerProvider);
            }
        } else {
            map2 = map;
        }
        typeSerializer.writeTypeSuffixForObject(map2, jsonGenerator);
    }

    public void serializeFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> jsonSerializer;
        Class<?> cls;
        JsonSerializer<Object> _findAndAddDynamic;
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, null);
            return;
        }
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        Set<String> set = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap2 = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object value = entry.getValue();
            Object key = entry.getKey();
            if (key == null) {
                serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
            } else if (set == null || !set.contains(key)) {
                jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
            }
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
            } else {
                JsonSerializer<Object> jsonSerializer3 = this._valueSerializer;
                if (jsonSerializer3 == null && (jsonSerializer3 = propertySerializerMap3.serializerFor((cls = value.getClass()))) == null) {
                    if (this._valueType.hasGenericTypes()) {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
                    } else {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, cls, serializerProvider);
                    }
                    JsonSerializer<Object> jsonSerializer4 = _findAndAddDynamic;
                    propertySerializerMap = this._dynamicValueSerializers;
                    jsonSerializer = jsonSerializer4;
                } else {
                    JsonSerializer<Object> jsonSerializer5 = jsonSerializer3;
                    propertySerializerMap = propertySerializerMap3;
                    jsonSerializer = jsonSerializer5;
                }
                try {
                    jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                } catch (Exception e) {
                    wrapAndThrow(serializerProvider, e, map, "" + key);
                }
                propertySerializerMap3 = propertySerializerMap;
            }
        }
    }

    public void serializeOptionalFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        JsonSerializer<Object> findNullKeySerializer;
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> defaultNullValueSerializer;
        Class<?> cls;
        JsonSerializer<Object> _findAndAddDynamic;
        if (this._valueTypeSerializer != null) {
            serializeTypedFields(map, jsonGenerator, serializerProvider, obj);
            return;
        }
        Set<String> set = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap2 = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (set == null || !set.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value == null) {
                if (obj == null) {
                    propertySerializerMap = propertySerializerMap3;
                    defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                    try {
                        findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                        defaultNullValueSerializer.serialize(value, jsonGenerator, serializerProvider);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, map, "" + key);
                    }
                    propertySerializerMap3 = propertySerializerMap;
                }
            } else {
                JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                if (jsonSerializer == null && (jsonSerializer = propertySerializerMap3.serializerFor((cls = value.getClass()))) == null) {
                    if (this._valueType.hasGenericTypes()) {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
                    } else {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, cls, serializerProvider);
                    }
                    JsonSerializer<Object> jsonSerializer2 = _findAndAddDynamic;
                    propertySerializerMap = this._dynamicValueSerializers;
                    defaultNullValueSerializer = jsonSerializer2;
                } else {
                    JsonSerializer<Object> jsonSerializer3 = jsonSerializer;
                    propertySerializerMap = propertySerializerMap3;
                    defaultNullValueSerializer = jsonSerializer3;
                }
                if (obj == JsonInclude.Include.NON_EMPTY && defaultNullValueSerializer.isEmpty(serializerProvider, value)) {
                    propertySerializerMap3 = propertySerializerMap;
                }
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                defaultNullValueSerializer.serialize(value, jsonGenerator, serializerProvider);
                propertySerializerMap3 = propertySerializerMap;
            }
        }
    }

    public void serializeFieldsUsing(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException {
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        Set<String> set = this._ignoredEntries;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (set == null || !set.contains(key)) {
                if (key == null) {
                    serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
                } else {
                    jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
                }
                Object value = entry.getValue();
                if (value == null) {
                    serializerProvider.defaultSerializeNull(jsonGenerator);
                } else if (typeSerializer == null) {
                    try {
                        jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, map, "" + key);
                    }
                } else {
                    jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
                }
            }
        }
    }

    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter, Object obj) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> defaultNullValueSerializer;
        Class<?> cls;
        JsonSerializer<Object> _findAndAddDynamic;
        Set<String> set = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap2 = this._dynamicValueSerializers;
        MapProperty mapProperty = new MapProperty(this._valueTypeSerializer, this._property);
        PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (set == null || !set.contains(key)) {
                if (key == null) {
                    jsonSerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
                } else {
                    jsonSerializer = this._keySerializer;
                }
                Object value = entry.getValue();
                if (value == null) {
                    if (obj == null) {
                        propertySerializerMap = propertySerializerMap3;
                        defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                        mapProperty.reset(key, jsonSerializer, defaultNullValueSerializer);
                        try {
                            propertyFilter.serializeAsField(value, jsonGenerator, serializerProvider, mapProperty);
                        } catch (Exception e) {
                            wrapAndThrow(serializerProvider, e, map, "" + key);
                        }
                        propertySerializerMap3 = propertySerializerMap;
                    }
                } else {
                    JsonSerializer<Object> jsonSerializer2 = this._valueSerializer;
                    if (jsonSerializer2 == null && (jsonSerializer2 = propertySerializerMap3.serializerFor((cls = value.getClass()))) == null) {
                        if (this._valueType.hasGenericTypes()) {
                            _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
                        } else {
                            _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, cls, serializerProvider);
                        }
                        JsonSerializer<Object> jsonSerializer3 = _findAndAddDynamic;
                        propertySerializerMap = this._dynamicValueSerializers;
                        defaultNullValueSerializer = jsonSerializer3;
                    } else {
                        JsonSerializer<Object> jsonSerializer4 = jsonSerializer2;
                        propertySerializerMap = propertySerializerMap3;
                        defaultNullValueSerializer = jsonSerializer4;
                    }
                    if (obj == JsonInclude.Include.NON_EMPTY && defaultNullValueSerializer.isEmpty(serializerProvider, value)) {
                        propertySerializerMap3 = propertySerializerMap;
                    }
                    mapProperty.reset(key, jsonSerializer, defaultNullValueSerializer);
                    propertyFilter.serializeAsField(value, jsonGenerator, serializerProvider, mapProperty);
                    propertySerializerMap3 = propertySerializerMap;
                }
            }
        }
    }

    @Deprecated
    public void serializeFilteredFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, PropertyFilter propertyFilter) throws IOException {
        serializeFilteredFields(map, jsonGenerator, serializerProvider, propertyFilter, serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? null : JsonInclude.Include.NON_NULL);
    }

    public void serializeTypedFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        JsonSerializer<Object> findNullKeySerializer;
        PropertySerializerMap propertySerializerMap;
        JsonSerializer<Object> defaultNullValueSerializer;
        JsonSerializer<Object> _findAndAddDynamic;
        Set<String> set = this._ignoredEntries;
        PropertySerializerMap propertySerializerMap2 = this._dynamicValueSerializers;
        PropertySerializerMap propertySerializerMap3 = propertySerializerMap2;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            Object key = entry.getKey();
            if (key == null) {
                findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
            } else if (set == null || !set.contains(key)) {
                findNullKeySerializer = this._keySerializer;
            }
            Object value = entry.getValue();
            if (value == null) {
                if (obj == null) {
                    propertySerializerMap = propertySerializerMap3;
                    defaultNullValueSerializer = serializerProvider.getDefaultNullValueSerializer();
                    findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                    try {
                        defaultNullValueSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                    } catch (Exception e) {
                        wrapAndThrow(serializerProvider, e, map, "" + key);
                    }
                    propertySerializerMap3 = propertySerializerMap;
                }
            } else {
                JsonSerializer<Object> jsonSerializer = this._valueSerializer;
                Class<?> cls = value.getClass();
                JsonSerializer<Object> serializerFor = propertySerializerMap3.serializerFor(cls);
                if (serializerFor == null) {
                    if (this._valueType.hasGenericTypes()) {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
                    } else {
                        _findAndAddDynamic = _findAndAddDynamic(propertySerializerMap3, cls, serializerProvider);
                    }
                    JsonSerializer<Object> jsonSerializer2 = _findAndAddDynamic;
                    propertySerializerMap = this._dynamicValueSerializers;
                    defaultNullValueSerializer = jsonSerializer2;
                } else {
                    propertySerializerMap = propertySerializerMap3;
                    defaultNullValueSerializer = serializerFor;
                }
                if (obj == JsonInclude.Include.NON_EMPTY && defaultNullValueSerializer.isEmpty(serializerProvider, value)) {
                    propertySerializerMap3 = propertySerializerMap;
                }
                findNullKeySerializer.serialize(key, jsonGenerator, serializerProvider);
                defaultNullValueSerializer.serializeWithType(value, jsonGenerator, serializerProvider, this._valueTypeSerializer);
                propertySerializerMap3 = propertySerializerMap;
            }
        }
    }

    @Deprecated
    protected void serializeTypedFields(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        serializeTypedFields(map, jsonGenerator, serializerProvider, serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES) ? null : JsonInclude.Include.NON_NULL);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("object", true);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonMapFormatVisitor expectMapFormat = jsonFormatVisitorWrapper == null ? null : jsonFormatVisitorWrapper.expectMapFormat(javaType);
        if (expectMapFormat != null) {
            expectMapFormat.keyFormat(this._keySerializer, this._keyType);
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = _findAndAddDynamic(this._dynamicValueSerializers, this._valueType, jsonFormatVisitorWrapper.getProvider());
            }
            expectMapFormat.valueFormat(jsonSerializer, this._valueType);
        }
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, Class<?> cls, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(cls, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap propertySerializerMap, JavaType javaType, SerializerProvider serializerProvider) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult findAndAddSecondarySerializer = propertySerializerMap.findAndAddSecondarySerializer(javaType, serializerProvider, this._property);
        if (propertySerializerMap != findAndAddSecondarySerializer.map) {
            this._dynamicValueSerializers = findAndAddSecondarySerializer.map;
        }
        return findAndAddSecondarySerializer.serializer;
    }

    protected Map<?, ?> _orderEntries(Map<?, ?> map, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj) throws IOException {
        if (!(map instanceof SortedMap)) {
            if (_hasNullKey(map)) {
                TreeMap treeMap = new TreeMap();
                for (Map.Entry<?, ?> entry : map.entrySet()) {
                    Object key = entry.getKey();
                    if (key == null) {
                        _writeNullKeyedEntry(jsonGenerator, serializerProvider, obj, entry.getValue());
                    } else {
                        treeMap.put(key, entry.getValue());
                    }
                }
                return treeMap;
            }
            return new TreeMap(map);
        }
        return map;
    }

    protected boolean _hasNullKey(Map<?, ?> map) {
        return (map instanceof HashMap) && map.containsKey(null);
    }

    protected void _writeNullKeyedEntry(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, Object obj, Object obj2) throws IOException {
        JsonSerializer<Object> jsonSerializer;
        Class<?> cls;
        JsonSerializer<Object> findNullKeySerializer = serializerProvider.findNullKeySerializer(this._keyType, this._property);
        if (obj2 == null) {
            if (obj == null) {
                jsonSerializer = serializerProvider.getDefaultNullValueSerializer();
            } else {
                return;
            }
        } else {
            jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null && (jsonSerializer = this._dynamicValueSerializers.serializerFor((cls = obj2.getClass()))) == null) {
                if (this._valueType.hasGenericTypes()) {
                    jsonSerializer = _findAndAddDynamic(this._dynamicValueSerializers, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
                } else {
                    jsonSerializer = _findAndAddDynamic(this._dynamicValueSerializers, cls, serializerProvider);
                }
            }
            if (obj == JsonInclude.Include.NON_EMPTY && jsonSerializer.isEmpty(serializerProvider, obj2)) {
                return;
            }
        }
        try {
            findNullKeySerializer.serialize(null, jsonGenerator, serializerProvider);
            jsonSerializer.serialize(obj2, jsonGenerator, serializerProvider);
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, obj2, "");
        }
    }
}
