package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Named;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class BeanPropertyDefinition implements Named {
    protected static final JsonInclude.Value EMPTY_INCLUDE = JsonInclude.Value.empty();

    public abstract AnnotatedMember getAccessor();

    public abstract AnnotatedParameter getConstructorParameter();

    public abstract AnnotatedField getField();

    public abstract PropertyName getFullName();

    public abstract AnnotatedMethod getGetter();

    public abstract String getInternalName();

    public abstract PropertyMetadata getMetadata();

    public abstract AnnotatedMember getMutator();

    @Override // com.fasterxml.jackson.databind.util.Named
    public abstract String getName();

    public abstract AnnotatedMember getNonConstructorMutator();

    public abstract AnnotatedMember getPrimaryMember();

    public abstract AnnotatedMethod getSetter();

    public abstract PropertyName getWrapperName();

    public abstract boolean hasConstructorParameter();

    public abstract boolean hasField();

    public abstract boolean hasGetter();

    public abstract boolean hasSetter();

    public abstract boolean isExplicitlyIncluded();

    /* renamed from: withName */
    public abstract BeanPropertyDefinition mo342withName(PropertyName propertyName);

    /* renamed from: withSimpleName */
    public abstract BeanPropertyDefinition mo343withSimpleName(String str);

    public boolean hasName(PropertyName propertyName) {
        return getFullName().equals(propertyName);
    }

    public boolean isExplicitlyNamed() {
        return isExplicitlyIncluded();
    }

    public boolean couldDeserialize() {
        return getMutator() != null;
    }

    public boolean couldSerialize() {
        return getAccessor() != null;
    }

    public Iterator<AnnotatedParameter> getConstructorParameters() {
        return ClassUtil.emptyIterator();
    }

    public Class<?>[] findViews() {
        return null;
    }

    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        return null;
    }

    public boolean isTypeId() {
        return false;
    }

    public ObjectIdInfo findObjectIdInfo() {
        return null;
    }

    public boolean isRequired() {
        PropertyMetadata metadata = getMetadata();
        return metadata != null && metadata.isRequired();
    }

    public JsonInclude.Value findInclusion() {
        return EMPTY_INCLUDE;
    }
}
