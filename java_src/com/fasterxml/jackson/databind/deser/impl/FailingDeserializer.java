package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
/* loaded from: classes.dex */
public class FailingDeserializer extends StdDeserializer<Object> {
    private static final long serialVersionUID = 1;
    protected final String _message;

    public FailingDeserializer(String str) {
        super(Object.class);
        this._message = str;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws JsonMappingException {
        deserializationContext.reportMappingException(this._message, new Object[0]);
        return null;
    }
}
