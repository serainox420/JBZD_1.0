package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class AnnotationMap implements Annotations {
    protected HashMap<Class<?>, Annotation> _annotations;

    public AnnotationMap() {
    }

    private AnnotationMap(HashMap<Class<?>, Annotation> hashMap) {
        this._annotations = hashMap;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public <A extends Annotation> A get(Class<A> cls) {
        if (this._annotations == null) {
            return null;
        }
        return (A) this._annotations.get(cls);
    }

    public boolean has(Class<?> cls) {
        if (this._annotations == null) {
            return false;
        }
        return this._annotations.containsKey(cls);
    }

    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        if (this._annotations != null) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (this._annotations.containsKey(cls)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public Iterable<Annotation> annotations() {
        return (this._annotations == null || this._annotations.size() == 0) ? Collections.emptyList() : this._annotations.values();
    }

    public static AnnotationMap merge(AnnotationMap annotationMap, AnnotationMap annotationMap2) {
        if (annotationMap == null || annotationMap._annotations == null || annotationMap._annotations.isEmpty()) {
            return annotationMap2;
        }
        if (annotationMap2 != null && annotationMap2._annotations != null && !annotationMap2._annotations.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (Annotation annotation : annotationMap2._annotations.values()) {
                hashMap.put(annotation.annotationType(), annotation);
            }
            for (Annotation annotation2 : annotationMap._annotations.values()) {
                hashMap.put(annotation2.annotationType(), annotation2);
            }
            return new AnnotationMap(hashMap);
        }
        return annotationMap;
    }

    @Override // com.fasterxml.jackson.databind.util.Annotations
    public int size() {
        if (this._annotations == null) {
            return 0;
        }
        return this._annotations.size();
    }

    public boolean addIfNotPresent(Annotation annotation) {
        if (this._annotations == null || !this._annotations.containsKey(annotation.annotationType())) {
            _add(annotation);
            return true;
        }
        return false;
    }

    public boolean add(Annotation annotation) {
        return _add(annotation);
    }

    public String toString() {
        return this._annotations == null ? "[null]" : this._annotations.toString();
    }

    protected final boolean _add(Annotation annotation) {
        if (this._annotations == null) {
            this._annotations = new HashMap<>();
        }
        Annotation put = this._annotations.put(annotation.annotationType(), annotation);
        return put == null || !put.equals(annotation);
    }
}
