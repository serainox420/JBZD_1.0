package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ContextAttributes {
    public abstract Object getAttribute(Object obj);

    public abstract ContextAttributes withPerCallAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttribute(Object obj, Object obj2);

    public abstract ContextAttributes withSharedAttributes(Map<?, ?> map);

    public abstract ContextAttributes withoutSharedAttribute(Object obj);

    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    /* loaded from: classes.dex */
    public static class Impl extends ContextAttributes implements Serializable {
        protected static final Impl EMPTY = new Impl(Collections.emptyMap());
        protected static final Object NULL_SURROGATE = new Object();
        private static final long serialVersionUID = 1;
        protected transient Map<Object, Object> _nonShared;
        protected final Map<?, ?> _shared;

        protected Impl(Map<?, ?> map) {
            this._shared = map;
            this._nonShared = null;
        }

        protected Impl(Map<?, ?> map, Map<Object, Object> map2) {
            this._shared = map;
            this._nonShared = map2;
        }

        public static ContextAttributes getEmpty() {
            return EMPTY;
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withSharedAttribute(Object obj, Object obj2) {
            Map<Object, Object> _copy;
            if (this == EMPTY) {
                _copy = new HashMap<>(8);
            } else {
                _copy = _copy(this._shared);
            }
            _copy.put(obj, obj2);
            return new Impl(_copy);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withSharedAttributes(Map<?, ?> map) {
            return new Impl(map);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withoutSharedAttribute(Object obj) {
            if (!this._shared.isEmpty() && this._shared.containsKey(obj)) {
                if (this._shared.size() == 1) {
                    return EMPTY;
                }
                Map<Object, Object> _copy = _copy(this._shared);
                _copy.remove(obj);
                return new Impl(_copy);
            }
            return this;
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public Object getAttribute(Object obj) {
            Object obj2;
            if (this._nonShared == null || (obj2 = this._nonShared.get(obj)) == null) {
                return this._shared.get(obj);
            }
            if (obj2 == NULL_SURROGATE) {
                return null;
            }
            return obj2;
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withPerCallAttribute(Object obj, Object obj2) {
            if (obj2 == null) {
                if (this._shared.containsKey(obj)) {
                    obj2 = NULL_SURROGATE;
                } else if (this._nonShared != null && this._nonShared.containsKey(obj)) {
                    this._nonShared.remove(obj);
                    return this;
                } else {
                    return this;
                }
            }
            if (this._nonShared == null) {
                return nonSharedInstance(obj, obj2);
            }
            this._nonShared.put(obj, obj2);
            return this;
        }

        protected ContextAttributes nonSharedInstance(Object obj, Object obj2) {
            HashMap hashMap = new HashMap();
            if (obj2 == null) {
                obj2 = NULL_SURROGATE;
            }
            hashMap.put(obj, obj2);
            return new Impl(this._shared, hashMap);
        }

        private Map<Object, Object> _copy(Map<?, ?> map) {
            return new HashMap(map);
        }
    }
}
