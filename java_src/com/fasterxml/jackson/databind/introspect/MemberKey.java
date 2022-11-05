package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class MemberKey {
    static final Class<?>[] NO_CLASSES = new Class[0];
    final Class<?>[] _argTypes;
    final String _name;

    public MemberKey(Method method) {
        this(method.getName(), method.getParameterTypes());
    }

    public MemberKey(Constructor<?> constructor) {
        this("", constructor.getParameterTypes());
    }

    public MemberKey(String str, Class<?>[] clsArr) {
        this._name = str;
        this._argTypes = clsArr == null ? NO_CLASSES : clsArr;
    }

    public String toString() {
        return this._name + "(" + this._argTypes.length + "-args)";
    }

    public int hashCode() {
        return this._name.hashCode() + this._argTypes.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            MemberKey memberKey = (MemberKey) obj;
            if (!this._name.equals(memberKey._name)) {
                return false;
            }
            Class<?>[] clsArr = memberKey._argTypes;
            int length = this._argTypes.length;
            if (clsArr.length != length) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                if (clsArr[i] != this._argTypes[i]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
