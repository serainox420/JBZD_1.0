package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
/* loaded from: classes.dex */
public class ReferenceType extends SimpleType {
    private static final long serialVersionUID = 1;
    protected final JavaType _anchorType;
    protected final JavaType _referencedType;

    protected ReferenceType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, JavaType javaType3, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2.hashCode(), obj, obj2, z);
        this._referencedType = javaType2;
        this._anchorType = javaType3 == null ? this : javaType3;
    }

    protected ReferenceType(TypeBase typeBase, JavaType javaType) {
        super(typeBase);
        this._referencedType = javaType;
        this._anchorType = this;
    }

    public static ReferenceType upgradeFrom(JavaType javaType, JavaType javaType2) {
        if (javaType2 == null) {
            throw new IllegalArgumentException("Missing referencedType");
        }
        if (javaType instanceof TypeBase) {
            return new ReferenceType((TypeBase) javaType, javaType2);
        }
        throw new IllegalArgumentException("Can not upgrade from an instance of " + javaType.getClass());
    }

    public static ReferenceType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new ReferenceType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, null, false);
    }

    @Deprecated
    public static ReferenceType construct(Class<?> cls, JavaType javaType) {
        return new ReferenceType(cls, TypeBindings.emptyBindings(), null, null, null, javaType, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this._referencedType == javaType ? this : new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, javaType, this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withTypeHandler  reason: collision with other method in class */
    public ReferenceType mo472withTypeHandler(Object obj) {
        return obj == this._typeHandler ? this : new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentTypeHandler  reason: collision with other method in class */
    public ReferenceType mo465withContentTypeHandler(Object obj) {
        return obj == this._referencedType.getTypeHandler() ? this : new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType.mo472withTypeHandler(obj), this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withValueHandler  reason: collision with other method in class */
    public ReferenceType mo473withValueHandler(Object obj) {
        return obj == this._valueHandler ? this : new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, obj, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentValueHandler  reason: collision with other method in class */
    public ReferenceType mo470withContentValueHandler(Object obj) {
        if (obj != this._referencedType.getValueHandler()) {
            return new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType.mo473withValueHandler(obj), this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withStaticTyping  reason: collision with other method in class */
    public ReferenceType mo471withStaticTyping() {
        return this._asStatic ? this : new ReferenceType(this._class, this._bindings, this._superClass, this._superInterfaces, this._referencedType.mo471withStaticTyping(), this._anchorType, this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new ReferenceType(cls, this._bindings, javaType, javaTypeArr, this._referencedType, this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase
    protected String buildCanonicalName() {
        return this._class.getName() + '<' + this._referencedType.toCanonical();
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType _narrow(Class<?> cls) {
        return new ReferenceType(cls, this._bindings, this._superClass, this._superInterfaces, this._referencedType, this._anchorType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    /* renamed from: getContentType  reason: collision with other method in class */
    public JavaType mo463getContentType() {
        return this._referencedType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    /* renamed from: getReferencedType  reason: collision with other method in class */
    public JavaType mo464getReferencedType() {
        return this._referencedType;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public boolean hasContentType() {
        return true;
    }

    @Override // com.fasterxml.jackson.core.type.ResolvedType
    public boolean isReferenceType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(this._class, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        _classSignature(this._class, sb, false);
        sb.append('<');
        StringBuilder genericSignature = this._referencedType.getGenericSignature(sb);
        genericSignature.append(">;");
        return genericSignature;
    }

    public JavaType getAnchorType() {
        return this._anchorType;
    }

    public boolean isAnchorType() {
        return this._anchorType == this;
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return new StringBuilder(40).append("[reference type, class ").append(buildCanonicalName()).append('<').append(this._referencedType).append('>').append(']').toString();
    }

    @Override // com.fasterxml.jackson.databind.type.SimpleType, com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        ReferenceType referenceType = (ReferenceType) obj;
        if (referenceType._class != this._class) {
            return false;
        }
        return this._referencedType.equals(referenceType._referencedType);
    }
}
