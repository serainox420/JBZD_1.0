package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
/* loaded from: classes.dex */
public class CollectionLikeType extends TypeBase {
    private static final long serialVersionUID = 1;
    protected final JavaType _elementType;

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionLikeType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2.hashCode(), obj, obj2, z);
        this._elementType = javaType2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CollectionLikeType(TypeBase typeBase, JavaType javaType) {
        super(typeBase);
        this._elementType = javaType;
    }

    public static CollectionLikeType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new CollectionLikeType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, false);
    }

    @Deprecated
    public static CollectionLikeType construct(Class<?> cls, JavaType javaType) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters == null || typeParameters.length != 1) {
            emptyBindings = TypeBindings.emptyBindings();
        } else {
            emptyBindings = TypeBindings.create(cls, javaType);
        }
        return new CollectionLikeType(cls, emptyBindings, _bogusSuperClass(cls), null, javaType, null, null, false);
    }

    public static CollectionLikeType upgradeFrom(JavaType javaType, JavaType javaType2) {
        if (javaType instanceof TypeBase) {
            return new CollectionLikeType((TypeBase) javaType, javaType2);
        }
        throw new IllegalArgumentException("Can not upgrade from an instance of " + javaType.getClass());
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType _narrow(Class<?> cls) {
        return new CollectionLikeType(cls, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this._elementType == javaType ? this : new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, javaType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withTypeHandler  reason: collision with other method in class */
    public CollectionLikeType mo472withTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentTypeHandler  reason: collision with other method in class */
    public CollectionLikeType mo465withContentTypeHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo472withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withValueHandler  reason: collision with other method in class */
    public CollectionLikeType mo473withValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, obj, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentValueHandler  reason: collision with other method in class */
    public CollectionLikeType mo470withContentValueHandler(Object obj) {
        return new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo473withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType withHandlersFrom(JavaType javaType) {
        JavaType withHandlersFrom;
        JavaType withHandlersFrom2 = super.withHandlersFrom(javaType);
        JavaType mo463getContentType = javaType.mo463getContentType();
        if (mo463getContentType != null && (withHandlersFrom = this._elementType.withHandlersFrom(mo463getContentType)) != this._elementType) {
            return withHandlersFrom2.withContentType(withHandlersFrom);
        }
        return withHandlersFrom2;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    /* renamed from: withStaticTyping  reason: collision with other method in class */
    public CollectionLikeType mo471withStaticTyping() {
        return this._asStatic ? this : new CollectionLikeType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo471withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionLikeType(cls, typeBindings, javaType, javaTypeArr, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isContainerType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    public boolean isCollectionLikeType() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.type.ResolvedType
    /* renamed from: getContentType  reason: collision with other method in class */
    public JavaType mo463getContentType() {
        return this._elementType;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentValueHandler() {
        return this._elementType.getValueHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public Object getContentTypeHandler() {
        return this._elementType.getTypeHandler();
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean hasHandlers() {
        return super.hasHandlers() || this._elementType.hasHandlers();
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getErasedSignature(StringBuilder sb) {
        return _classSignature(this._class, sb, true);
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase, com.fasterxml.jackson.databind.JavaType
    public StringBuilder getGenericSignature(StringBuilder sb) {
        _classSignature(this._class, sb, false);
        sb.append('<');
        this._elementType.getGenericSignature(sb);
        sb.append(">;");
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.type.TypeBase
    protected String buildCanonicalName() {
        StringBuilder sb = new StringBuilder();
        sb.append(this._class.getName());
        if (this._elementType != null) {
            sb.append('<');
            sb.append(this._elementType.toCanonical());
            sb.append('>');
        }
        return sb.toString();
    }

    public boolean isTrueCollectionType() {
        return Collection.class.isAssignableFrom(this._class);
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            CollectionLikeType collectionLikeType = (CollectionLikeType) obj;
            return this._class == collectionLikeType._class && this._elementType.equals(collectionLikeType._elementType);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[collection-like type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }
}
