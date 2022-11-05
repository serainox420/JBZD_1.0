package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
@JacksonStdImpl
/* loaded from: classes.dex */
public class MapDeserializer extends ContainerDeserializerBase<Map<Object, Object>> implements ContextualDeserializer, ResolvableDeserializer {
    private static final long serialVersionUID = 1;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected final boolean _hasDefaultCreator;
    protected Set<String> _ignorableProperties;
    protected final KeyDeserializer _keyDeserializer;
    protected final JavaType _mapType;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected boolean _standardStringKey;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;

    public MapDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer) {
        super(javaType);
        this._mapType = javaType;
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = valueInstantiator;
        this._hasDefaultCreator = valueInstantiator.canCreateUsingDefault();
        this._delegateDeserializer = null;
        this._propertyBasedCreator = null;
        this._standardStringKey = _isStdKeyDeser(javaType, keyDeserializer);
    }

    protected MapDeserializer(MapDeserializer mapDeserializer) {
        super(mapDeserializer._mapType);
        this._mapType = mapDeserializer._mapType;
        this._keyDeserializer = mapDeserializer._keyDeserializer;
        this._valueDeserializer = mapDeserializer._valueDeserializer;
        this._valueTypeDeserializer = mapDeserializer._valueTypeDeserializer;
        this._valueInstantiator = mapDeserializer._valueInstantiator;
        this._propertyBasedCreator = mapDeserializer._propertyBasedCreator;
        this._delegateDeserializer = mapDeserializer._delegateDeserializer;
        this._hasDefaultCreator = mapDeserializer._hasDefaultCreator;
        this._ignorableProperties = mapDeserializer._ignorableProperties;
        this._standardStringKey = mapDeserializer._standardStringKey;
    }

    protected MapDeserializer(MapDeserializer mapDeserializer, KeyDeserializer keyDeserializer, JsonDeserializer<Object> jsonDeserializer, TypeDeserializer typeDeserializer, Set<String> set) {
        super(mapDeserializer._mapType);
        this._mapType = mapDeserializer._mapType;
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = jsonDeserializer;
        this._valueTypeDeserializer = typeDeserializer;
        this._valueInstantiator = mapDeserializer._valueInstantiator;
        this._propertyBasedCreator = mapDeserializer._propertyBasedCreator;
        this._delegateDeserializer = mapDeserializer._delegateDeserializer;
        this._hasDefaultCreator = mapDeserializer._hasDefaultCreator;
        this._ignorableProperties = set;
        this._standardStringKey = _isStdKeyDeser(this._mapType, keyDeserializer);
    }

    protected MapDeserializer withResolved(KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer, Set<String> set) {
        return (this._keyDeserializer == keyDeserializer && this._valueDeserializer == jsonDeserializer && this._valueTypeDeserializer == typeDeserializer && this._ignorableProperties == set) ? this : new MapDeserializer(this, keyDeserializer, jsonDeserializer, typeDeserializer, set);
    }

    protected final boolean _isStdKeyDeser(JavaType javaType, KeyDeserializer keyDeserializer) {
        JavaType mo449getKeyType;
        if (keyDeserializer == null || (mo449getKeyType = javaType.mo449getKeyType()) == null) {
            return true;
        }
        Class<?> rawClass = mo449getKeyType.getRawClass();
        return (rawClass == String.class || rawClass == Object.class) && isDefaultKeyDeserializer(keyDeserializer);
    }

    public void setIgnorableProperties(String[] strArr) {
        this._ignorableProperties = (strArr == null || strArr.length == 0) ? null : ArrayBuilders.arrayToSet(strArr);
    }

    public void setIgnorableProperties(Set<String> set) {
        if (set == null || set.size() == 0) {
            set = null;
        }
        this._ignorableProperties = set;
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._valueInstantiator != null) {
            if (this._valueInstantiator.canCreateUsingDelegate()) {
                JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.mo255getConfig());
                if (delegateType == null) {
                    throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._mapType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
                }
                this._delegateDeserializer = findDeserializer(deserializationContext, delegateType, null);
            } else if (this._valueInstantiator.canCreateUsingArrayDelegate()) {
                JavaType arrayDelegateType = this._valueInstantiator.getArrayDelegateType(deserializationContext.mo255getConfig());
                if (arrayDelegateType == null) {
                    throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._mapType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getArrayDelegateType()'");
                }
                this._delegateDeserializer = findDeserializer(deserializationContext, arrayDelegateType, null);
            }
        }
        if (this._valueInstantiator.canCreateFromObjectWith()) {
            this._propertyBasedCreator = PropertyBasedCreator.construct(deserializationContext, this._valueInstantiator, this._valueInstantiator.getFromObjectArguments(deserializationContext.mo255getConfig()));
        }
        this._standardStringKey = _isStdKeyDeser(this._mapType, this._keyDeserializer);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        KeyDeserializer createContextual;
        JsonDeserializer<?> handleSecondaryContextualization;
        AnnotatedMember member;
        JsonIgnoreProperties.Value findPropertyIgnorals;
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        if (keyDeserializer == null) {
            createContextual = deserializationContext.findKeyDeserializer(this._mapType.mo449getKeyType(), beanProperty);
        } else {
            createContextual = keyDeserializer instanceof ContextualKeyDeserializer ? ((ContextualKeyDeserializer) keyDeserializer).createContextual(deserializationContext, beanProperty) : keyDeserializer;
        }
        JsonDeserializer<?> jsonDeserializer = this._valueDeserializer;
        if (beanProperty != null) {
            jsonDeserializer = findConvertingContentDeserializer(deserializationContext, beanProperty, jsonDeserializer);
        }
        JavaType mo463getContentType = this._mapType.mo463getContentType();
        if (jsonDeserializer == null) {
            handleSecondaryContextualization = deserializationContext.findContextualValueDeserializer(mo463getContentType, beanProperty);
        } else {
            handleSecondaryContextualization = deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, mo463getContentType);
        }
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        TypeDeserializer forProperty = typeDeserializer != null ? typeDeserializer.forProperty(beanProperty) : typeDeserializer;
        HashSet hashSet = this._ignorableProperties;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector != null && beanProperty != null && (member = beanProperty.getMember()) != null && (findPropertyIgnorals = annotationIntrospector.findPropertyIgnorals(member)) != null) {
            Set<String> findIgnoredForDeserialization = findPropertyIgnorals.findIgnoredForDeserialization();
            if (!findIgnoredForDeserialization.isEmpty()) {
                hashSet = hashSet == null ? new HashSet() : new HashSet(hashSet);
                for (String str : findIgnoredForDeserialization) {
                    hashSet.add(str);
                }
            }
        }
        return withResolved(createContextual, forProperty, handleSecondaryContextualization, hashSet);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JavaType getContentType() {
        return this._mapType.mo463getContentType();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._valueDeserializer == null && this._keyDeserializer == null && this._valueTypeDeserializer == null && this._ignorableProperties == null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserialize  reason: collision with other method in class */
    public Map<Object, Object> mo573deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingCreator(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return (Map) this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
        }
        if (!this._hasDefaultCreator) {
            return (Map) deserializationContext.handleMissingInstantiator(getMapClass(), jsonParser, "no default constructor found", new Object[0]);
        }
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.START_OBJECT && currentToken != JsonToken.FIELD_NAME && currentToken != JsonToken.END_OBJECT) {
            if (currentToken == JsonToken.VALUE_STRING) {
                return (Map) this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
            }
            return _deserializeFromEmpty(jsonParser, deserializationContext);
        }
        Map<Object, Object> map = (Map) this._valueInstantiator.createUsingDefault(deserializationContext);
        if (this._standardStringKey) {
            _readAndBindStringKeyMap(jsonParser, deserializationContext, map);
            return map;
        }
        _readAndBind(jsonParser, deserializationContext, map);
        return map;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Map<Object, Object> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        jsonParser.setCurrentValue(map);
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.START_OBJECT && currentToken != JsonToken.FIELD_NAME) {
            return (Map) deserializationContext.handleUnexpectedToken(getMapClass(), jsonParser);
        }
        if (this._standardStringKey) {
            _readAndBindStringKeyMap(jsonParser, deserializationContext, map);
            return map;
        }
        _readAndBind(jsonParser, deserializationContext, map);
        return map;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    public final Class<?> getMapClass() {
        return this._mapType.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this._mapType;
    }

    protected final void _readAndBind(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String currentName;
        Object mo321deserializeWithType;
        KeyDeserializer keyDeserializer = this._keyDeserializer;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        boolean z = jsonDeserializer.getObjectIdReader() != null;
        MapReferringAccumulator mapReferringAccumulator = z ? new MapReferringAccumulator(this._mapType.mo463getContentType().getRawClass(), map) : null;
        if (jsonParser.isExpectedStartObjectToken()) {
            currentName = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != JsonToken.END_OBJECT) {
                if (currentToken != JsonToken.FIELD_NAME) {
                    deserializationContext.reportWrongTokenException(jsonParser, JsonToken.FIELD_NAME, null, new Object[0]);
                }
                currentName = jsonParser.getCurrentName();
            } else {
                return;
            }
        }
        while (currentName != null) {
            Object deserializeKey = keyDeserializer.deserializeKey(currentName, deserializationContext);
            JsonToken nextToken = jsonParser.nextToken();
            if (this._ignorableProperties != null && this._ignorableProperties.contains(currentName)) {
                jsonParser.skipChildren();
            } else {
                try {
                    if (nextToken == JsonToken.VALUE_NULL) {
                        mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
                    } else if (typeDeserializer == null) {
                        mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                    } else {
                        mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                    }
                    if (z) {
                        mapReferringAccumulator.put(deserializeKey, mo321deserializeWithType);
                    } else {
                        map.put(deserializeKey, mo321deserializeWithType);
                    }
                } catch (UnresolvedForwardReference e) {
                    handleUnresolvedReference(jsonParser, mapReferringAccumulator, deserializeKey, e);
                } catch (Exception e2) {
                    wrapAndThrow(e2, map, currentName);
                }
            }
            currentName = jsonParser.nextFieldName();
        }
    }

    protected final void _readAndBindStringKeyMap(JsonParser jsonParser, DeserializationContext deserializationContext, Map<Object, Object> map) throws IOException {
        String currentName;
        Object mo321deserializeWithType;
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        boolean z = jsonDeserializer.getObjectIdReader() != null;
        MapReferringAccumulator mapReferringAccumulator = z ? new MapReferringAccumulator(this._mapType.mo463getContentType().getRawClass(), map) : null;
        if (jsonParser.isExpectedStartObjectToken()) {
            currentName = jsonParser.nextFieldName();
        } else {
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != JsonToken.END_OBJECT) {
                if (currentToken != JsonToken.FIELD_NAME) {
                    deserializationContext.reportWrongTokenException(jsonParser, JsonToken.FIELD_NAME, null, new Object[0]);
                }
                currentName = jsonParser.getCurrentName();
            } else {
                return;
            }
        }
        while (currentName != null) {
            JsonToken nextToken = jsonParser.nextToken();
            if (this._ignorableProperties != null && this._ignorableProperties.contains(currentName)) {
                jsonParser.skipChildren();
            } else {
                try {
                    if (nextToken == JsonToken.VALUE_NULL) {
                        mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
                    } else if (typeDeserializer == null) {
                        mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                    } else {
                        mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                    }
                    if (z) {
                        mapReferringAccumulator.put(currentName, mo321deserializeWithType);
                    } else {
                        map.put(currentName, mo321deserializeWithType);
                    }
                } catch (UnresolvedForwardReference e) {
                    handleUnresolvedReference(jsonParser, mapReferringAccumulator, currentName, e);
                } catch (Exception e2) {
                    wrapAndThrow(e2, map, currentName);
                }
            }
            currentName = jsonParser.nextFieldName();
        }
    }

    public Map<Object, Object> _deserializeUsingCreator(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String currentName;
        Object mo321deserializeWithType;
        PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext, null);
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        TypeDeserializer typeDeserializer = this._valueTypeDeserializer;
        if (jsonParser.isExpectedStartObjectToken()) {
            currentName = jsonParser.nextFieldName();
        } else {
            currentName = jsonParser.hasToken(JsonToken.FIELD_NAME) ? jsonParser.getCurrentName() : null;
        }
        while (currentName != null) {
            JsonToken nextToken = jsonParser.nextToken();
            if (this._ignorableProperties != null && this._ignorableProperties.contains(currentName)) {
                jsonParser.skipChildren();
            } else {
                SettableBeanProperty findCreatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
                if (findCreatorProperty != null) {
                    if (startBuilding.assignParameter(findCreatorProperty, findCreatorProperty.deserialize(jsonParser, deserializationContext))) {
                        jsonParser.nextToken();
                        try {
                            Map<Object, Object> map = (Map) propertyBasedCreator.build(deserializationContext, startBuilding);
                            _readAndBind(jsonParser, deserializationContext, map);
                            return map;
                        } catch (Exception e) {
                            wrapAndThrow(e, this._mapType.getRawClass(), currentName);
                            return null;
                        }
                    }
                } else {
                    Object deserializeKey = this._keyDeserializer.deserializeKey(currentName, deserializationContext);
                    try {
                        if (nextToken == JsonToken.VALUE_NULL) {
                            mo321deserializeWithType = jsonDeserializer.mo289getNullValue(deserializationContext);
                        } else if (typeDeserializer == null) {
                            mo321deserializeWithType = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
                        } else {
                            mo321deserializeWithType = jsonDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, typeDeserializer);
                        }
                        startBuilding.bufferMapProperty(deserializeKey, mo321deserializeWithType);
                    } catch (Exception e2) {
                        wrapAndThrow(e2, this._mapType.getRawClass(), currentName);
                        return null;
                    }
                }
            }
            currentName = jsonParser.nextFieldName();
        }
        try {
            return (Map) propertyBasedCreator.build(deserializationContext, startBuilding);
        } catch (Exception e3) {
            wrapAndThrow(e3, this._mapType.getRawClass(), currentName);
            return null;
        }
    }

    @Deprecated
    protected void wrapAndThrow(Throwable th, Object obj) throws IOException {
        wrapAndThrow(th, obj, null);
    }

    private void handleUnresolvedReference(JsonParser jsonParser, MapReferringAccumulator mapReferringAccumulator, Object obj, UnresolvedForwardReference unresolvedForwardReference) throws JsonMappingException {
        if (mapReferringAccumulator == null) {
            throw JsonMappingException.from(jsonParser, "Unresolved forward reference but no identity info.", unresolvedForwardReference);
        }
        unresolvedForwardReference.getRoid().appendReferring(mapReferringAccumulator.handleUnresolvedReference(unresolvedForwardReference, obj));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class MapReferringAccumulator {
        private List<MapReferring> _accumulator = new ArrayList();
        private Map<Object, Object> _result;
        private final Class<?> _valueType;

        public MapReferringAccumulator(Class<?> cls, Map<Object, Object> map) {
            this._valueType = cls;
            this._result = map;
        }

        public void put(Object obj, Object obj2) {
            if (this._accumulator.isEmpty()) {
                this._result.put(obj, obj2);
            } else {
                this._accumulator.get(this._accumulator.size() - 1).next.put(obj, obj2);
            }
        }

        public ReadableObjectId.Referring handleUnresolvedReference(UnresolvedForwardReference unresolvedForwardReference, Object obj) {
            MapReferring mapReferring = new MapReferring(this, unresolvedForwardReference, this._valueType, obj);
            this._accumulator.add(mapReferring);
            return mapReferring;
        }

        public void resolveForwardReference(Object obj, Object obj2) throws IOException {
            Iterator<MapReferring> it = this._accumulator.iterator();
            Map<Object, Object> map = this._result;
            while (true) {
                Map<Object, Object> map2 = map;
                if (it.hasNext()) {
                    MapReferring next = it.next();
                    if (next.hasId(obj)) {
                        it.remove();
                        map2.put(next.key, obj2);
                        map2.putAll(next.next);
                        return;
                    }
                    map = next.next;
                } else {
                    throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + obj + "] that wasn't previously seen as unresolved.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class MapReferring extends ReadableObjectId.Referring {
        private final MapReferringAccumulator _parent;
        public final Object key;
        public final Map<Object, Object> next;

        MapReferring(MapReferringAccumulator mapReferringAccumulator, UnresolvedForwardReference unresolvedForwardReference, Class<?> cls, Object obj) {
            super(unresolvedForwardReference, cls);
            this.next = new LinkedHashMap();
            this._parent = mapReferringAccumulator;
            this.key = obj;
        }

        @Override // com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring
        public void handleResolvedForwardReference(Object obj, Object obj2) throws IOException {
            this._parent.resolveForwardReference(obj, obj2);
        }
    }
}
