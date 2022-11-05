package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.LinkedHashSet;
@JacksonStdImpl
/* loaded from: classes.dex */
public class JsonValueSerializer extends StdSerializer<Object> implements JsonFormatVisitable, SchemaAware, ContextualSerializer {
    protected final AnnotatedMethod _accessorMethod;
    protected final boolean _forceTypeInformation;
    protected final BeanProperty _property;
    protected final JsonSerializer<Object> _valueSerializer;

    public JsonValueSerializer(AnnotatedMethod annotatedMethod, JsonSerializer<?> jsonSerializer) {
        super(annotatedMethod.getType());
        this._accessorMethod = annotatedMethod;
        this._valueSerializer = jsonSerializer;
        this._property = null;
        this._forceTypeInformation = true;
    }

    public JsonValueSerializer(JsonValueSerializer jsonValueSerializer, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        super(_notNullClass(jsonValueSerializer.handledType()));
        this._accessorMethod = jsonValueSerializer._accessorMethod;
        this._valueSerializer = jsonSerializer;
        this._property = beanProperty;
        this._forceTypeInformation = z;
    }

    private static final Class<Object> _notNullClass(Class<?> cls) {
        return cls == null ? Object.class : cls;
    }

    public JsonValueSerializer withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, boolean z) {
        return (this._property == beanProperty && this._valueSerializer == jsonSerializer && z == this._forceTypeInformation) ? this : new JsonValueSerializer(this, beanProperty, jsonSerializer, z);
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<?> jsonSerializer = this._valueSerializer;
        if (jsonSerializer == null) {
            JavaType type = this._accessorMethod.getType();
            if (serializerProvider.isEnabled(MapperFeature.USE_STATIC_TYPING) || type.isFinal()) {
                JsonSerializer<Object> findPrimaryPropertySerializer = serializerProvider.findPrimaryPropertySerializer(type, beanProperty);
                return withResolved(beanProperty, findPrimaryPropertySerializer, isNaturalTypeWithStdHandling(type.getRawClass(), findPrimaryPropertySerializer));
            }
            return this;
        }
        return withResolved(beanProperty, serializerProvider.handlePrimaryContextualization(jsonSerializer, beanProperty), this._forceTypeInformation);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            Object value = this._accessorMethod.getValue(obj);
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findTypedValueSerializer(value.getClass(), true, this._property);
            }
            jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
            while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        try {
            Object value = this._accessorMethod.getValue(obj);
            if (value == null) {
                serializerProvider.defaultSerializeNull(jsonGenerator);
                return;
            }
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null) {
                jsonSerializer = serializerProvider.findValueSerializer(value.getClass(), this._property);
            } else if (this._forceTypeInformation) {
                typeSerializer.writeTypePrefixForScalar(obj, jsonGenerator);
                jsonSerializer.serialize(value, jsonGenerator, serializerProvider);
                typeSerializer.writeTypeSuffixForScalar(obj, jsonGenerator);
                return;
            }
            jsonSerializer.serializeWithType(value, jsonGenerator, serializerProvider, new TypeSerializerRerouter(typeSerializer, obj));
        } catch (IOException e) {
            throw e;
        } catch (Exception e2) {
            e = e2;
            while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        return this._valueSerializer instanceof SchemaAware ? ((SchemaAware) this._valueSerializer).getSchema(serializerProvider, null) : JsonSchema.getDefaultSchemaNode();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JavaType type = this._accessorMethod.getType();
        Class<?> declaringClass = this._accessorMethod.getDeclaringClass();
        if (declaringClass == null || !declaringClass.isEnum() || !_acceptJsonFormatVisitorForEnum(jsonFormatVisitorWrapper, javaType, declaringClass)) {
            JsonSerializer<Object> jsonSerializer = this._valueSerializer;
            if (jsonSerializer == null && (jsonSerializer = jsonFormatVisitorWrapper.getProvider().findTypedValueSerializer(type, false, this._property)) == null) {
                jsonFormatVisitorWrapper.expectAnyFormat(javaType);
            } else {
                jsonSerializer.acceptJsonFormatVisitor(jsonFormatVisitorWrapper, null);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected boolean _acceptJsonFormatVisitorForEnum(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, Class<?> cls) throws JsonMappingException {
        Object[] enumConstants;
        JsonStringFormatVisitor expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType);
        if (expectStringFormat != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : cls.getEnumConstants()) {
                try {
                    linkedHashSet.add(String.valueOf(this._accessorMethod.callOn(obj)));
                } catch (Exception e) {
                    e = e;
                    while ((e instanceof InvocationTargetException) && e.getCause() != null) {
                        e = e.getCause();
                    }
                    if (e instanceof Error) {
                        throw ((Error) e);
                    }
                    throw JsonMappingException.wrapWithPath(e, obj, this._accessorMethod.getName() + "()");
                }
            }
            expectStringFormat.enumTypes(linkedHashSet);
            return true;
        }
        return true;
    }

    protected boolean isNaturalTypeWithStdHandling(Class<?> cls, JsonSerializer<?> jsonSerializer) {
        if (cls.isPrimitive()) {
            if (cls != Integer.TYPE && cls != Boolean.TYPE && cls != Double.TYPE) {
                return false;
            }
        } else if (cls != String.class && cls != Integer.class && cls != Boolean.class && cls != Double.class) {
            return false;
        }
        return isDefaultSerializer(jsonSerializer);
    }

    public String toString() {
        return "(@JsonValue serializer for method " + this._accessorMethod.getDeclaringClass() + "#" + this._accessorMethod.getName() + ")";
    }

    /* loaded from: classes.dex */
    static class TypeSerializerRerouter extends TypeSerializer {
        protected final Object _forObject;
        protected final TypeSerializer _typeSerializer;

        public TypeSerializerRerouter(TypeSerializer typeSerializer, Object obj) {
            this._typeSerializer = typeSerializer;
            this._forObject = obj;
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        /* renamed from: forProperty */
        public TypeSerializer mo368forProperty(BeanProperty beanProperty) {
            throw new UnsupportedOperationException();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public JsonTypeInfo.As getTypeInclusion() {
            return this._typeSerializer.getTypeInclusion();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public String getPropertyName() {
            return this._typeSerializer.getPropertyName();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public TypeIdResolver getTypeIdResolver() {
            return this._typeSerializer.getTypeIdResolver();
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForScalar(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForObject(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypePrefixForArray(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForScalar(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForObject(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
            this._typeSerializer.writeTypeSuffixForArray(this._forObject, jsonGenerator);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForScalar(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForObject(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
            this._typeSerializer.writeTypePrefixForArray(this._forObject, jsonGenerator, cls);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForScalar(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForObject(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypePrefixForArray(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForScalar(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForObject(this._forObject, jsonGenerator, str);
        }

        @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
        public void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
            this._typeSerializer.writeCustomTypeSuffixForArray(this._forObject, jsonGenerator, str);
        }
    }
}
