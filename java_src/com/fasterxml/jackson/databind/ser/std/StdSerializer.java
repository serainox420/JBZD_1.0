package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonNumberFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public abstract class StdSerializer<T> extends JsonSerializer<T> implements JsonFormatVisitable, SchemaAware, Serializable {
    private static final Object CONVERTING_CONTENT_CONVERTER_LOCK = new Object();
    private static final long serialVersionUID = 1;
    protected final Class<T> _handledType;

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public abstract void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(Class<T> cls) {
        this._handledType = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(JavaType javaType) {
        this._handledType = (Class<T>) javaType.getRawClass();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public StdSerializer(Class<?> cls, boolean z) {
        this._handledType = cls;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public StdSerializer(StdSerializer<?> stdSerializer) {
        this._handledType = (Class<T>) stdSerializer._handledType;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public Class<T> handledType() {
        return this._handledType;
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        jsonFormatVisitorWrapper.expectAnyFormat(javaType);
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) throws JsonMappingException {
        return createSchemaNode("string");
    }

    public JsonNode getSchema(SerializerProvider serializerProvider, Type type, boolean z) throws JsonMappingException {
        ObjectNode objectNode = (ObjectNode) getSchema(serializerProvider, type);
        if (!z) {
            objectNode.put("required", !z);
        }
        return objectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectNode createObjectNode() {
        return JsonNodeFactory.instance.objectNode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectNode createSchemaNode(String str) {
        ObjectNode createObjectNode = createObjectNode();
        createObjectNode.put("type", str);
        return createObjectNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectNode createSchemaNode(String str, boolean z) {
        ObjectNode createSchemaNode = createSchemaNode(str);
        if (!z) {
            createSchemaNode.put("required", !z);
        }
        return createSchemaNode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitStringFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        if (jsonFormatVisitorWrapper != null) {
            jsonFormatVisitorWrapper.expectStringFormat(javaType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitStringFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonValueFormat jsonValueFormat) throws JsonMappingException {
        JsonStringFormatVisitor expectStringFormat;
        if (jsonFormatVisitorWrapper != null && (expectStringFormat = jsonFormatVisitorWrapper.expectStringFormat(javaType)) != null) {
            expectStringFormat.format(jsonValueFormat);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitIntFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonParser.NumberType numberType) throws JsonMappingException {
        JsonIntegerFormatVisitor expectIntegerFormat;
        if (jsonFormatVisitorWrapper != null && (expectIntegerFormat = jsonFormatVisitorWrapper.expectIntegerFormat(javaType)) != null && numberType != null) {
            expectIntegerFormat.numberType(numberType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitIntFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonParser.NumberType numberType, JsonValueFormat jsonValueFormat) throws JsonMappingException {
        JsonIntegerFormatVisitor expectIntegerFormat;
        if (jsonFormatVisitorWrapper != null && (expectIntegerFormat = jsonFormatVisitorWrapper.expectIntegerFormat(javaType)) != null) {
            if (numberType != null) {
                expectIntegerFormat.numberType(numberType);
            }
            if (jsonValueFormat != null) {
                expectIntegerFormat.format(jsonValueFormat);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitFloatFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonParser.NumberType numberType) throws JsonMappingException {
        JsonNumberFormatVisitor expectNumberFormat;
        if (jsonFormatVisitorWrapper != null && (expectNumberFormat = jsonFormatVisitorWrapper.expectNumberFormat(javaType)) != null) {
            expectNumberFormat.numberType(numberType);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitArrayFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonSerializer<?> jsonSerializer, JavaType javaType2) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat;
        if (jsonFormatVisitorWrapper != null && (expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) != null && jsonSerializer != null) {
            expectArrayFormat.itemsFormat(jsonSerializer, javaType2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void visitArrayFormat(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, JsonFormatTypes jsonFormatTypes) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat;
        if (jsonFormatVisitorWrapper != null && (expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType)) != null) {
            expectArrayFormat.itemsFormat(jsonFormatTypes);
        }
    }

    public void wrapAndThrow(SerializerProvider serializerProvider, Throwable th, Object obj, String str) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        boolean z = serializerProvider == null || serializerProvider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS);
        if (th2 instanceof IOException) {
            if (!z || !(th2 instanceof JsonMappingException)) {
                throw ((IOException) th2);
            }
        } else if (!z && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, str);
    }

    public void wrapAndThrow(SerializerProvider serializerProvider, Throwable th, Object obj, int i) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        boolean z = serializerProvider == null || serializerProvider.isEnabled(SerializationFeature.WRAP_EXCEPTIONS);
        if (th2 instanceof IOException) {
            if (!z || !(th2 instanceof JsonMappingException)) {
                throw ((IOException) th2);
            }
        } else if (!z && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonSerializer<?> findConvertingContentSerializer(SerializerProvider serializerProvider, BeanProperty beanProperty, JsonSerializer<?> jsonSerializer) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector;
        AnnotatedMember member;
        Object attribute = serializerProvider.getAttribute(CONVERTING_CONTENT_CONVERTER_LOCK);
        if ((attribute == null || attribute != Boolean.TRUE) && (annotationIntrospector = serializerProvider.getAnnotationIntrospector()) != null && beanProperty != null && (member = beanProperty.getMember()) != null) {
            serializerProvider.mo256setAttribute(CONVERTING_CONTENT_CONVERTER_LOCK, (Object) Boolean.TRUE);
            try {
                Object findSerializationContentConverter = annotationIntrospector.findSerializationContentConverter(member);
                if (findSerializationContentConverter != null) {
                    Converter<Object, Object> converterInstance = serializerProvider.converterInstance(beanProperty.getMember(), findSerializationContentConverter);
                    JavaType outputType = converterInstance.getOutputType(serializerProvider.getTypeFactory());
                    if (jsonSerializer == null && !outputType.isJavaLangObject()) {
                        jsonSerializer = serializerProvider.findValueSerializer(outputType);
                    }
                    return new StdDelegatingSerializer(converterInstance, outputType, jsonSerializer);
                }
                return jsonSerializer;
            } finally {
                serializerProvider.mo256setAttribute(CONVERTING_CONTENT_CONVERTER_LOCK, (Object) null);
            }
        }
        return jsonSerializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyFilter findPropertyFilter(SerializerProvider serializerProvider, Object obj, Object obj2) throws JsonMappingException {
        FilterProvider filterProvider = serializerProvider.getFilterProvider();
        if (filterProvider == null) {
            throw JsonMappingException.from(serializerProvider, "Can not resolve PropertyFilter with id '" + obj + "'; no FilterProvider configured");
        }
        return filterProvider.findPropertyFilter(obj, obj2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonFormat.Value findFormatOverrides(SerializerProvider serializerProvider, BeanProperty beanProperty, Class<?> cls) {
        return beanProperty != null ? beanProperty.findPropertyFormat(serializerProvider.mo255getConfig(), cls) : serializerProvider.getDefaultPropertyFormat(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean findFormatFeature(SerializerProvider serializerProvider, BeanProperty beanProperty, Class<?> cls, JsonFormat.Feature feature) {
        JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, cls);
        if (findFormatOverrides != null) {
            return findFormatOverrides.getFeature(feature);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonInclude.Value findIncludeOverrides(SerializerProvider serializerProvider, BeanProperty beanProperty, Class<?> cls) {
        return beanProperty != null ? beanProperty.findPropertyInclusion(serializerProvider.mo255getConfig(), cls) : serializerProvider.getDefaultPropertyInclusion(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonSerializer<?> findAnnotatedContentSerializer(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        Object findContentSerializer;
        if (beanProperty != null) {
            AnnotatedMember member = beanProperty.getMember();
            AnnotationIntrospector annotationIntrospector = serializerProvider.getAnnotationIntrospector();
            if (member != null && (findContentSerializer = annotationIntrospector.findContentSerializer(member)) != null) {
                return serializerProvider.serializerInstance(member, findContentSerializer);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isDefaultSerializer(JsonSerializer<?> jsonSerializer) {
        return ClassUtil.isJacksonStdImpl(jsonSerializer);
    }
}
