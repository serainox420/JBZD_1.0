package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Currency;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: _deserialize */
    public abstract T mo324_deserialize(String str, DeserializationContext deserializationContext) throws IOException;

    public static Class<?>[] types() {
        return new Class[]{File.class, URL.class, URI.class, Class.class, JavaType.class, Currency.class, Pattern.class, Locale.class, Charset.class, TimeZone.class, InetAddress.class, InetSocketAddress.class, StringBuilder.class};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FromStringDeserializer(Class<?> cls) {
        super(cls);
    }

    public static Std findDeserializer(Class<?> cls) {
        int i;
        if (cls == File.class) {
            i = 1;
        } else if (cls == URL.class) {
            i = 2;
        } else if (cls == URI.class) {
            i = 3;
        } else if (cls == Class.class) {
            i = 4;
        } else if (cls == JavaType.class) {
            i = 5;
        } else if (cls == Currency.class) {
            i = 6;
        } else if (cls == Pattern.class) {
            i = 7;
        } else if (cls == Locale.class) {
            i = 8;
        } else if (cls == Charset.class) {
            i = 9;
        } else if (cls == TimeZone.class) {
            i = 10;
        } else if (cls == InetAddress.class) {
            i = 11;
        } else if (cls == InetSocketAddress.class) {
            i = 12;
        } else if (cls == StringBuilder.class) {
            i = 13;
        } else {
            return null;
        }
        return new Std(cls, i);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize */
    public T mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String message;
        Exception e = null;
        String valueAsString = jsonParser.getValueAsString();
        if (valueAsString != null) {
            if (valueAsString.length() != 0) {
                String trim = valueAsString.trim();
                if (trim.length() != 0) {
                    try {
                        T mo324_deserialize = mo324_deserialize(trim, deserializationContext);
                        if (mo324_deserialize != null) {
                            return mo324_deserialize;
                        }
                    } catch (IllegalArgumentException e2) {
                        e = e2;
                    } catch (MalformedURLException e3) {
                        e = e3;
                    }
                    String str = "not a valid textual representation";
                    if (e != null && (message = e.getMessage()) != null) {
                        str = str + ", problem: " + message;
                    }
                    JsonMappingException weirdStringException = deserializationContext.weirdStringException(trim, this._valueClass, str);
                    if (e != null) {
                        weirdStringException.initCause(e);
                    }
                    throw weirdStringException;
                }
            }
            return _deserializeFromEmptyString();
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            jsonParser.nextToken();
            T mo573deserialize = mo573deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return mo573deserialize;
            }
            return mo573deserialize;
        } else if (currentToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
            T t = (T) jsonParser.getEmbeddedObject();
            if (t == null) {
                return null;
            }
            return this._valueClass.isAssignableFrom(t.getClass()) ? t : _deserializeEmbedded(t, deserializationContext);
        } else {
            return (T) deserializationContext.handleUnexpectedToken(this._valueClass, jsonParser);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T _deserializeEmbedded(Object obj, DeserializationContext deserializationContext) throws IOException {
        deserializationContext.reportMappingException("Don't know how to convert embedded Object of type %s into %s", obj.getClass().getName(), this._valueClass.getName());
        return null;
    }

    protected T _deserializeFromEmptyString() throws IOException {
        return null;
    }

    /* loaded from: classes.dex */
    public static class Std extends FromStringDeserializer<Object> {
        public static final int STD_CHARSET = 9;
        public static final int STD_CLASS = 4;
        public static final int STD_CURRENCY = 6;
        public static final int STD_FILE = 1;
        public static final int STD_INET_ADDRESS = 11;
        public static final int STD_INET_SOCKET_ADDRESS = 12;
        public static final int STD_JAVA_TYPE = 5;
        public static final int STD_LOCALE = 8;
        public static final int STD_PATTERN = 7;
        public static final int STD_STRING_BUILDER = 13;
        public static final int STD_TIME_ZONE = 10;
        public static final int STD_URI = 3;
        public static final int STD_URL = 2;
        private static final long serialVersionUID = 1;
        protected final int _kind;

        protected Std(Class<?> cls, int i) {
            super(cls);
            this._kind = i;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        /* renamed from: _deserialize */
        protected Object mo324_deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            switch (this._kind) {
                case 1:
                    return new File(str);
                case 2:
                    return new URL(str);
                case 3:
                    return URI.create(str);
                case 4:
                    try {
                        return deserializationContext.findClass(str);
                    } catch (Exception e) {
                        return deserializationContext.handleInstantiationProblem(this._valueClass, str, ClassUtil.getRootCause(e));
                    }
                case 5:
                    return deserializationContext.getTypeFactory().constructFromCanonical(str);
                case 6:
                    return Currency.getInstance(str);
                case 7:
                    return Pattern.compile(str);
                case 8:
                    int _firstHyphenOrUnderscore = _firstHyphenOrUnderscore(str);
                    if (_firstHyphenOrUnderscore < 0) {
                        return new Locale(str);
                    }
                    String substring = str.substring(0, _firstHyphenOrUnderscore);
                    String substring2 = str.substring(_firstHyphenOrUnderscore + 1);
                    int _firstHyphenOrUnderscore2 = _firstHyphenOrUnderscore(substring2);
                    if (_firstHyphenOrUnderscore2 < 0) {
                        return new Locale(substring, substring2);
                    }
                    return new Locale(substring, substring2.substring(0, _firstHyphenOrUnderscore2), substring2.substring(_firstHyphenOrUnderscore2 + 1));
                case 9:
                    return Charset.forName(str);
                case 10:
                    return TimeZone.getTimeZone(str);
                case 11:
                    return InetAddress.getByName(str);
                case 12:
                    if (str.startsWith("[")) {
                        int lastIndexOf = str.lastIndexOf(93);
                        if (lastIndexOf == -1) {
                            throw new InvalidFormatException(deserializationContext.getParser(), "Bracketed IPv6 address must contain closing bracket", str, InetSocketAddress.class);
                        }
                        int indexOf = str.indexOf(58, lastIndexOf);
                        return new InetSocketAddress(str.substring(0, lastIndexOf + 1), indexOf > -1 ? Integer.parseInt(str.substring(indexOf + 1)) : 0);
                    }
                    int indexOf2 = str.indexOf(58);
                    if (indexOf2 >= 0 && str.indexOf(58, indexOf2 + 1) < 0) {
                        return new InetSocketAddress(str.substring(0, indexOf2), Integer.parseInt(str.substring(indexOf2 + 1)));
                    }
                    return new InetSocketAddress(str, 0);
                case 13:
                    return new StringBuilder(str);
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        protected Object _deserializeFromEmptyString() throws IOException {
            if (this._kind == 3) {
                return URI.create("");
            }
            if (this._kind == 8) {
                return Locale.ROOT;
            }
            if (this._kind == 13) {
                return new StringBuilder();
            }
            return super._deserializeFromEmptyString();
        }

        protected int _firstHyphenOrUnderscore(String str) {
            int i = 0;
            int length = str.length();
            while (i < length) {
                char charAt = str.charAt(i);
                if (charAt != '_' && charAt != '-') {
                    i++;
                } else {
                    return i;
                }
            }
            return -1;
        }
    }
}
