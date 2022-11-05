package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.Array;
/* loaded from: classes.dex */
public final class ArrayType extends TypeBase {
    private static final long serialVersionUID = 1;
    protected final JavaType _componentType;
    protected final Object _emptyArray;

    protected ArrayType(JavaType javaType, TypeBindings typeBindings, Object obj, Object obj2, Object obj3, boolean z) {
        super(obj.getClass(), typeBindings, null, null, javaType.hashCode(), obj2, obj3, z);
        this._componentType = javaType;
        this._emptyArray = obj;
    }

    public static ArrayType construct(JavaType javaType, TypeBindings typeBindings) {
        return construct(javaType, typeBindings, null, null);
    }

    public static ArrayType construct(JavaType javaType, TypeBindings typeBindings, Object obj, Object obj2) {
        return new ArrayType(javaType, typeBindings, Array.newInstance(javaType.getRawClass(), 0), obj, obj2, false);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return new ArrayType(javaType, this._bindings, Array.newInstance(javaType.getRawClass(), 0), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withTypeHandler  reason: collision with other method in class */
    public ArrayType mo472withTypeHandler(Object obj) {
        return obj == this._typeHandler ? this : new ArrayType(this._componentType, this._bindings, this._emptyArray, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentTypeHandler  reason: collision with other method in class */
    public ArrayType mo465withContentTypeHandler(Object obj) {
        return obj == this._componentType.getTypeHandler() ? this : new ArrayType(this._componentType.mo472withTypeHandler(obj), this._bindings, this._emptyArray, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withValueHandler  reason: collision with other method in class */
    public ArrayType mo473withValueHandler(Object obj) {
        return obj == this._valueHandler ? this : new ArrayType(this._componentType, this._bindings, this._emptyArray, obj, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentValueHandler  reason: collision with other method in class */
    public ArrayType mo470withContentValueHandler(Object obj) {
        return obj == this._componentType.getValueHandler() ? this : new ArrayType(this._componentType.mo473withValueHandler(obj), this._bindings, this._emptyArray, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withStaticTyping  reason: collision with other method in class */
    public ArrayType mo471withStaticTyping() {
        return this._asStatic ? this : new ArrayType(this._componentType.mo471withStaticTyping(), this._bindings, this._emptyArray, this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType _narrow(Class<?> cls) {
        return _reportUnsupported();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return null;
    }

    private JavaType _reportUnsupported() {
        throw new UnsupportedOperationException("Can not narrow or widen array types");
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isArrayType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isAbstract() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isConcrete() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean hasGenericTypes() {
        return this._componentType.hasGenericTypes();
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    /* renamed from: getContentType  reason: collision with other method in class */
    public JavaType mo463getContentType() {
        return this._componentType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentValueHandler() {
        return this._componentType.getValueHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentTypeHandler() {
        return this._componentType.getTypeHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasHandlers() {
        return super.hasHandlers() || this._componentType.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        sb.append('[');
        return this._componentType.getGenericSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        sb.append('[');
        return this._componentType.getErasedSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[array type, component type: " + this._componentType + "]";
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            return this._componentType.equals(((ArrayType) obj)._componentType);
        }
        return false;
    }
}
