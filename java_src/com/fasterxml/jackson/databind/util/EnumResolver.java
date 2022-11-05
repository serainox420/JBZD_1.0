package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class EnumResolver implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Enum<?> _defaultValue;
    protected final Class<Enum<?>> _enumClass;
    protected final Enum<?>[] _enums;
    protected final HashMap<String, Enum<?>> _enumsById;

    protected EnumResolver(Class<Enum<?>> cls, Enum<?>[] enumArr, HashMap<String, Enum<?>> hashMap, Enum<?> r4) {
        this._enumClass = cls;
        this._enums = enumArr;
        this._enumsById = hashMap;
        this._defaultValue = r4;
    }

    public static EnumResolver constructFor(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        if (enumConstants == null) {
            throw new IllegalArgumentException("No enum constants for class " + cls.getName());
        }
        String[] findEnumValues = annotationIntrospector.findEnumValues(cls, enumConstants, new String[enumConstants.length]);
        HashMap hashMap = new HashMap();
        int length = enumConstants.length;
        for (int i = 0; i < length; i++) {
            String str = findEnumValues[i];
            if (str == null) {
                str = enumConstants[i].name();
            }
            hashMap.put(str, enumConstants[i]);
        }
        return new EnumResolver(cls, enumConstants, hashMap, annotationIntrospector.findDefaultEnumValue(cls));
    }

    @Deprecated
    public static EnumResolver constructUsingToString(Class<Enum<?>> cls) {
        return constructUsingToString(cls, null);
    }

    public static EnumResolver constructUsingToString(Class<Enum<?>> cls, AnnotationIntrospector annotationIntrospector) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        HashMap hashMap = new HashMap();
        int length = enumConstants.length;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            Enum<?> r3 = enumConstants[length];
            hashMap.put(r3.toString(), r3);
        }
        return new EnumResolver(cls, enumConstants, hashMap, annotationIntrospector == null ? null : annotationIntrospector.findDefaultEnumValue(cls));
    }

    @Deprecated
    public static EnumResolver constructUsingMethod(Class<Enum<?>> cls, Method method) {
        return constructUsingMethod(cls, method, null);
    }

    public static EnumResolver constructUsingMethod(Class<Enum<?>> cls, Method method, AnnotationIntrospector annotationIntrospector) {
        Enum<?>[] enumConstants = cls.getEnumConstants();
        HashMap hashMap = new HashMap();
        int length = enumConstants.length;
        while (true) {
            length--;
            if (length < 0) {
                break;
            }
            Enum<?> r3 = enumConstants[length];
            try {
                Object invoke = method.invoke(r3, new Object[0]);
                if (invoke != null) {
                    hashMap.put(invoke.toString(), r3);
                }
            } catch (Exception e) {
                throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + r3 + ": " + e.getMessage());
            }
        }
        return new EnumResolver(cls, enumConstants, hashMap, annotationIntrospector != null ? annotationIntrospector.findDefaultEnumValue(cls) : null);
    }

    public static EnumResolver constructUnsafe(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return constructFor(cls, annotationIntrospector);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingToString(Class<?> cls) {
        return constructUnsafeUsingToString(cls, null);
    }

    public static EnumResolver constructUnsafeUsingToString(Class<?> cls, AnnotationIntrospector annotationIntrospector) {
        return constructUsingToString(cls, annotationIntrospector);
    }

    @Deprecated
    public static EnumResolver constructUnsafeUsingMethod(Class<?> cls, Method method) {
        return constructUnsafeUsingMethod(cls, method, null);
    }

    public static EnumResolver constructUnsafeUsingMethod(Class<?> cls, Method method, AnnotationIntrospector annotationIntrospector) {
        return constructUsingMethod(cls, method, annotationIntrospector);
    }

    public CompactStringObjectMap constructLookup() {
        return CompactStringObjectMap.construct(this._enumsById);
    }

    public Enum<?> findEnum(String str) {
        return this._enumsById.get(str);
    }

    public Enum<?> getEnum(int i) {
        if (i < 0 || i >= this._enums.length) {
            return null;
        }
        return this._enums[i];
    }

    public Enum<?> getDefaultValue() {
        return this._defaultValue;
    }

    public Enum<?>[] getRawEnums() {
        return this._enums;
    }

    public List<Enum<?>> getEnums() {
        ArrayList arrayList = new ArrayList(this._enums.length);
        for (Enum<?> r4 : this._enums) {
            arrayList.add(r4);
        }
        return arrayList;
    }

    public Collection<String> getEnumIds() {
        return this._enumsById.keySet();
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }

    public int lastValidIndex() {
        return this._enums.length - 1;
    }
}
