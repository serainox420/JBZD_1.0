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
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
@JacksonStdImpl
/* loaded from: classes.dex */
public class CollectionDeserializer extends ContainerDeserializerBase<Collection<Object>> implements ContextualDeserializer {
    private static final long serialVersionUID = -1;
    protected final JavaType _collectionType;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final Boolean _unwrapSingle;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    public CollectionDeserializer(JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, ValueInstantiator valueInstantiator) {
        this(javaType, jsonDeserializer, typeDeserializer, valueInstantiator, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionDeserializer(JavaType javaType, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, ValueInstantiator valueInstantiator, JsonDeserializer<Object> jsonDeserializer2, Boolean bool) {
        super(javaType);
        this._collectionType = javaType;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = valueInstantiator;
        this._delegateDeserializer = jsonDeserializer2;
        this._unwrapSingle = bool;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionDeserializer(CollectionDeserializer collectionDeserializer) {
        super(collectionDeserializer._collectionType);
        this._collectionType = collectionDeserializer._collectionType;
        this._valueDeserializer = collectionDeserializer._valueDeserializer;
        this._valueTypeDeserializer = collectionDeserializer._valueTypeDeserializer;
        this._valueInstantiator = collectionDeserializer._valueInstantiator;
        this._delegateDeserializer = collectionDeserializer._delegateDeserializer;
        this._unwrapSingle = collectionDeserializer._unwrapSingle;
    }

    /* renamed from: withResolved */
    protected CollectionDeserializer mo275withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, TypeDeserializer typeDeserializer, Boolean bool) {
        return (jsonDeserializer == this._delegateDeserializer && jsonDeserializer2 == this._valueDeserializer && typeDeserializer == this._valueTypeDeserializer && this._unwrapSingle == bool) ? this : new CollectionDeserializer(this._collectionType, jsonDeserializer2, typeDeserializer, this._valueInstantiator, jsonDeserializer, bool);
    }

    @Deprecated
    protected CollectionDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, TypeDeserializer typeDeserializer) {
        return mo275withResolved(jsonDeserializer, jsonDeserializer2, typeDeserializer, this._unwrapSingle);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._valueDeserializer == null && this._valueTypeDeserializer == null && this._delegateDeserializer == null;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual  reason: collision with other method in class */
    public CollectionDeserializer mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        JsonDeserializer<?> handleSecondaryContextualization;
        JsonDeserializer<?> jsonDeserializer = null;
        if (this._valueInstantiator != null) {
            if (this._valueInstantiator.canCreateUsingDelegate()) {
                JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.mo255getConfig());
                if (delegateType == null) {
                    throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._collectionType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
                }
                jsonDeserializer = findDeserializer(deserializationContext, delegateType, beanProperty);
            } else if (this._valueInstantiator.canCreateUsingArrayDelegate()) {
                JavaType arrayDelegateType = this._valueInstantiator.getArrayDelegateType(deserializationContext.mo255getConfig());
                if (arrayDelegateType == null) {
                    throw new IllegalArgumentException("Invalid array-delegate-creator definition for " + this._collectionType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'");
                }
                jsonDeserializer = findDeserializer(deserializationContext, arrayDelegateType, beanProperty);
            }
        }
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, Collection.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        JsonDeserializer<?> findConvertingContentDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, this._valueDeserializer);
        JavaType mo463getContentType = this._collectionType.mo463getContentType();
        if (findConvertingContentDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(mo463getContentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(findConvertingContentDeserializer, beanProperty, mo463getContentType);
        }
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (typeDeserializer != null) {
            typeDeserializer = typeDeserializer.forProperty(beanProperty);
        }
        return mo275withResolved(jsonDeserializer, handleSecondaryContextualization, typeDeserializer, findFormatFeature);
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
    public Collection<Object> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._delegateDeserializer != null) {
            return (Collection) this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
        }
        if (jsonParser.hasToken(JsonToken.VALUE_STRING)) {
            String text = jsonParser.getText();
            if (text.length() == 0) {
                return (Collection) this._valueInstantiator.createFromString(deserializationContext, text);
            }
        }
        return deserialize(jsonParser, deserializationContext, (Collection) this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Collection<Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        Object mo321deserializeWithType;
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext, collection);
        }
        jsonParser.setCurrentValue(collection);
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        CollectionReferringAccumulator collectionReferringAccumulator = jsonDeserializer.getObjectIdReader() == null ? null : new CollectionReferringAccumulator(this._collectionType.mo463getContentType().getRawClass(), collection);
        while (true) {
            JsonToken nextToken = jsonParser.nextToken();
            if (nextToken != JsonToken.END_ARRAY) {
                try {
                    if (nextToken == JsonToken.VALUE_NULL) {
                        mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
                    } else if (typeDeserializer == null) {
                        mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                    } else {
                        mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                    }
                    if (collectionReferringAccumulator != null) {
                        collectionReferringAccumulator.add(mo321deserializeWithType);
                    } else {
                        collection.add(mo321deserializeWithType);
                    }
                } catch (UnresolvedForwardReference e) {
                    if (collectionReferringAccumulator == null) {
                        throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info", e);
                    }
                    e.getRoid().appendReferring(collectionReferringAccumulator.handleUnresolvedReference(e));
                } catch (Exception e2) {
                    if (!(deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS)) && (e2 instanceof RuntimeException)) {
                        throw ((RuntimeException) e2);
                    }
                    throw JsonMappingException.wrapWithPath(e2, collection, collection.size());
                }
            } else {
                return collection;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Collection<Object> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<Object> collection) throws IOException {
        Object mo321deserializeWithType;
        if (!(this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return (Collection) deserializationContext.handleUnexpectedToken(this._collectionType.getRawClass(), jsonParser);
        }
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        try {
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
                mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
            } else if (typeDeserializer == null) {
                mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
            } else {
                mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
            }
            collection.add(mo321deserializeWithType);
            return collection;
        } catch (Exception e) {
            throw JsonMappingException.wrapWithPath(e, Object.class, collection.size());
        }
    }

    /* loaded from: classes.dex */
    public static final class CollectionReferringAccumulator {
        private List<CollectionReferring> _accumulator = new ArrayList();
        private final Class<?> _elementType;
        private final Collection<Object> _result;

        public CollectionReferringAccumulator(Class<?> cls, Collection<Object> collection) {
            this._elementType = cls;
            this._result = collection;
        }

        public void add(Object obj) {
            if (this._accumulator.isEmpty()) {
                this._result.add(obj);
            } else {
                this._accumulator.get(this._accumulator.size() - 1).next.add(obj);
            }
        }

        public ReadableObjectId.Referring handleUnresolvedReference(UnresolvedForwardReference unresolvedForwardReference) {
            CollectionReferring collectionReferring = new CollectionReferring(this, unresolvedForwardReference, this._elementType);
            this._accumulator.add(collectionReferring);
            return collectionReferring;
        }

        public void resolveForwardReference(Object obj, Object obj2) throws IOException {
            Iterator<CollectionReferring> it = this._accumulator.iterator();
            Collection collection = this._result;
            while (true) {
                Collection collection2 = collection;
                if (it.hasNext()) {
                    CollectionReferring next = it.next();
                    if (next.hasId(obj)) {
                        it.remove();
                        collection2.add(obj2);
                        collection2.addAll(next.next);
                        return;
                    }
                    collection = next.next;
                } else {
                    throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CollectionReferring extends ReadableObjectId.Referring {
        private final CollectionReferringAccumulator _parent;
        public final List<Object> next;

        CollectionReferring(CollectionReferringAccumulator collectionReferringAccumulator, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            super(unresolvedForwardReference, cls);
            this.next = new ArrayList();
            this._parent = collectionReferringAccumulator;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring
        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            this._parent.resolveForwardReference(obj, obj2);
        }
    }
}
