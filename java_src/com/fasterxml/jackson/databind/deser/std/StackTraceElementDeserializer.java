package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import java.io.IOException;
/* loaded from: classes.dex */
public class StackTraceElementDeserializer extends StdScalarDeserializer<StackTraceElement> {
    private static final long serialVersionUID = 1;

    public StackTraceElementDeserializer() {
        super(StackTraceElement.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public StackTraceElement mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String str;
        String str2 = null;
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT) {
            String str3 = "";
            String str4 = "";
            String str5 = "";
            int i = -1;
            String str6 = null;
            while (true) {
                JsonToken nextValue = jsonParser.nextValue();
                if (nextValue != JsonToken.END_OBJECT) {
                    String currentName = jsonParser.getCurrentName();
                    if ("className".equals(currentName)) {
                        str = jsonParser.getText();
                    } else if ("fileName".equals(currentName)) {
                        str5 = jsonParser.getText();
                        str = str3;
                    } else if ("lineNumber".equals(currentName)) {
                        if (!nextValue.isNumeric()) {
                            return (StackTraceElement) deserializationContext.handleUnexpectedToken(handledType(), nextValue, jsonParser, "Non-numeric token (%s) for property 'lineNumber'", nextValue);
                        }
                        i = jsonParser.getIntValue();
                        str = str3;
                    } else if ("methodName".equals(currentName)) {
                        str4 = jsonParser.getText();
                        str = str3;
                    } else if ("nativeMethod".equals(currentName)) {
                        str = str3;
                    } else if ("moduleName".equals(currentName)) {
                        str6 = jsonParser.getText();
                        str = str3;
                    } else if ("moduleVersion".equals(currentName)) {
                        str2 = jsonParser.getText();
                        str = str3;
                    } else {
                        handleUnknownProperty(jsonParser, deserializationContext, this._valueClass, currentName);
                        str = str3;
                    }
                    str3 = str;
                } else {
                    return constructValue(deserializationContext, str3, str4, str5, i, str6, str2);
                }
            }
        } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            StackTraceElement mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return mo573deserialize;
            }
            return mo573deserialize;
        } else {
            return (StackTraceElement) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    protected StackTraceElement constructValue(DeserializationContext deserializationContext, String str, String str2, String str3, int i, String str4, String str5) {
        return new StackTraceElement(str, str2, str3, i);
    }
}
