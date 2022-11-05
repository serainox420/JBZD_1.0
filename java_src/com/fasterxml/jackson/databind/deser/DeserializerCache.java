package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class DeserializerCache implements Serializable {
    private static final long serialVersionUID = 1;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers = new ConcurrentHashMap<>(64, 0.75f, 4);
    protected final HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers = new HashMap<>(8);

    Object writeReplace() {
        this._incompleteDeserializers.clear();
        return this;
    }

    public int cachedDeserializersCount() {
        return this._cachedDeserializers.size();
    }

    public void flushCachedDeserializers() {
        this._cachedDeserializers.clear();
    }

    public JsonDeserializer<Object> findValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
        if (_findCachedDeserializer == null) {
            JsonDeserializer<Object> _createAndCacheValueDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
            if (_createAndCacheValueDeserializer == null) {
                return _handleUnknownValueDeserializer(deserializationContext, javaType);
            }
            return _createAndCacheValueDeserializer;
        }
        return _findCachedDeserializer;
    }

    public KeyDeserializer findKeyDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        KeyDeserializer createKeyDeserializer = deserializerFactory.createKeyDeserializer(deserializationContext, javaType);
        if (createKeyDeserializer == null) {
            return _handleUnknownKeyDeserializer(deserializationContext, javaType);
        }
        if (createKeyDeserializer instanceof ResolvableDeserializer) {
            ((ResolvableDeserializer) createKeyDeserializer).resolve(deserializationContext);
            return createKeyDeserializer;
        }
        return createKeyDeserializer;
    }

    public boolean hasValueDeserializerFor(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer = _findCachedDeserializer(javaType);
        if (_findCachedDeserializer == null) {
            _findCachedDeserializer = _createAndCacheValueDeserializer(deserializationContext, deserializerFactory, javaType);
        }
        return _findCachedDeserializer != null;
    }

    protected JsonDeserializer<Object> _findCachedDeserializer(JavaType javaType) {
        if (javaType == null) {
            throw new IllegalArgumentException("Null JavaType passed");
        }
        if (!_hasCustomValueHandler(javaType)) {
            return this._cachedDeserializers.get(javaType);
        }
        return null;
    }

    protected JsonDeserializer<Object> _createAndCacheValueDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        JsonDeserializer<Object> _findCachedDeserializer;
        synchronized (this._incompleteDeserializers) {
            _findCachedDeserializer = _findCachedDeserializer(javaType);
            if (_findCachedDeserializer == null) {
                int size = this._incompleteDeserializers.size();
                if (size <= 0 || (_findCachedDeserializer = this._incompleteDeserializers.get(javaType)) == null) {
                    _findCachedDeserializer = _createAndCache2(deserializationContext, deserializerFactory, javaType);
                    if (size == 0 && this._incompleteDeserializers.size() > 0) {
                        this._incompleteDeserializers.clear();
                    }
                }
            }
        }
        return _findCachedDeserializer;
    }

    protected JsonDeserializer<Object> _createAndCache2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        try {
            JsonDeserializer<Object> _createDeserializer = _createDeserializer(deserializationContext, deserializerFactory, javaType);
            if (_createDeserializer == null) {
                return null;
            }
            boolean z = !_hasCustomValueHandler(javaType) && _createDeserializer.isCachable();
            if (_createDeserializer instanceof ResolvableDeserializer) {
                this._incompleteDeserializers.put(javaType, _createDeserializer);
                ((ResolvableDeserializer) _createDeserializer).resolve(deserializationContext);
                this._incompleteDeserializers.remove(javaType);
            }
            if (z) {
                this._cachedDeserializers.put(javaType, _createDeserializer);
                return _createDeserializer;
            }
            return _createDeserializer;
        } catch (IllegalArgumentException e) {
            throw JsonMappingException.from(deserializationContext, e.getMessage(), e);
        }
    }

    protected JsonDeserializer<Object> _createDeserializer(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType) throws JsonMappingException {
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        if (javaType.isAbstract() || javaType.isMapLikeType() || javaType.isCollectionLikeType()) {
            javaType = deserializerFactory.mapAbstractType(mo255getConfig, javaType);
        }
        BeanDescription introspect = mo255getConfig.introspect(javaType);
        JsonDeserializer<Object> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findDeserializerFromAnnotation != null) {
            return findDeserializerFromAnnotation;
        }
        JavaType modifyTypeByAnnotation = modifyTypeByAnnotation(deserializationContext, introspect.getClassInfo(), javaType);
        if (modifyTypeByAnnotation != javaType) {
            introspect = mo255getConfig.introspect(modifyTypeByAnnotation);
            javaType = modifyTypeByAnnotation;
        }
        Class<?> findPOJOBuilder = introspect.findPOJOBuilder();
        if (findPOJOBuilder != null) {
            return deserializerFactory.createBuilderBasedDeserializer(deserializationContext, javaType, introspect, findPOJOBuilder);
        }
        Converter<Object, Object> findDeserializationConverter = introspect.findDeserializationConverter();
        if (findDeserializationConverter == null) {
            return _createDeserializer2(deserializationContext, deserializerFactory, javaType, introspect);
        }
        JavaType inputType = findDeserializationConverter.getInputType(deserializationContext.getTypeFactory());
        if (!inputType.hasRawClass(javaType.getRawClass())) {
            introspect = mo255getConfig.introspect(inputType);
        }
        return new StdDelegatingDeserializer(findDeserializationConverter, inputType, _createDeserializer2(deserializationContext, deserializerFactory, inputType, introspect));
    }

    protected JsonDeserializer<?> _createDeserializer2(DeserializationContext deserializationContext, DeserializerFactory deserializerFactory, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonFormat.Value findExpectedFormat;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        if (javaType.isEnumType()) {
            return deserializerFactory.createEnumDeserializer(deserializationContext, javaType, beanDescription);
        }
        if (javaType.isContainerType()) {
            if (javaType.isArrayType()) {
                return deserializerFactory.createArrayDeserializer(deserializationContext, (ArrayType) javaType, beanDescription);
            }
            if (javaType.isMapLikeType()) {
                MapLikeType mapLikeType = (MapLikeType) javaType;
                if (mapLikeType.isTrueMapType()) {
                    return deserializerFactory.createMapDeserializer(deserializationContext, (MapType) mapLikeType, beanDescription);
                }
                return deserializerFactory.createMapLikeDeserializer(deserializationContext, mapLikeType, beanDescription);
            } else if (javaType.isCollectionLikeType() && ((findExpectedFormat = beanDescription.findExpectedFormat(null)) == null || findExpectedFormat.getShape() != JsonFormat.Shape.OBJECT)) {
                CollectionLikeType collectionLikeType = (CollectionLikeType) javaType;
                if (collectionLikeType.isTrueCollectionType()) {
                    return deserializerFactory.createCollectionDeserializer(deserializationContext, (CollectionType) collectionLikeType, beanDescription);
                }
                return deserializerFactory.createCollectionLikeDeserializer(deserializationContext, collectionLikeType, beanDescription);
            }
        }
        if (javaType.isReferenceType()) {
            return deserializerFactory.createReferenceDeserializer(deserializationContext, (ReferenceType) javaType, beanDescription);
        }
        if (JsonNode.class.isAssignableFrom(javaType.getRawClass())) {
            return deserializerFactory.createTreeDeserializer(mo255getConfig, javaType, beanDescription);
        }
        return deserializerFactory.createBeanDeserializer(deserializationContext, javaType, beanDescription);
    }

    protected JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer = deserializationContext.getAnnotationIntrospector().findDeserializer(annotated);
        if (findDeserializer == null) {
            return null;
        }
        return findConvertingDeserializer(deserializationContext, annotated, deserializationContext.deserializerInstance(annotated, findDeserializer));
    }

    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext deserializationContext, Annotated annotated, JsonDeserializer<Object> jsonDeserializer) throws JsonMappingException {
        Converter<Object, Object> findConverter = findConverter(deserializationContext, annotated);
        return findConverter == null ? jsonDeserializer : new StdDelegatingDeserializer(findConverter, findConverter.getInputType(deserializationContext.getTypeFactory()), jsonDeserializer);
    }

    protected Converter<Object, Object> findConverter(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializationConverter = deserializationContext.getAnnotationIntrospector().findDeserializationConverter(annotated);
        if (findDeserializationConverter == null) {
            return null;
        }
        return deserializationContext.converterInstance(annotated, findDeserializationConverter);
    }

    private JavaType modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, JavaType javaType) throws JsonMappingException {
        Object findContentDeserializer;
        JsonDeserializer<Object> deserializerInstance;
        JavaType mo449getKeyType;
        Object findKeyDeserializer;
        KeyDeserializer keyDeserializerInstance;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector != null) {
            if (javaType.isMapLikeType() && (mo449getKeyType = javaType.mo449getKeyType()) != null && mo449getKeyType.getValueHandler() == null && (findKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated)) != null && (keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer)) != null) {
                javaType = ((MapLikeType) javaType).mo459withKeyValueHandler(keyDeserializerInstance);
                javaType.mo449getKeyType();
            }
            JavaType mo463getContentType = javaType.mo463getContentType();
            if (mo463getContentType != null && mo463getContentType.getValueHandler() == null && (findContentDeserializer = annotationIntrospector.findContentDeserializer(annotated)) != null) {
                if (findContentDeserializer instanceof JsonDeserializer) {
                    JsonDeserializer jsonDeserializer = (JsonDeserializer) findContentDeserializer;
                    deserializerInstance = null;
                } else {
                    Class<?> _verifyAsClass = _verifyAsClass(findContentDeserializer, "findContentDeserializer", JsonDeserializer.None.class);
                    deserializerInstance = _verifyAsClass != null ? deserializationContext.deserializerInstance(annotated, _verifyAsClass) : null;
                }
                if (deserializerInstance != null) {
                    javaType = javaType.mo470withContentValueHandler(deserializerInstance);
                }
            }
            return annotationIntrospector.refineDeserializationType(deserializationContext.mo255getConfig(), annotated, javaType);
        }
        return javaType;
    }

    private boolean _hasCustomValueHandler(JavaType javaType) {
        JavaType mo463getContentType;
        if (!javaType.isContainerType() || (mo463getContentType = javaType.mo463getContentType()) == null) {
            return false;
        }
        return (mo463getContentType.getValueHandler() == null && mo463getContentType.getTypeHandler() == null) ? false : true;
    }

    private Class<?> _verifyAsClass(Object obj, String str, Class<?> cls) {
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector." + str + "() returned value of type " + obj.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
        }
        Class<?> cls2 = (Class) obj;
        if (cls2 != cls && !ClassUtil.isBogusClass(cls2)) {
            return cls2;
        }
        return null;
    }

    protected JsonDeserializer<Object> _handleUnknownValueDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        if (!ClassUtil.isConcrete(javaType.getRawClass())) {
            deserializationContext.reportMappingException("Can not find a Value deserializer for abstract type %s", javaType);
        }
        deserializationContext.reportMappingException("Can not find a Value deserializer for type %s", javaType);
        return null;
    }

    protected KeyDeserializer _handleUnknownKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        deserializationContext.reportMappingException("Can not find a (Map) Key deserializer for type %s", javaType);
        return null;
    }
}
