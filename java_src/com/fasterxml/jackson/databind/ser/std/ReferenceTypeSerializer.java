package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.RuntimeJsonMappingException;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class ReferenceTypeSerializer<T> extends StdSerializer<T> implements ContextualSerializer {
    private static final long serialVersionUID = 1;
    protected final JsonInclude.Include _contentInclusion;
    protected transient PropertySerializerMap _dynamicSerializers;
    protected final BeanProperty _property;
    protected final JavaType _referredType;
    protected final NameTransformer _unwrapper;
    protected final JsonSerializer<Object> _valueSerializer;
    protected final TypeSerializer _valueTypeSerializer;

    protected abstract Object _getReferenced(T t);

    protected abstract Object _getReferencedIfPresent(T t);

    protected abstract boolean _isValueEmpty(T t);

    protected abstract ReferenceTypeSerializer<T> withResolved(BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, JsonInclude.Include include);

    public ReferenceTypeSerializer(ReferenceType referenceType, boolean z, TypeSerializer typeSerializer, JsonSerializer<Object> jsonSerializer) {
        super(referenceType);
        this._referredType = referenceType.mo464getReferencedType();
        this._property = null;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = null;
        this._contentInclusion = null;
        this._dynamicSerializers = PropertySerializerMap.emptyForProperties();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ReferenceTypeSerializer(ReferenceTypeSerializer<?> referenceTypeSerializer, BeanProperty beanProperty, TypeSerializer typeSerializer, JsonSerializer<?> jsonSerializer, NameTransformer nameTransformer, JsonInclude.Include include) {
        super(referenceTypeSerializer);
        this._referredType = referenceTypeSerializer._referredType;
        this._dynamicSerializers = referenceTypeSerializer._dynamicSerializers;
        this._property = beanProperty;
        this._valueTypeSerializer = typeSerializer;
        this._valueSerializer = jsonSerializer;
        this._unwrapper = nameTransformer;
        if (include == JsonInclude.Include.USE_DEFAULTS || include == JsonInclude.Include.ALWAYS) {
            this._contentInclusion = null;
        } else {
            this._contentInclusion = include;
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public JsonSerializer<T> unwrappingSerializer(NameTransformer nameTransformer) {
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        if (jsonSerializer != null) {
            jsonSerializer = jsonSerializer.unwrappingSerializer(nameTransformer);
        }
        return withResolved(this._property, this._valueTypeSerializer, jsonSerializer, this._unwrapper == null ? nameTransformer : NameTransformer.chainedTransformer(nameTransformer, this._unwrapper), this._contentInclusion);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        TypeSerializer typeSerializer = this._valueTypeSerializer;
        if (typeSerializer != null) {
            typeSerializer = typeSerializer.mo368forProperty(beanProperty);
        }
        JsonSerializer<?> findAnnotatedContentSerializer = findAnnotatedContentSerializer(serializerProvider, beanProperty);
        if (findAnnotatedContentSerializer == null) {
            findAnnotatedContentSerializer = this._valueSerializer;
            if (findAnnotatedContentSerializer == null) {
                if (_useStatic(serializerProvider, beanProperty, this._referredType)) {
                    findAnnotatedContentSerializer = _findSerializer(serializerProvider, this._referredType, beanProperty);
                }
            } else {
                findAnnotatedContentSerializer = serializerProvider.handlePrimaryContextualization(findAnnotatedContentSerializer, beanProperty);
            }
        }
        JsonInclude.Include include = this._contentInclusion;
        JsonInclude.Include contentInclusion = findIncludeOverrides(serializerProvider, beanProperty, handledType()).getContentInclusion();
        if (contentInclusion == include || contentInclusion == JsonInclude.Include.USE_DEFAULTS) {
            contentInclusion = include;
        }
        return withResolved(beanProperty, typeSerializer, findAnnotatedContentSerializer, this._unwrapper, contentInclusion);
    }

    protected boolean _useStatic(SerializerProvider serializerProvider, BeanProperty beanProperty, JavaType javaType) {
        if (javaType.isJavaLangObject()) {
            return false;
        }
        if (!javaType.isFinal() && !javaType.useStaticType()) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            if (annotationIntrospector != null && beanProperty != null && beanProperty.getMember() != null) {
                JsonSerialize.Typing findSerializationTyping = annotationIntrospector.findSerializationTyping(beanProperty.getMember());
                if (findSerializationTyping == JsonSerialize.Typing.STATIC) {
                    return true;
                }
                if (findSerializationTyping == JsonSerialize.Typing.DYNAMIC) {
                    return false;
                }
            }
            return serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING);
        }
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        if (t == null || _isValueEmpty(t)) {
            return true;
        }
        if (this._contentInclusion == null) {
            return false;
        }
        Object _getReferenced = _getReferenced(t);
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            try {
                jsonSerializer = _findCachedSerializer(serializerProvider, _getReferenced.getClass());
            } catch (JsonMappingException e) {
                throw new RuntimeJsonMappingException(e);
            }
        }
        return jsonSerializer.isEmpty(serializerProvider, _getReferenced);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isUnwrappingSerializer() {
        return this._unwrapper != null;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        Object _getReferencedIfPresent = _getReferencedIfPresent(t);
        if (_getReferencedIfPresent == null) {
            if (this._unwrapper == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            jsonSerializer = _findCachedSerializer(serializerProvider, _getReferencedIfPresent.getClass());
        }
        if (this._valueTypeSerializer != null) {
            jsonSerializer.serializeWithType(_getReferencedIfPresent, jsonGenerator, serializerProvider, this._valueTypeSerializer);
        } else {
            jsonSerializer.serialize(_getReferencedIfPresent, jsonGenerator, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        Object _getReferencedIfPresent = _getReferencedIfPresent(t);
        if (_getReferencedIfPresent == null) {
            if (this._unwrapper == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            return;
        }
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            jsonSerializer = _findCachedSerializer(serializerProvider, _getReferencedIfPresent.getClass());
        }
        jsonSerializer.serializeWithType(_getReferencedIfPresent, jsonGenerator, serializerProvider, typeSerializer);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            jsonSerializer = _findSerializer(jsonFormatVisitorWrapper.getProvider(), this._referredType, this._property);
            if (this._unwrapper != null) {
                jsonSerializer = jsonSerializer.unwrappingSerializer(this._unwrapper);
            }
        }
        jsonSerializer.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, this._referredType);
    }

    private final JsonSerializer<Object> _findCachedSerializer(SerializerProvider serializerProvider, Class<?> cls) throws JsonMappingException {
        JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(cls);
        if (serializerFor == null) {
            serializerFor = _findSerializer(serializerProvider, cls, this._property);
            if (this._unwrapper != null) {
                serializerFor = serializerFor.unwrappingSerializer(this._unwrapper);
            }
            this._dynamicSerializers = this._dynamicSerializers.newWith(cls, serializerFor);
        }
        return serializerFor;
    }

    private final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, Class<?> cls, BeanProperty beanProperty) throws JsonMappingException {
        return serializerProvider.findTypedValueSerializer(cls, true, beanProperty);
    }

    private final JsonSerializer<Object> _findSerializer(SerializerProvider serializerProvider, JavaType javaType, BeanProperty beanProperty) throws JsonMappingException {
        return serializerProvider.findTypedValueSerializer(javaType, true, beanProperty);
    }
}
