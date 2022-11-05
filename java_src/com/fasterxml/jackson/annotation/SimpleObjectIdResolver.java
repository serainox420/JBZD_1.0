package com.fasterxml.jackson.annotation;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class SimpleObjectIdResolver implements ObjectIdResolver {
    protected Map<ObjectIdGenerator.IdKey, Object> _items;

    @Override // com.fasterxml.jackson.annotation.ObjectIdResolver
    public void bindItem(ObjectIdGenerator.IdKey idKey, Object obj) {
        if (this._items == null) {
            this._items = new HashMap();
        } else if (this._items.containsKey(idKey)) {
            throw new IllegalStateException("Already had POJO for id (" + idKey.key.getClass().getName() + ") [" + idKey + "]");
        }
        this._items.put(idKey, obj);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdResolver
    public Object resolveId(ObjectIdGenerator.IdKey idKey) {
        if (this._items == null) {
            return null;
        }
        return this._items.get(idKey);
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdResolver
    public boolean canUseFor(ObjectIdResolver objectIdResolver) {
        return objectIdResolver.getClass() == getClass();
    }

    @Override // com.fasterxml.jackson.annotation.ObjectIdResolver
    public ObjectIdResolver newForDeserialization(Object obj) {
        return new SimpleObjectIdResolver();
    }
}
