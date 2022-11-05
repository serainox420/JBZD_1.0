package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ConfigOverrides implements Serializable {
    private static final long serialVersionUID = 1;
    protected Map<Class<?>, MutableConfigOverride> _overrides;

    public ConfigOverrides() {
        this._overrides = null;
    }

    protected ConfigOverrides(Map<Class<?>, MutableConfigOverride> map) {
        this._overrides = map;
    }

    public ConfigOverrides copy() {
        if (this._overrides == null) {
            return new ConfigOverrides();
        }
        Map<Class<?>, MutableConfigOverride> _newMap = _newMap();
        for (Map.Entry<Class<?>, MutableConfigOverride> entry : this._overrides.entrySet()) {
            _newMap.put(entry.getKey(), entry.getValue().copy());
        }
        return new ConfigOverrides(_newMap);
    }

    public ConfigOverride findOverride(Class<?> cls) {
        if (this._overrides == null) {
            return null;
        }
        return this._overrides.get(cls);
    }

    public MutableConfigOverride findOrCreateOverride(Class<?> cls) {
        if (this._overrides == null) {
            this._overrides = _newMap();
        }
        MutableConfigOverride mutableConfigOverride = this._overrides.get(cls);
        if (mutableConfigOverride == null) {
            MutableConfigOverride mutableConfigOverride2 = new MutableConfigOverride();
            this._overrides.put(cls, mutableConfigOverride2);
            return mutableConfigOverride2;
        }
        return mutableConfigOverride;
    }

    protected Map<Class<?>, MutableConfigOverride> _newMap() {
        return new HashMap();
    }
}
