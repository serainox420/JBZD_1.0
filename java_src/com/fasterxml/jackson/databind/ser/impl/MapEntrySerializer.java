package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import java.io.IOException;
import java.util.Map;
@JacksonStdImpl
/* loaded from: classes.dex */
public class MapEntrySerializer extends ContainerSerializer<Map.Entry<?, ?>> implements ContextualSerializer {
    protected PropertySerializerMap _dynamicValueSerializers;
    protected final JavaType _entryType;
    protected JsonSerializer<Object> _keySerializer;
    protected final JavaType _keyType;
    protected final BeanProperty _property;
    protected JsonSerializer<Object> _valueSerializer;
    protected final JavaType _valueType;
    protected final boolean _valueTypeIsStatic;
    protected final TypeSerializer _valueTypeSerializer;

    public MapEntrySerializer(JavaType javaType, JavaType javaType2, JavaType javaType3, boolean z, TypeSerializer typeSerializer, BeanProperty beanProperty) {
        super(javaType);
        this._entryType = javaType;
        this._keyType = javaType2;
        this._valueType = javaType3;
        this._valueTypeIsStatic = z;
        this._valueTypeSerializer = typeSerializer;
        this._property = beanProperty;
        this._dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
    }

    protected MapEntrySerializer(MapEntrySerializer mapEntrySerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        super(Map.class, false);
        this._entryType = mapEntrySerializer._entryType;
        this._keyType = mapEntrySerializer._keyType;
        this._valueType = mapEntrySerializer._valueType;
        this._valueTypeIsStatic = mapEntrySerializer._valueTypeIsStatic;
        this._valueTypeSerializer = mapEntrySerializer._valueTypeSerializer;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
        this._dynamicValueSerializers = mapEntrySerializer._dynamicValueSerializers;
        this._property = mapEntrySerializer._property;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    /* renamed from: _withValueTypeSerializer */
    public ContainerSerializer<?> mo429_withValueTypeSerializer(TypeSerializer typeSerializer) {
        return new MapEntrySerializer(this, this._property, typeSerializer, this._keySerializer, this._valueSerializer);
    }

    public MapEntrySerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, JsonSerializer<?> jsonSerializer2) {
        return new MapEntrySerializer(this, beanProperty, this._valueTypeSerializer, jsonSerializer, jsonSerializer2);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> handleSecondaryContextualization;
        JsonSerializer<?> handleSecondaryContextualization2;
        JsonSerializer<?> jsonSerializer2 = null;
        AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
        AnnotatedMember member = beanProperty == null ? null : beanProperty.getMember();
        if (member == null || annotationIntrospector == null) {
            jsonSerializer = null;
        } else {
            Object findKeySerializer = annotationIntrospector.findKeySerializer(member);
            JsonSerializer<?> serializerInstance = findKeySerializer != null ? serializerProvider.serializerInstance(member, findKeySerializer) : null;
            Object findContentSerializer = annotationIntrospector.findContentSerializer(member);
            if (findContentSerializer != null) {
                JsonSerializer<?> jsonSerializer3 = serializerInstance;
                jsonSerializer = serializerProvider.serializerInstance(member, findContentSerializer);
                jsonSerializer2 = jsonSerializer3;
            } else {
                JsonSerializer<?> jsonSerializer4 = serializerInstance;
                jsonSerializer = null;
                jsonSerializer2 = jsonSerializer4;
            }
        }
        if (jsonSerializer == null) {
            jsonSerializer = this._valueSerializer;
        }
        JsonSerializer<?> findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
        if (findConvertingContentSerializer == null) {
            handleSecondaryContextualization = (!this._valueTypeIsStatic || this._valueType.isJavaLangObject()) ? findConvertingContentSerializer : serializerProvider.findValueSerializer(this._valueType, beanProperty);
        } else {
            handleSecondaryContextualization = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
        }
        JsonSerializer<?> jsonSerializer5 = jsonSerializer2 == null ? this._keySerializer : jsonSerializer2;
        if (jsonSerializer5 == null) {
            handleSecondaryContextualization2 = serializerProvider.findKeySerializer(this._keyType, beanProperty);
        } else {
            handleSecondaryContextualization2 = serializerProvider.handleSecondaryContextualization(jsonSerializer5, beanProperty);
        }
        return withResolved(beanProperty, handleSecondaryContextualization2, handleSecondaryContextualization);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JavaType getContentType() {
        return this._valueType;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public JsonSerializer<?> getContentSerializer() {
        return this._valueSerializer;
    }

    @Override // com.fasterxml.jackson.databind.ser.ContainerSerializer
    public boolean hasSingleElement(Map.Entry<?, ?> entry) {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, Map.Entry<?, ?> entry) {
        return entry == null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject(entry);
        if (this._valueSerializer != null) {
            serializeUsing(entry, jsonGenerator, serializerProvider, this._valueSerializer);
        } else {
            serializeDynamic(entry, jsonGenerator, serializerProvider);
        }
        jsonGenerator.writeEndObject();
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        typeSerializer.writeTypePrefixForObject(entry, jsonGenerator);
        jsonGenerator.setCurrentValue(entry);
        if (this._valueSerializer != null) {
            serializeUsing(entry, jsonGenerator, serializerProvider, this._valueSerializer);
        } else {
            serializeDynamic(entry, jsonGenerator, serializerProvider);
        }
        typeSerializer.writeTypeSuffixForObject(entry, jsonGenerator);
    }

    protected void serializeDynamic(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        JsonSerializer<Object> jsonSerializer = this._keySerializer;
        boolean z = !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES);
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        PropertySerializerMap propertySerializerMap = this._dynamicValueSerializers;
        Object value = entry.getValue();
        Object key = entry.getKey();
        if (key == null) {
            serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
        } else if (!z || value != null) {
            jsonSerializer.serialize(key, jsonGenerator, serializerProvider);
        } else {
            return;
        }
        if (value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        Class<?> cls = value.getClass();
        JsonSerializer<Object> serializerFor = propertySerializerMap.serializerFor(cls);
        if (serializerFor == null) {
            if (this._valueType.hasGenericTypes()) {
                serializerFor = _findAndAddDynamic(propertySerializerMap, serializerProvider.constructSpecializedType(this._valueType, cls), serializerProvider);
            } else {
                serializerFor = _findAndAddDynamic(propertySerializerMap, cls, serializerProvider);
            }
            PropertySerializerMap propertySerializerMap2 = this._dynamicValueSerializers;
        }
        try {
            if (typeSerializer == null) {
                serializerFor.serialize(value, jsonGenerator, serializerProvider);
            } else {
                serializerFor.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, entry, "" + key);
        }
    }

    protected void serializeUsing(Map.Entry<?, ?> entry, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, JsonSerializer<Object> jsonSerializer) throws IOException, JsonGenerationException {
        JsonSerializer<Object> jsonSerializer2 = this._keySerializer;
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        boolean z = !serializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES);
        Object value = entry.getValue();
        Object key = entry.getKey();
        if (key == null) {
            serializerProvider.findNullKeySerializer(this._keyType, this._property).serialize(null, jsonGenerator, serializerProvider);
        } else if (!z || value != null) {
            jsonSerializer2.serialize(key, jsonGenerator, serializerProvider);
        } else {
            return;
        }
        if (value == null) {
            serializerProvider.defaultSerializeNull(jsonGenerator);
            return;
        }
        try {
            if (typeSerializer == null) {
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
            } else {
                jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, typeSerializer);
            }
        } catch (Exception e) {
            wrapAndThrow(serializerProvider, e, entry, "" + key);
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
}
