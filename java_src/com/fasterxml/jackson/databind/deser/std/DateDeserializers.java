package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class DateDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    static {
        for (Class cls : new Class[]{Calendar.class, GregorianCalendar.class, Date.class, java.util.Date.class, Timestamp.class}) {
            _classNames.add(cls.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (_classNames.contains(str)) {
            if (cls == Calendar.class) {
                return new CalendarDeserializer();
            }
            if (cls == java.util.Date.class) {
                return DateDeserializer.instance;
            }
            if (cls == Date.class) {
                return new SqlDateDeserializer();
            }
            if (cls == Timestamp.class) {
                return new TimestampDeserializer();
            }
            if (cls == GregorianCalendar.class) {
                return new CalendarDeserializer(GregorianCalendar.class);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static abstract class DateBasedDeserializer<T> extends StdScalarDeserializer<T> implements ContextualDeserializer {
        protected final DateFormat _customFormat;
        protected final String _formatString;

        protected abstract DateBasedDeserializer<T> withDateFormat(DateFormat dateFormat, String str);

        protected DateBasedDeserializer(Class<?> cls) {
            super(cls);
            this._customFormat = null;
            this._formatString = null;
        }

        protected DateBasedDeserializer(DateBasedDeserializer<T> dateBasedDeserializer, DateFormat dateFormat, String str) {
            super(dateBasedDeserializer._valueClass);
            this._customFormat = dateFormat;
            this._formatString = str;
        }

        /* renamed from: createContextual */
        public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value findFormatOverrides;
            DateFormat dateFormat;
            if (beanProperty != null && (findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, handledType())) != null) {
                TimeZone timeZone = findFormatOverrides.getTimeZone();
                if (findFormatOverrides.hasPattern()) {
                    String pattern = findFormatOverrides.getPattern();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, findFormatOverrides.hasLocale() ? findFormatOverrides.getLocale() : deserializationContext.getLocale());
                    simpleDateFormat.setTimeZone(timeZone == null ? deserializationContext.getTimeZone() : timeZone);
                    return withDateFormat(simpleDateFormat, pattern);
                } else if (timeZone != null) {
                    DateFormat dateFormat2 = deserializationContext.mo255getConfig().getDateFormat();
                    if (dateFormat2.getClass() == StdDateFormat.class) {
                        dateFormat = ((StdDateFormat) dateFormat2).withTimeZone(timeZone).withLocale(findFormatOverrides.hasLocale() ? findFormatOverrides.getLocale() : deserializationContext.getLocale());
                    } else {
                        dateFormat = (DateFormat) dateFormat2.clone();
                        dateFormat.setTimeZone(timeZone);
                    }
                    return withDateFormat(dateFormat, this._formatString);
                } else {
                    return this;
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
        public java.util.Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            java.util.Date date;
            if (this._customFormat != null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.VALUE_STRING) {
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return (java.util.Date) getEmptyValue(deserializationContext);
                    }
                    synchronized (this._customFormat) {
                        try {
                            date = this._customFormat.parse(trim);
                        } catch (ParseException e) {
                            date = (java.util.Date) deserializationContext.handleWeirdStringValue(handledType(), trim, "expected format \"%s\"", this._formatString);
                        }
                    }
                    return date;
                } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                    jsonParser.nextToken();
                    java.util.Date _parseDate = _parseDate(jsonParser, deserializationContext);
                    if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                        handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                        return _parseDate;
                    }
                    return _parseDate;
                }
            }
            return super._parseDate(jsonParser, deserializationContext);
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class CalendarDeserializer extends DateBasedDeserializer<Calendar> {
        protected final Class<? extends Calendar> _calendarClass;

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        /* renamed from: createContextual */
        public /* bridge */ /* synthetic */ JsonDeserializer mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.mo279createContextual(deserializationContext, beanProperty);
        }

        public CalendarDeserializer() {
            super(Calendar.class);
            this._calendarClass = null;
        }

        public CalendarDeserializer(Class<? extends Calendar> cls) {
            super(cls);
            this._calendarClass = cls;
        }

        public CalendarDeserializer(CalendarDeserializer calendarDeserializer, DateFormat dateFormat, String str) {
            super(calendarDeserializer, dateFormat, str);
            this._calendarClass = calendarDeserializer._calendarClass;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: withDateFormat */
        public DateBasedDeserializer<Calendar> withDateFormat2(DateFormat dateFormat, String str) {
            return new CalendarDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public Calendar mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            java.util.Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            if (this._calendarClass == null) {
                return deserializationContext.constructCalendar(_parseDate);
            }
            try {
                Calendar newInstance = this._calendarClass.newInstance();
                newInstance.setTimeInMillis(_parseDate.getTime());
                TimeZone timeZone = deserializationContext.getTimeZone();
                if (timeZone != null) {
                    newInstance.setTimeZone(timeZone);
                    return newInstance;
                }
                return newInstance;
            } catch (Exception e) {
                return (Calendar) deserializationContext.handleInstantiationProblem(this._calendarClass, _parseDate, e);
            }
        }
    }

    @JacksonStdImpl
    /* loaded from: classes.dex */
    public static class DateDeserializer extends DateBasedDeserializer<java.util.Date> {
        public static final DateDeserializer instance = new DateDeserializer();

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        /* renamed from: createContextual */
        public /* bridge */ /* synthetic */ JsonDeserializer mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.mo279createContextual(deserializationContext, beanProperty);
        }

        public DateDeserializer() {
            super(java.util.Date.class);
        }

        public DateDeserializer(DateDeserializer dateDeserializer, DateFormat dateFormat, String str) {
            super(dateDeserializer, dateFormat, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<java.util.Date> withDateFormat(DateFormat dateFormat, String str) {
            return new DateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public java.util.Date mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDate(jsonParser, deserializationContext);
        }
    }

    /* loaded from: classes.dex */
    public static class SqlDateDeserializer extends DateBasedDeserializer<Date> {
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        /* renamed from: createContextual */
        public /* bridge */ /* synthetic */ JsonDeserializer mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.mo279createContextual(deserializationContext, beanProperty);
        }

        public SqlDateDeserializer() {
            super(Date.class);
        }

        public SqlDateDeserializer(SqlDateDeserializer sqlDateDeserializer, DateFormat dateFormat, String str) {
            super(sqlDateDeserializer, dateFormat, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Date> withDateFormat(DateFormat dateFormat, String str) {
            return new SqlDateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public Date mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            java.util.Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            return new Date(_parseDate.getTime());
        }
    }

    /* loaded from: classes.dex */
    public static class TimestampDeserializer extends DateBasedDeserializer<Timestamp> {
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        /* renamed from: createContextual */
        public /* bridge */ /* synthetic */ JsonDeserializer mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.mo279createContextual(deserializationContext, beanProperty);
        }

        public TimestampDeserializer() {
            super(Timestamp.class);
        }

        public TimestampDeserializer(TimestampDeserializer timestampDeserializer, DateFormat dateFormat, String str) {
            super(timestampDeserializer, dateFormat, str);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Timestamp> withDateFormat(DateFormat dateFormat, String str) {
            return new TimestampDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /* renamed from: deserialize  reason: collision with other method in class */
        public Timestamp mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            java.util.Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            return new Timestamp(_parseDate.getTime());
        }
    }
}
