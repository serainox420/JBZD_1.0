package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.type.ClassKey;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class SimpleMixInResolver implements ClassIntrospector.MixInResolver, Serializable {
    private static final long serialVersionUID = 1;
    protected Map<ClassKey, Class<?>> _localMixIns;
    protected final ClassIntrospector.MixInResolver _overrides;

    public SimpleMixInResolver(ClassIntrospector.MixInResolver mixInResolver) {
        this._overrides = mixInResolver;
    }

    protected SimpleMixInResolver(ClassIntrospector.MixInResolver mixInResolver, Map<ClassKey, Class<?>> map) {
        this._overrides = mixInResolver;
        this._localMixIns = map;
    }

    public SimpleMixInResolver withOverrides(ClassIntrospector.MixInResolver mixInResolver) {
        return new SimpleMixInResolver(mixInResolver, this._localMixIns);
    }

    public SimpleMixInResolver withoutLocalDefinitions() {
        return new SimpleMixInResolver(this._overrides, null);
    }

    public void setLocalDefinitions(Map<Class<?>, Class<?>> map) {
        if (map == null || map.isEmpty()) {
            this._localMixIns = null;
            return;
        }
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<Class<?>, Class<?>> entry : map.entrySet()) {
            hashMap.put(new ClassKey(entry.getKey()), entry.getValue());
        }
        this._localMixIns = hashMap;
    }

    public void addLocalDefinition(Class<?> cls, Class<?> cls2) {
        if (this._localMixIns == null) {
            this._localMixIns = new HashMap();
        }
        this._localMixIns.put(new ClassKey(cls), cls2);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    /* renamed from: copy  reason: collision with other method in class */
    public SimpleMixInResolver mo353copy() {
        HashMap hashMap = null;
        ClassIntrospector.MixInResolver mo353copy = this._overrides == null ? null : this._overrides.mo353copy();
        if (this._localMixIns != null) {
            hashMap = new HashMap(this._localMixIns);
        }
        return new SimpleMixInResolver(mo353copy, hashMap);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    public Class<?> findMixInClassFor(Class<?> cls) {
        Class<?> findMixInClassFor = this._overrides == null ? null : this._overrides.findMixInClassFor(cls);
        if (findMixInClassFor == null && this._localMixIns != null) {
            return this._localMixIns.get(new ClassKey(cls));
        }
        return findMixInClassFor;
    }

    public int localSize() {
        if (this._localMixIns == null) {
            return 0;
        }
        return this._localMixIns.size();
    }
}
