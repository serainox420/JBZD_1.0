package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public abstract class ContainerDeserializerBase<T> extends StdDeserializer<T> {
    public abstract JsonDeserializer<Object> getContentDeserializer();

    public abstract JavaType getContentType();

    /* JADX INFO: Access modifiers changed from: protected */
    public ContainerDeserializerBase(JavaType javaType) {
        super(javaType);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        JsonDeserializer<Object> contentDeserializer = getContentDeserializer();
        if (contentDeserializer == null) {
            throw new IllegalArgumentException("Can not handle managed/back reference '" + str + "': type: container deserializer of type " + getClass().getName() + " returned null for 'getContentDeserializer()'");
        }
        return contentDeserializer.findBackReference(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wrapAndThrow(Throwable th, Object obj, String str) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        if ((th2 instanceof IOException) && !(th2 instanceof JsonMappingException)) {
            throw ((IOException) th2);
        }
        if (str == null) {
            str = "N/A";
        }
        throw JsonMappingException.wrapWithPath(th2, obj, str);
    }
}
