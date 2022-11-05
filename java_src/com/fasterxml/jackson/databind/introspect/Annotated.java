package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public abstract class Annotated {
    public abstract Iterable<Annotation> annotations();

    public abstract boolean equals(Object obj);

    protected abstract AnnotationMap getAllAnnotations();

    /* renamed from: getAnnotated */
    public abstract AnnotatedElement mo354getAnnotated();

    public abstract <A extends Annotation> A getAnnotation(Class<A> cls);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getModifiers();

    public abstract String getName();

    public abstract Class<?> getRawType();

    public abstract JavaType getType();

    public abstract boolean hasAnnotation(Class<?> cls);

    public abstract boolean hasOneOf(Class<? extends Annotation>[] clsArr);

    public abstract int hashCode();

    public abstract String toString();

    /* renamed from: withAnnotations */
    public abstract Annotated mo335withAnnotations(AnnotationMap annotationMap);

    public final Annotated withFallBackAnnotationsFrom(Annotated annotated) {
        return mo335withAnnotations(AnnotationMap.merge(getAllAnnotations(), annotated.getAllAnnotations()));
    }

    public final boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }

    @Deprecated
    public final JavaType getType(TypeBindings typeBindings) {
        return getType();
    }

    @Deprecated
    public Type getGenericType() {
        return getRawType();
    }
}
