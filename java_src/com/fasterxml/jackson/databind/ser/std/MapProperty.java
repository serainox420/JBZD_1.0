package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.IOException;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public class MapProperty extends PropertyWriter {
    private static final long serialVersionUID = 1;
    protected Object _key;
    protected JsonSerializer<Object> _keySerializer;
    protected final BeanProperty _property;
    protected final TypeSerializer _typeSerializer;
    protected JsonSerializer<Object> _valueSerializer;

    public MapProperty(TypeSerializer typeSerializer, BeanProperty beanProperty) {
        super(beanProperty == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : beanProperty.getMetadata());
        this._typeSerializer = typeSerializer;
        this._property = beanProperty;
    }

    public void reset(Object obj, JsonSerializer<Object> jsonSerializer, JsonSerializer<Object> jsonSerializer2) {
        this._key = obj;
        this._keySerializer = jsonSerializer;
        this._valueSerializer = jsonSerializer2;
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.Named
    public String getName() {
        return this._key instanceof String ? (String) this._key : String.valueOf(this._key);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getFullName() {
        return new PropertyName(getName());
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        if (this._property == null) {
            return null;
        }
        return (A) this._property.getAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
        if (this._property == null) {
            return null;
        }
        return (A) this._property.getContextAnnotation(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        this._keySerializer.serialize(this._key, jsonGenerator, serializerProvider);
        if (this._typeSerializer == null) {
            this._valueSerializer.serialize(obj, jsonGenerator, serializerProvider);
        } else {
            this._valueSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, this._typeSerializer);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsOmittedField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        if (!jsonGenerator.canOmitFields()) {
            jsonGenerator.writeOmittedField(getName());
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        if (this._typeSerializer == null) {
            this._valueSerializer.serialize(obj, jsonGenerator, serializerProvider);
        } else {
            this._valueSerializer.serializeWithType(obj, jsonGenerator, serializerProvider, this._typeSerializer);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    public void serializeAsPlaceholder(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
        jsonGenerator.writeNull();
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
        if (this._property != null) {
            this._property.depositSchemaProperty(jsonObjectFormatVisitor, serializerProvider);
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.PropertyWriter
    @Deprecated
    public void depositSchemaProperty(ObjectNode objectNode, SerializerProvider serializerProvider) throws JsonMappingException {
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        return this._property == null ? TypeFactory.unknownType() : this._property.getType();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getWrapperName() {
        if (this._property == null) {
            return null;
        }
        return this._property.getWrapperName();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public AnnotatedMember getMember() {
        if (this._property == null) {
            return null;
        }
        return this._property.getMember();
    }
}
