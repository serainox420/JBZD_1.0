package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes.dex */
public abstract class StaticListSerializerBase<T extends Collection<?>> extends StdSerializer<T> implements ContextualSerializer {
    protected final JsonSerializer<String> _serializer;
    protected final Boolean _unwrapSingle;

    public abstract JsonSerializer<?> _withResolved(BeanProperty beanProperty, JsonSerializer<?> jsonSerializer, Boolean bool);

    protected abstract void acceptContentVisitor(JsonArrayFormatVisitor jsonArrayFormatVisitor) throws JsonMappingException;

    protected abstract JsonNode contentSchema();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return isEmpty(serializerProvider, (SerializerProvider) ((Collection) obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ boolean isEmpty(Object obj) {
        return isEmpty((StaticListSerializerBase<T>) ((Collection) obj));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StaticListSerializerBase(Class<?> cls) {
        super(cls, false);
        this._serializer = null;
        this._unwrapSingle = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public StaticListSerializerBase(StaticListSerializerBase<?> staticListSerializerBase, JsonSerializer<?> jsonSerializer, Boolean bool) {
        super(staticListSerializerBase);
        this._serializer = jsonSerializer;
        this._unwrapSingle = bool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer;
        JsonSerializer<?> findConvertingContentSerializer;
        JsonSerializer<?> handleSecondaryContextualization;
        Object findContentSerializer;
        JsonSerializer<String> jsonSerializer2 = null;
        if (beanProperty != null) {
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            AnnotatedMember member = beanProperty.getMember();
            if (member != null && (findContentSerializer = annotationIntrospector.findContentSerializer(member)) != null) {
                jsonSerializer = serializerProvider.serializerInstance(member, findContentSerializer);
                JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
                Boolean feature = findFormatOverrides == null ? findFormatOverrides.getFeature(JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED) : null;
                if (jsonSerializer == null) {
                    jsonSerializer = this._serializer;
                }
                findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
                if (findConvertingContentSerializer != null) {
                    handleSecondaryContextualization = serializerProvider.findValueSerializer(String.class, beanProperty);
                } else {
                    handleSecondaryContextualization = serializerProvider.handleSecondaryContextualization(findConvertingContentSerializer, beanProperty);
                }
                if (!isDefaultSerializer(handleSecondaryContextualization)) {
                    jsonSerializer2 = handleSecondaryContextualization;
                }
                return (jsonSerializer2 == this._serializer || feature != this._unwrapSingle) ? _withResolved(beanProperty, jsonSerializer2, feature) : this;
            }
        }
        jsonSerializer = null;
        JsonFormat.Value findFormatOverrides2 = findFormatOverrides(serializerProvider, beanProperty, handledType());
        if (findFormatOverrides2 == null) {
        }
        if (jsonSerializer == null) {
        }
        findConvertingContentSerializer = findConvertingContentSerializer(serializerProvider, beanProperty, jsonSerializer);
        if (findConvertingContentSerializer != null) {
        }
        if (!isDefaultSerializer(handleSecondaryContextualization)) {
        }
        if (jsonSerializer2 == this._serializer) {
        }
    }

    @Deprecated
    public boolean isEmpty(T t) {
        return isEmpty((SerializerProvider) null, (SerializerProvider) t);
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || t.size() == 0;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("array", true).set("items", contentSchema());
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        acceptContentVisitor(jsonFormatVisitorWrapper.expectArrayFormat(javaType));
    }
}
