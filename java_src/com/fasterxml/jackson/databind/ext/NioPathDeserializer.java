package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
/* loaded from: classes.dex */
public class NioPathDeserializer extends StdScalarDeserializer<Path> {
    private static final long serialVersionUID = 1;

    public NioPathDeserializer() {
        super(Path.class);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public Path mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (!jsonParser.hasToken(JsonToken.VALUE_STRING)) {
            return (Path) deserializationContext.handleUnexpectedToken(Path.class, jsonParser);
        }
        String text = jsonParser.getText();
        if (text.indexOf(58) < 0) {
            return Paths.get(text, new String[0]);
        }
        try {
            return Paths.get(new URI(text));
        } catch (URISyntaxException e) {
            return (Path) deserializationContext.handleInstantiationProblem(handledType(), text, e);
        }
    }
}
