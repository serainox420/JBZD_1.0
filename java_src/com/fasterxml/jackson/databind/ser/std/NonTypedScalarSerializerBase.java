package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class NonTypedScalarSerializerBase<T> extends StdScalarSerializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    public NonTypedScalarSerializerBase(Class<T> cls) {
        super(cls);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NonTypedScalarSerializerBase(Class<?> cls, boolean z) {
        super(cls, z);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public final void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        serialize(t, jsonGenerator, serializerProvider);
    }
}
