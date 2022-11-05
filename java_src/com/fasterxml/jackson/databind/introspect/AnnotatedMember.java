package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Member;
import java.util.Collections;
/* loaded from: classes.dex */
public abstract class AnnotatedMember extends Annotated implements Serializable {
    private static final long serialVersionUID = 1;
    protected final transient AnnotationMap _annotations;
    protected final transient TypeResolutionContext _typeContext;

    public abstract Class<?> getDeclaringClass();

    /* renamed from: getMember */
    public abstract Member mo333getMember();

    public abstract Object getValue(Object obj) throws UnsupportedOperationException, IllegalArgumentException;

    public abstract void setValue(Object obj, Object obj2) throws UnsupportedOperationException, IllegalArgumentException;

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMember(TypeResolutionContext typeResolutionContext, AnnotationMap annotationMap) {
        this._typeContext = typeResolutionContext;
        this._annotations = annotationMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnnotatedMember(AnnotatedMember annotatedMember) {
        this._typeContext = annotatedMember._typeContext;
        this._annotations = annotatedMember._annotations;
    }

    public TypeResolutionContext getTypeContext() {
        return this._typeContext;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        if (this._annotations == null) {
            return null;
        }
        return (A) this._annotations.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public final boolean hasAnnotation(Class<?> cls) {
        if (this._annotations == null) {
            return false;
        }
        return this._annotations.has(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        if (this._annotations == null) {
            return false;
        }
        return this._annotations.hasOneOf(clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Iterable<Annotation> annotations() {
        return this._annotations == null ? Collections.emptyList() : this._annotations.annotations();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public AnnotationMap getAllAnnotations() {
        return this._annotations;
    }

    public final boolean addOrOverride(Annotation annotation) {
        return this._annotations.add(annotation);
    }

    public final boolean addIfNotPresent(Annotation annotation) {
        return this._annotations.addIfNotPresent(annotation);
    }

    public final void fixAccess(boolean z) {
        Member mo333getMember = mo333getMember();
        if (mo333getMember != null) {
            ClassUtil.checkAndFixAccess(mo333getMember, z);
        }
    }

    @Deprecated
    public final void fixAccess() {
        fixAccess(true);
    }
}
