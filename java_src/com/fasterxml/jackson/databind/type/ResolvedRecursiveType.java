package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
/* loaded from: classes.dex */
public class ResolvedRecursiveType extends TypeBase {
    private static final long serialVersionUID = 1;
    protected JavaType _referencedType;

    public ResolvedRecursiveType(Class<?> cls, TypeBindings typeBindings) {
        super(cls, typeBindings, null, null, 0, null, null, false);
    }

    public void setReference(JavaType javaType) {
        if (this._referencedType != null) {
            throw new IllegalStateException("Trying to re-set self reference; old value = " + this._referencedType + ", new = " + javaType);
        }
        this._referencedType = javaType;
    }

    public JavaType getSelfReferencedType() {
        return this._referencedType;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        return this._referencedType.getGenericSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return this._referencedType.getErasedSignature(sb);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withTypeHandler */
    public JavaType mo472withTypeHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentTypeHandler */
    public JavaType mo465withContentTypeHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withValueHandler */
    public JavaType mo473withValueHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentValueHandler */
    public JavaType mo470withContentValueHandler(Object obj) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withStaticTyping */
    public JavaType mo471withStaticTyping() {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType _narrow(Class<?> cls) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isContainerType() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        StringBuilder append = new StringBuilder(40).append("[recursive type; ");
        if (this._referencedType == null) {
            append.append("UNRESOLVED");
        } else {
            append.append(this._referencedType.getRawClass().getName());
        }
        return append.toString();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && this._referencedType != null) {
            return obj.getClass() == getClass() && this._referencedType.equals(((ResolvedRecursiveType) obj).getSelfReferencedType());
        }
        return false;
    }
}
