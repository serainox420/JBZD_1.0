package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
/* loaded from: classes.dex */
public class VirtualAnnotatedMember extends AnnotatedMember implements Serializable {
    private static final long serialVersionUID = 1;
    protected final Class<?> _declaringClass;
    protected final String _name;
    protected final JavaType _type;

    public VirtualAnnotatedMember(TypeResolutionContext typeResolutionContext, Class<?> cls, String str, JavaType javaType) {
        super(typeResolutionContext, null);
        this._declaringClass = cls;
        this._type = javaType;
        this._name = str;
    }

    @Deprecated
    public VirtualAnnotatedMember(TypeResolutionContext typeResolutionContext, Class<?> cls, String str, Class<?> cls2) {
        this(typeResolutionContext, cls, str, typeResolutionContext.resolveType(cls2));
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    /* renamed from: withAnnotations */
    public Annotated mo335withAnnotations(AnnotationMap annotationMap) {
        return this;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    /* renamed from: getAnnotated  reason: collision with other method in class */
    public Field mo354getAnnotated() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int getModifiers() {
        return 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._type.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public JavaType getType() {
        return this._type;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Class<?> getDeclaringClass() {
        return this._declaringClass;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    /* renamed from: getMember */
    public Member mo333getMember() {
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public void setValue(Object obj, Object obj2) throws IllegalArgumentException {
        throw new IllegalArgumentException("Can not set virtual property '" + this._name + "'");
    }

    @Override // com.fasterxml.jackson.databind.introspect.AnnotatedMember
    public Object getValue(Object obj) throws IllegalArgumentException {
        throw new IllegalArgumentException("Can not get virtual property '" + this._name + "'");
    }

    public String getFullName() {
        return getDeclaringClass().getName() + "#" + getName();
    }

    public int getAnnotationCount() {
        return 0;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int hashCode() {
        return this._name.hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        VirtualAnnotatedMember virtualAnnotatedMember = (VirtualAnnotatedMember) obj;
        return virtualAnnotatedMember._declaringClass == this._declaringClass && virtualAnnotatedMember._name.equals(this._name);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String toString() {
        return "[field " + getFullName() + "]";
    }
}
