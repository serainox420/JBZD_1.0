package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.TypeVariable;
/* loaded from: classes.dex */
public final class CollectionType extends CollectionLikeType {
    private static final long serialVersionUID = 1;

    private CollectionType(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2, Object obj, Object obj2, boolean z) {
        super(cls, typeBindings, javaType, javaTypeArr, javaType2, obj, obj2, z);
    }

    protected CollectionType(TypeBase typeBase, JavaType javaType) {
        super(typeBase, javaType);
    }

    public static CollectionType construct(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr, JavaType javaType2) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, javaType2, null, null, false);
    }

    @Deprecated
    public static CollectionType construct(Class<?> cls, JavaType javaType) {
        TypeBindings emptyBindings;
        TypeVariable<Class<?>>[] typeParameters = cls.getTypeParameters();
        if (typeParameters == null || typeParameters.length != 1) {
            emptyBindings = TypeBindings.emptyBindings();
        } else {
            emptyBindings = TypeBindings.create(cls, javaType);
        }
        return new CollectionType(cls, emptyBindings, _bogusSuperClass(cls), null, javaType, null, null, false);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    @Deprecated
    protected JavaType _narrow(Class<?> cls) {
        return new CollectionType(cls, this._bindings, this._superClass, this._superInterfaces, this._elementType, null, null, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType withContentType(JavaType javaType) {
        return this._elementType == javaType ? this : new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, javaType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withTypeHandler */
    public CollectionType mo472withTypeHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, this._valueHandler, obj, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentTypeHandler */
    public CollectionType mo465withContentTypeHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo472withTypeHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withValueHandler */
    public CollectionType mo473withValueHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType, obj, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withContentValueHandler */
    public CollectionType mo470withContentValueHandler(Object obj) {
        return new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo473withValueHandler(obj), this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    /* renamed from: withStaticTyping */
    public CollectionType mo471withStaticTyping() {
        return this._asStatic ? this : new CollectionType(this._class, this._bindings, this._superClass, this._superInterfaces, this._elementType.mo471withStaticTyping(), this._valueHandler, this._typeHandler, true);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public JavaType refine(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new CollectionType(cls, typeBindings, javaType, javaTypeArr, this._elementType, this._valueHandler, this._typeHandler, this._asStatic);
    }

    @Override // com.fasterxml.jackson.databind.type.CollectionLikeType, com.fasterxml.jackson.databind.JavaType
    public String toString() {
        return "[collection type; class " + this._class.getName() + ", contains " + this._elementType + "]";
    }
}
