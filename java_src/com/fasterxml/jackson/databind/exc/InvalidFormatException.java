package com.fasterxml.jackson.databind.exc;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JsonMappingException;
import java.io.Closeable;
/* loaded from: classes.dex */
public class InvalidFormatException extends JsonMappingException {
    private static final long serialVersionUID = 1;
    protected final Class<?> _targetType;
    protected final Object _value;

    @Deprecated
    public InvalidFormatException(String str, Object obj, Class<?> cls) {
        super((Closeable) null, str);
        this._value = obj;
        this._targetType = cls;
    }

    @Deprecated
    public InvalidFormatException(String str, JsonLocation jsonLocation, Object obj, Class<?> cls) {
        super((Closeable) null, str, jsonLocation);
        this._value = obj;
        this._targetType = cls;
    }

    public InvalidFormatException(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        super(jsonParser, str);
        this._value = obj;
        this._targetType = cls;
    }

    public static InvalidFormatException from(JsonParser jsonParser, String str, Object obj, Class<?> cls) {
        return new InvalidFormatException(jsonParser, str, obj, cls);
    }

    public Object getValue() {
        return this._value;
    }

    public Class<?> getTargetType() {
        return this._targetType;
    }
}
