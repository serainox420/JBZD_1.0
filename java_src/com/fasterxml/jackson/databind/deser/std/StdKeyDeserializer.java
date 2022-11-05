package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
@JacksonStdImpl
/* loaded from: classes.dex */
public class StdKeyDeserializer extends KeyDeserializer implements Serializable {
    public static final int TYPE_BOOLEAN = 1;
    public static final int TYPE_BYTE = 2;
    public static final int TYPE_CALENDAR = 11;
    public static final int TYPE_CHAR = 4;
    public static final int TYPE_CLASS = 15;
    public static final int TYPE_CURRENCY = 16;
    public static final int TYPE_DATE = 10;
    public static final int TYPE_DOUBLE = 8;
    public static final int TYPE_FLOAT = 7;
    public static final int TYPE_INT = 5;
    public static final int TYPE_LOCALE = 9;
    public static final int TYPE_LONG = 6;
    public static final int TYPE_SHORT = 3;
    public static final int TYPE_URI = 13;
    public static final int TYPE_URL = 14;
    public static final int TYPE_UUID = 12;
    private static final long serialVersionUID = 1;
    protected final FromStringDeserializer<?> _deser;
    protected final Class<?> _keyClass;
    protected final int _kind;

    protected StdKeyDeserializer(int i, Class<?> cls) {
        this(i, cls, null);
    }

    protected StdKeyDeserializer(int i, Class<?> cls, FromStringDeserializer<?> fromStringDeserializer) {
        this._kind = i;
        this._keyClass = cls;
        this._deser = fromStringDeserializer;
    }

    public static StdKeyDeserializer forType(Class<?> cls) {
        int i;
        if (cls == String.class || cls == Object.class || cls == CharSequence.class) {
            return StringKD.forType(cls);
        }
        if (cls == UUID.class) {
            i = 12;
        } else if (cls == Integer.class) {
            i = 5;
        } else if (cls == Long.class) {
            i = 6;
        } else if (cls == Date.class) {
            i = 10;
        } else if (cls == Calendar.class) {
            i = 11;
        } else if (cls == Boolean.class) {
            i = 1;
        } else if (cls == Byte.class) {
            i = 2;
        } else if (cls == Character.class) {
            i = 4;
        } else if (cls == Short.class) {
            i = 3;
        } else if (cls == Float.class) {
            i = 7;
        } else if (cls == Double.class) {
            i = 8;
        } else if (cls == URI.class) {
            i = 13;
        } else if (cls == URL.class) {
            i = 14;
        } else if (cls == Class.class) {
            i = 15;
        } else if (cls == Locale.class) {
            return new StdKeyDeserializer(9, cls, FromStringDeserializer.findDeserializer(Locale.class));
        } else {
            if (cls == Currency.class) {
                return new StdKeyDeserializer(16, cls, FromStringDeserializer.findDeserializer(Currency.class));
            }
            return null;
        }
        return new StdKeyDeserializer(i, cls);
    }

    @Override // com.fasterxml.jackson.databind.KeyDeserializer
    public Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException {
        if (str == null) {
            return null;
        }
        try {
            Object _parse = _parse(str, deserializationContext);
            if (_parse != null) {
                return _parse;
            }
            if (this._keyClass.isEnum() && deserializationContext.mo255getConfig().isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) {
                return null;
            }
            return deserializationContext.handleWeirdKey(this._keyClass, str, "not a valid representation", new Object[0]);
        } catch (Exception e) {
            return deserializationContext.handleWeirdKey(this._keyClass, str, "not a valid representation, problem: (%s) %s", e.getClass().getName(), e.getMessage());
        }
    }

    public Class<?> getKeyClass() {
        return this._keyClass;
    }

    protected Object _parse(String str, DeserializationContext deserializationContext) throws Exception {
        switch (this._kind) {
            case 1:
                if ("true".equals(str)) {
                    return Boolean.TRUE;
                }
                if (Consts.False.equals(str)) {
                    return Boolean.FALSE;
                }
                return deserializationContext.handleWeirdKey(this._keyClass, str, "value not 'true' or 'false'", new Object[0]);
            case 2:
                int _parseInt = _parseInt(str);
                if (_parseInt < -128 || _parseInt > 255) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "overflow, value can not be represented as 8-bit value", new Object[0]);
                }
                return Byte.valueOf((byte) _parseInt);
            case 3:
                int _parseInt2 = _parseInt(str);
                if (_parseInt2 < -32768 || _parseInt2 > 32767) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "overflow, value can not be represented as 16-bit value", new Object[0]);
                }
                return Short.valueOf((short) _parseInt2);
            case 4:
                if (str.length() == 1) {
                    return Character.valueOf(str.charAt(0));
                }
                return deserializationContext.handleWeirdKey(this._keyClass, str, "can only convert 1-character Strings", new Object[0]);
            case 5:
                return Integer.valueOf(_parseInt(str));
            case 6:
                return Long.valueOf(_parseLong(str));
            case 7:
                return Float.valueOf((float) _parseDouble(str));
            case 8:
                return Double.valueOf(_parseDouble(str));
            case 9:
                try {
                    return this._deser.mo324_deserialize(str, deserializationContext);
                } catch (IOException e) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "unable to parse key as locale", new Object[0]);
                }
            case 10:
                return deserializationContext.parseDate(str);
            case 11:
                Date parseDate = deserializationContext.parseDate(str);
                if (parseDate != null) {
                    return deserializationContext.constructCalendar(parseDate);
                }
                return null;
            case 12:
                try {
                    return UUID.fromString(str);
                } catch (Exception e2) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "problem: %s", e2.getMessage());
                }
            case 13:
                try {
                    return URI.create(str);
                } catch (Exception e3) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "problem: %s", e3.getMessage());
                }
            case 14:
                try {
                    return new URL(str);
                } catch (MalformedURLException e4) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "problem: %s", e4.getMessage());
                }
            case 15:
                try {
                    return deserializationContext.findClass(str);
                } catch (Exception e5) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "unable to parse key as Class", new Object[0]);
                }
            case 16:
                try {
                    return this._deser.mo324_deserialize(str, deserializationContext);
                } catch (IOException e6) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "unable to parse key as currency", new Object[0]);
                }
            default:
                throw new IllegalStateException("Internal error: unknown key type " + this._keyClass);
        }
    }

    protected int _parseInt(String str) throws IllegalArgumentException {
        return Integer.parseInt(str);
    }

    protected long _parseLong(String str) throws IllegalArgumentException {
        return Long.parseLong(str);
    }

    protected double _parseDouble(String str) throws IllegalArgumentException {
        return NumberInput.parseDouble(str);
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class StringKD extends StdKeyDeserializer {
        private static final long serialVersionUID = 1;
        private static final StringKD sString = new StringKD(String.class);
        private static final StringKD sObject = new StringKD(Object.class);

        private StringKD(Class<?> cls) {
            super(-1, cls);
        }

        public static StringKD forType(Class<?> cls) {
            if (cls == String.class) {
                return sString;
            }
            if (cls == Object.class) {
                return sObject;
            }
            return new StringKD(cls);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer, com.fasterxml.jackson.databind.KeyDeserializer
        public Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
            return str;
        }
    }

    /* loaded from: classes.dex */
    static final class DelegatingKD extends KeyDeserializer implements Serializable {
        private static final long serialVersionUID = 1;
        protected final JsonDeserializer<?> _delegate;
        protected final Class<?> _keyClass;

        /* JADX INFO: Access modifiers changed from: protected */
        public DelegatingKD(Class<?> cls, JsonDeserializer<?> jsonDeserializer) {
            this._keyClass = cls;
            this._delegate = jsonDeserializer;
        }

        @Override // com.fasterxml.jackson.databind.KeyDeserializer
        public final Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException {
            if (str == null) {
                return null;
            }
            TokenBuffer tokenBuffer = new TokenBuffer(deserializationContext.getParser(), deserializationContext);
            tokenBuffer.writeString(str);
            try {
                JsonParser asParser = tokenBuffer.asParser();
                asParser.nextToken();
                Object mo573deserialize = this._delegate.mo573deserialize(asParser, deserializationContext);
                if (mo573deserialize == null) {
                    return deserializationContext.handleWeirdKey(this._keyClass, str, "not a valid representation", new Object[0]);
                }
                return mo573deserialize;
            } catch (Exception e) {
                return deserializationContext.handleWeirdKey(this._keyClass, str, "not a valid representation: %s", e.getMessage());
            }
        }

        public Class<?> getKeyClass() {
            return this._keyClass;
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    static final class EnumKD extends StdKeyDeserializer {
        private static final long serialVersionUID = 1;
        protected final EnumResolver _byNameResolver;
        protected EnumResolver _byToStringResolver;
        protected final AnnotatedMethod _factory;

        /* JADX INFO: Access modifiers changed from: protected */
        public EnumKD(EnumResolver enumResolver, AnnotatedMethod annotatedMethod) {
            super(-1, enumResolver.getEnumClass());
            this._byNameResolver = enumResolver;
            this._factory = annotatedMethod;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object _parse(String str, DeserializationContext deserializationContext) throws IOException {
            if (this._factory != null) {
                try {
                    return this._factory.call1(str);
                } catch (Exception e) {
                    ClassUtil.unwrapAndThrowAsIAE(e);
                }
            }
            EnumResolver _getToStringResolver = deserializationContext.isEnabled(DeserializationFeature.READ_ENUMS_USING_TO_STRING) ? _getToStringResolver(deserializationContext) : this._byNameResolver;
            Enum<?> findEnum = _getToStringResolver.findEnum(str);
            return (findEnum != null || deserializationContext.mo255getConfig().isEnabled(DeserializationFeature.READ_UNKNOWN_ENUM_VALUES_AS_NULL)) ? findEnum : deserializationContext.handleWeirdKey(this._keyClass, str, "not one of values excepted for Enum class: %s", _getToStringResolver.getEnumIds());
        }

        private EnumResolver _getToStringResolver(DeserializationContext deserializationContext) {
            EnumResolver enumResolver = this._byToStringResolver;
            if (enumResolver == null) {
                synchronized (this) {
                    enumResolver = EnumResolver.constructUnsafeUsingToString(this._byNameResolver.getEnumClass(), deserializationContext.getAnnotationIntrospector());
                }
            }
            return enumResolver;
        }
    }

    /* loaded from: classes.dex */
    static final class StringCtorKeyDeserializer extends StdKeyDeserializer {
        private static final long serialVersionUID = 1;
        protected final Constructor<?> _ctor;

        public StringCtorKeyDeserializer(Constructor<?> constructor) {
            super(-1, constructor.getDeclaringClass());
            this._ctor = constructor;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object _parse(String str, DeserializationContext deserializationContext) throws Exception {
            return this._ctor.newInstance(str);
        }
    }

    /* loaded from: classes.dex */
    static final class StringFactoryKeyDeserializer extends StdKeyDeserializer {
        private static final long serialVersionUID = 1;
        final Method _factoryMethod;

        public StringFactoryKeyDeserializer(Method method) {
            super(-1, method.getDeclaringClass());
            this._factoryMethod = method;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdKeyDeserializer
        public Object _parse(String str, DeserializationContext deserializationContext) throws Exception {
            return this._factoryMethod.invoke(null, str);
        }
    }
}
