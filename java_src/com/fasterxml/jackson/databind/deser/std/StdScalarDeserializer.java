package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class StdScalarDeserializer<T> extends StdDeserializer<T> {
    private static final long serialVersionUID = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    public StdScalarDeserializer(Class<?> cls) {
        super(cls);
    }

    protected StdScalarDeserializer(JavaType javaType) {
        super(javaType);
    }

    protected StdScalarDeserializer(StdScalarDeserializer<?> stdScalarDeserializer) {
        super(stdScalarDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromScalar(jsonParser, deserializationContext);
    }
}
