package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.Collection;
@JacksonStdImpl
/* loaded from: classes.dex */
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final JavaType _collectionType;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final Boolean _unwrapSingle;
    protected final JsonDeserializer<String> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;

    public StringCollectionDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer, ValueInstantiator valueInstantiator) {
        this(javaType, valueInstantiator, null, jsonDeserializer, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringCollectionDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, Boolean bool) {
        super(javaType);
        this._collectionType = javaType;
        this._valueDeserializer = jsonDeserializer2;
        this._valueInstantiator = valueInstantiator;
        this._delegateDeserializer = jsonDeserializer;
        this._unwrapSingle = bool;
    }

    protected StringCollectionDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, Boolean bool) {
        return (this._unwrapSingle == bool && this._valueDeserializer == jsonDeserializer2 && this._delegateDeserializer == jsonDeserializer) ? this : new StringCollectionDeserializer(this._collectionType, this._valueInstantiator, jsonDeserializer, jsonDeserializer2, bool);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._valueDeserializer == null && this._delegateDeserializer == null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        JsonDeserializer<?> jsonDeserializer = null;
        JsonDeserializer<?> findDeserializer = (this._valueInstantiator == null || this._valueInstantiator.getDelegateCreator() == null) ? null : findDeserializer(deserializationContext, this._valueInstantiator.getDelegateType(deserializationContext.mo255getConfig()), beanProperty);
        JsonDeserializer<String> jsonDeserializer2 = this._valueDeserializer;
        JavaType mo463getContentType = this._collectionType.mo463getContentType();
        if (jsonDeserializer2 == null) {
            handleSecondaryContextualization = findConvertingContentDeserializer(deserializationContext, beanProperty, jsonDeserializer2);
            if (handleSecondaryContextualization == null) {
                handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(mo463getContentType, beanProperty);
            }
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(jsonDeserializer2, beanProperty, mo463getContentType);
        }
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, Collection.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        if (!isDefaultDeserializer(handleSecondaryContextualization)) {
            jsonDeserializer = handleSecondaryContextualization;
        }
        return withResolved(findDeserializer, jsonDeserializer, findFormatFeature);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._collectionType.mo463getContentType();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public Collection<String> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._delegateDeserializer != null) {
            return (Collection) this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
        }
        return deserialize(jsonParser, deserializationContext, (Collection) this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext, collection);
        }
        if (this._valueDeserializer != null) {
            return deserializeUsingCustom(jsonParser, deserializationContext, collection, this._valueDeserializer);
        }
        while (true) {
            try {
                String nextTextValue = jsonParser.nextTextValue();
                if (nextTextValue != null) {
                    collection.add(nextTextValue);
                } else {
                    JsonToken currentToken = jsonParser.getCurrentToken();
                    if (currentToken != JsonToken.END_ARRAY) {
                        if (currentToken != JsonToken.VALUE_NULL) {
                            nextTextValue = _parseString(jsonParser, deserializationContext);
                        }
                        collection.add(nextTextValue);
                    } else {
                        return collection;
                    }
                }
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, collection, collection.size());
            }
        }
    }

    private Collection<String> deserializeUsingCustom(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection, JsonDeserializer<String> jsonDeserializer) throws IOException {
        String mo573deserialize;
        while (true) {
            if (jsonParser.nextTextValue() == null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken != JsonToken.END_ARRAY) {
                    mo573deserialize = currentToken == JsonToken.VALUE_NULL ? jsonDeserializer.mo289getNullValue(deserializationContext) : jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                } else {
                    return collection;
                }
            } else {
                mo573deserialize = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
            }
            collection.add(mo573deserialize);
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    private final Collection<String> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        String _parseString;
        if (!(this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return (Collection) deserializationContext.handleUnexpectedToken(this._collectionType.getRawClass(), jsonParser);
        }
        JsonDeserializer<String> jsonDeserializer = this._valueDeserializer;
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            _parseString = jsonDeserializer == null ? null : jsonDeserializer.mo289getNullValue(deserializationContext);
        } else {
            _parseString = jsonDeserializer == null ? _parseString(jsonParser, deserializationContext) : jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
        }
        collection.add(_parseString);
        return collection;
    }
}
