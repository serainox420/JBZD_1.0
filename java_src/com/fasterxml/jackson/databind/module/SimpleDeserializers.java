package com.fasterxml.jackson.databind.module;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.Deserializers;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class SimpleDeserializers implements Deserializers, Serializable {
    private static final long serialVersionUID = 1;
    protected HashMap<ClassKey, JsonDeserializer<?>> _classMappings = null;
    protected boolean _hasEnumDeserializer = false;

    public SimpleDeserializers() {
    }

    public SimpleDeserializers(Map<Class<?>, JsonDeserializer<?>> map) {
        addDeserializers(map);
    }

    public <T> void addDeserializer(Class<T> cls, JsonDeserializer<? extends T> jsonDeserializer) {
        ClassKey classKey = new ClassKey(cls);
        if (this._classMappings == null) {
            this._classMappings = new HashMap<>();
        }
        this._classMappings.put(classKey, jsonDeserializer);
        if (cls == Enum.class) {
            this._hasEnumDeserializer = true;
        }
    }

    public void addDeserializers(Map<Class<?>, JsonDeserializer<?>> map) {
        for (Map.Entry<Class<?>, JsonDeserializer<?>> entry : map.entrySet()) {
            addDeserializer(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(arrayType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(javaType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(collectionType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(collectionLikeType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        JsonDeserializer<?> jsonDeserializer = this._classMappings.get(new ClassKey(cls));
        if (jsonDeserializer == null && this._hasEnumDeserializer && cls.isEnum()) {
            return this._classMappings.get(new ClassKey(Enum.class));
        }
        return jsonDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findTreeNodeDeserializer(Class<? extends JsonNode> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(cls));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(referenceType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(mapType.getRawClass()));
    }

    @Override // com.fasterxml.jackson.databind.deser.Deserializers
    public JsonDeserializer<?> findMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        if (this._classMappings == null) {
            return null;
        }
        return this._classMappings.get(new ClassKey(mapLikeType.getRawClass()));
    }
}
