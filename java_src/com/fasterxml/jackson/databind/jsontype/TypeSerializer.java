package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class TypeSerializer {
    /* renamed from: forProperty */
    public abstract TypeSerializer mo368forProperty(BeanProperty beanProperty);

    public abstract String getPropertyName();

    public abstract TypeIdResolver getTypeIdResolver();

    public abstract JsonTypeInfo.As getTypeInclusion();

    public abstract void writeCustomTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeCustomTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeCustomTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeCustomTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeCustomTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeCustomTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator, String str) throws IOException;

    public abstract void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public abstract void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public abstract void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public abstract void writeTypeSuffixForArray(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public abstract void writeTypeSuffixForObject(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public abstract void writeTypeSuffixForScalar(Object obj, JsonGenerator jsonGenerator) throws IOException;

    public void writeTypePrefixForScalar(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefixForScalar(obj, jsonGenerator);
    }

    public void writeTypePrefixForObject(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefixForObject(obj, jsonGenerator);
    }

    public void writeTypePrefixForArray(Object obj, JsonGenerator jsonGenerator, Class<?> cls) throws IOException {
        writeTypePrefixForArray(obj, jsonGenerator);
    }
}
