package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.IOException;
import java.util.EnumMap;
import java.util.EnumSet;
/* loaded from: classes.dex */
public class ClassNameIdResolver extends TypeIdResolverBase {
    public ClassNameIdResolver(JavaType javaType, TypeFactory typeFactory) {
        super(javaType, typeFactory);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JsonTypeInfo.Id getMechanism() {
        return JsonTypeInfo.Id.CLASS;
    }

    public void registerSubtype(Class<?> cls, String str) {
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValue(Object obj) {
        return _idFrom(obj, obj.getClass(), this._typeFactory);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String idFromValueAndType(Object obj, Class<?> cls) {
        return _idFrom(obj, cls, this._typeFactory);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public JavaType typeFromId(DatabindContext databindContext, String str) throws IOException {
        return _typeFromId(str, databindContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType _typeFromId(String str, DatabindContext databindContext) throws IOException {
        TypeFactory typeFactory = databindContext.getTypeFactory();
        if (str.indexOf(60) > 0) {
            return typeFactory.constructFromCanonical(str);
        }
        try {
            return typeFactory.constructSpecializedType(this._baseType, typeFactory.findClass(str));
        } catch (ClassNotFoundException e) {
            if (databindContext instanceof DeserializationContext) {
                return ((DeserializationContext) databindContext).handleUnknownTypeId(this._baseType, str, this, "no such class found");
            }
            return null;
        } catch (Exception e2) {
            throw new IllegalArgumentException("Invalid type id '" + str + "' (for id type 'Id.class'): " + e2.getMessage(), e2);
        }
    }

    protected final String _idFrom(Object obj, Class<?> cls, TypeFactory typeFactory) {
        if (Enum.class.isAssignableFrom(cls) && !cls.isEnum()) {
            cls = cls.getSuperclass();
        }
        String name = cls.getName();
        if (name.startsWith("java.util")) {
            if (obj instanceof EnumSet) {
                return typeFactory.constructCollectionType(EnumSet.class, ClassUtil.findEnumType((EnumSet) obj)).toCanonical();
            }
            if (obj instanceof EnumMap) {
                return typeFactory.constructMapType(EnumMap.class, ClassUtil.findEnumType((EnumMap) obj), Object.class).toCanonical();
            }
            String substring = name.substring(9);
            if ((substring.startsWith(".Arrays$") || substring.startsWith(".Collections$")) && name.indexOf("List") >= 0) {
                return "java.util.ArrayList";
            }
            return name;
        } else if (name.indexOf(36) >= 0 && ClassUtil.getOuterClass(cls) != null && ClassUtil.getOuterClass(this._baseType.getRawClass()) == null) {
            return this._baseType.getRawClass().getName();
        } else {
            return name;
        }
    }

    @Override // com.fasterxml.jackson.databind.jsontype.impl.TypeIdResolverBase, com.fasterxml.jackson.databind.jsontype.TypeIdResolver
    public String getDescForKnownTypeIds() {
        return "class name used as type id";
    }
}
