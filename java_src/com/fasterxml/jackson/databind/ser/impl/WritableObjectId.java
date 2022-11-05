package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
/* loaded from: classes.dex */
public final class WritableObjectId {
    public final ObjectIdGenerator<?> generator;
    public Object id;
    protected boolean idWritten = false;

    public WritableObjectId(ObjectIdGenerator<?> objectIdGenerator) {
        this.generator = objectIdGenerator;
    }

    public boolean writeAsId(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        if (this.id != null && (this.idWritten || objectIdWriter.alwaysAsId)) {
            if (jsonGenerator.canWriteObjectId()) {
                jsonGenerator.writeObjectRef(String.valueOf(this.id));
            } else {
                objectIdWriter.serializer.serialize(this.id, jsonGenerator, serializerProvider);
            }
            return true;
        }
        return false;
    }

    public Object generateId(Object obj) {
        if (this.id == null) {
            this.id = this.generator.mo181generateId(obj);
        }
        return this.id;
    }

    public void writeAsField(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        this.idWritten = true;
        if (jsonGenerator.canWriteObjectId()) {
            jsonGenerator.writeObjectId(String.valueOf(this.id));
            return;
        }
        SerializableString serializableString = objectIdWriter.propertyName;
        if (serializableString != null) {
            jsonGenerator.writeFieldName(serializableString);
            objectIdWriter.serializer.serialize(this.id, jsonGenerator, serializerProvider);
        }
    }
}
