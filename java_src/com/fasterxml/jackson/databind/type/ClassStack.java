package com.fasterxml.jackson.databind.type;

import com.facebook.appevents.AppEventsConstants;
import com.fasterxml.jackson.databind.JavaType;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class ClassStack {
    protected final Class<?> _current;
    protected final ClassStack _parent;
    private ArrayList<ResolvedRecursiveType> _selfRefs;

    public ClassStack(Class<?> cls) {
        this(null, cls);
    }

    private ClassStack(ClassStack classStack, Class<?> cls) {
        this._parent = classStack;
        this._current = cls;
    }

    public ClassStack child(Class<?> cls) {
        return new ClassStack(this, cls);
    }

    public void addSelfReference(ResolvedRecursiveType resolvedRecursiveType) {
        if (this._selfRefs == null) {
            this._selfRefs = new ArrayList<>();
        }
        this._selfRefs.add(resolvedRecursiveType);
    }

    public void resolveSelfReferences(JavaType javaType) {
        if (this._selfRefs != null) {
            Iterator<ResolvedRecursiveType> it = this._selfRefs.iterator();
            while (it.hasNext()) {
                it.next().setReference(javaType);
            }
        }
    }

    public ClassStack find(Class<?> cls) {
        if (this._current != cls) {
            for (ClassStack classStack = this._parent; classStack != null; classStack = classStack._parent) {
                if (classStack._current == cls) {
                    return classStack;
                }
            }
            return null;
        }
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[ClassStack (self-refs: ").append(this._selfRefs == null ? AppEventsConstants.EVENT_PARAM_VALUE_NO : String.valueOf(this._selfRefs.size())).append(')');
        while (this != null) {
            sb.append(' ').append(this._current.getName());
            this = this._parent;
        }
        sb.append(']');
        return sb.toString();
    }
}
