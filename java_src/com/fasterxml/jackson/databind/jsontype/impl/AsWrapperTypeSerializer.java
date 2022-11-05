package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import java.io.IOException;
/* loaded from: classes.dex */
public class AsWrapperTypeSerializer extends TypeSerializerBase {
    public AsWrapperTypeSerializer(TypeIdResolver typeIdResolver, BeanProperty beanProperty) {
        super(typeIdResolver, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    /* renamed from: forProperty  reason: collision with other method in class */
    public AsWrapperTypeSerializer mo368forProperty(BeanProperty beanProperty) {
        return this._property == beanProperty ? this : new AsWrapperTypeSerializer(this._idResolver, beanProperty);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeSerializerBase, com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public JsonTypeInfo.As getTypeInclusion() {
        return JsonTypeInfo.As.WRAPPER_OBJECT;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValue != null) {
                jsonGenerator.writeTypeId(idFromValue);
            }
            jsonGenerator.writeStartObject();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeObjectFieldStart(_validTypeId(idFromValue));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        String idFromValueAndType = idFromValueAndType(obj, cls);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValueAndType != null) {
                jsonGenerator.writeTypeId(idFromValueAndType);
            }
            jsonGenerator.writeStartObject();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeObjectFieldStart(_validTypeId(idFromValueAndType));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValue != null) {
                jsonGenerator.writeTypeId(idFromValue);
            }
            jsonGenerator.writeStartArray();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeArrayFieldStart(_validTypeId(idFromValue));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        String idFromValueAndType = idFromValueAndType(obj, cls);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValueAndType != null) {
                jsonGenerator.writeTypeId(idFromValueAndType);
            }
            jsonGenerator.writeStartArray();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeArrayFieldStart(_validTypeId(idFromValueAndType));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        String idFromValue = idFromValue(obj);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValue != null) {
                jsonGenerator.writeTypeId(idFromValue);
                return;
            }
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeFieldName(_validTypeId(idFromValue));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        String idFromValueAndType = idFromValueAndType(obj, cls);
        if (jsonGenerator.canWriteTypeId()) {
            if (idFromValueAndType != null) {
                jsonGenerator.writeTypeId(idFromValueAndType);
                return;
            }
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeFieldName(_validTypeId(idFromValueAndType));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeEndObject();
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.writeEndArray();
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            jsonGenerator.writeEndObject();
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (jsonGenerator.canWriteTypeId()) {
            if (str != null) {
                jsonGenerator.writeTypeId(str);
            }
            jsonGenerator.writeStartObject();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeObjectFieldStart(_validTypeId(str));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (jsonGenerator.canWriteTypeId()) {
            if (str != null) {
                jsonGenerator.writeTypeId(str);
            }
            jsonGenerator.writeStartArray();
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeArrayFieldStart(_validTypeId(str));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (jsonGenerator.canWriteTypeId()) {
            if (str != null) {
                jsonGenerator.writeTypeId(str);
                return;
            }
            return;
        }
        jsonGenerator.writeStartObject();
        jsonGenerator.writeFieldName(_validTypeId(str));
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            writeTypeSuffixForObject(obj, jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            writeTypeSuffixForArray(obj, jsonGenerator);
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeSerializer
    public void writeCustomTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException {
        if (!jsonGenerator.canWriteTypeId()) {
            writeTypeSuffixForScalar(obj, jsonGenerator);
        }
    }

    protected String _validTypeId(String str) {
        return str == null ? "" : str;
    }
}
