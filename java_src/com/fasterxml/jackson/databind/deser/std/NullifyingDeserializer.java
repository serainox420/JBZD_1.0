package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
/* loaded from: classes.dex */
public class NullifyingDeserializer extends StdDeserializer<Object> {
    public static final NullifyingDeserializer instance = new NullifyingDeserializer();
    private static final long serialVersionUID = 1;

    public NullifyingDeserializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public Object mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.hasToken(JsonToken.FIELD_NAME)) {
            jsonParser.skipChildren();
            return null;
        }
        while (true) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken != null && nextToken != JsonToken.END_OBJECT) {
                jsonParser.skipChildren();
            } else {
                return null;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        switch (jsonParser.getCurrentTokenId()) {
            case 1:
            case 3:
            case 5:
                return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
            case 2:
            case 4:
            default:
                return null;
        }
    }
}
