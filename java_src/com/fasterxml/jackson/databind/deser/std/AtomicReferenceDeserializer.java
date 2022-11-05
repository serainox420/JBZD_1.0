package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class AtomicReferenceDeserializer extends ReferenceTypeDeserializer<AtomicReference<Object>> {
    private static final long serialVersionUID = 1;

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    /* renamed from: withResolved  reason: avoid collision after fix types in other method */
    public /* bridge */ /* synthetic */ ReferenceTypeDeserializer<AtomicReference<Object>> withResolved2(TypeDeserializer typeDeserializer, JsonDeserializer jsonDeserializer) {
        return withResolved(typeDeserializer, (JsonDeserializer<?>) jsonDeserializer);
    }

    @Deprecated
    public AtomicReferenceDeserializer(JavaType javaType) {
        this(javaType, null, null);
    }

    public AtomicReferenceDeserializer(JavaType javaType, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        super(javaType, typeDeserializer, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public ReferenceTypeDeserializer<AtomicReference<Object>> withResolved(TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) {
        return new AtomicReferenceDeserializer(this._fullType, typeDeserializer, jsonDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: getNullValue  reason: collision with other method in class */
    public AtomicReference<Object> mo289getNullValue(DeserializationContext deserializationContext) {
        return new AtomicReference<>();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ReferenceTypeDeserializer
    public AtomicReference<Object> referenceValue(Object obj) {
        return new AtomicReference<>(obj);
    }
}
