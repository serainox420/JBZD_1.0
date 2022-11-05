package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes.dex */
public class SimpleBeanPropertyDefinition extends BeanPropertyDefinition {
    protected final PropertyName _fullName;
    protected final JsonInclude.Value _inclusion;
    protected final AnnotationIntrospector _introspector;
    protected final AnnotatedMember _member;
    protected final PropertyMetadata _metadata;
    @Deprecated
    protected final String _name;

    protected SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, PropertyName propertyName, AnnotationIntrospector annotationIntrospector, PropertyMetadata propertyMetadata, JsonInclude.Include include) {
        this(annotatedMember, propertyName, annotationIntrospector, propertyMetadata, (include == null || include == JsonInclude.Include.USE_DEFAULTS) ? EMPTY_INCLUDE : JsonInclude.Value.construct(include, null));
    }

    protected SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, PropertyName propertyName, AnnotationIntrospector annotationIntrospector, PropertyMetadata propertyMetadata, JsonInclude.Value value) {
        this._introspector = annotationIntrospector;
        this._member = annotatedMember;
        this._fullName = propertyName;
        this._name = propertyName.getSimpleName();
        this._metadata = propertyMetadata == null ? PropertyMetadata.STD_OPTIONAL : propertyMetadata;
        this._inclusion = value;
    }

    @Deprecated
    protected SimpleBeanPropertyDefinition(AnnotatedMember annotatedMember, String str, AnnotationIntrospector annotationIntrospector) {
        this(annotatedMember, new PropertyName(str), annotationIntrospector, (PropertyMetadata) null, EMPTY_INCLUDE);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember) {
        return new SimpleBeanPropertyDefinition(annotatedMember, PropertyName.construct(annotatedMember.getName()), mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), (PropertyMetadata) null, EMPTY_INCLUDE);
    }

    @Deprecated
    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, String str) {
        return new SimpleBeanPropertyDefinition(annotatedMember, PropertyName.construct(str), mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), (PropertyMetadata) null, EMPTY_INCLUDE);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName) {
        return construct(mapperConfig, annotatedMember, propertyName, (PropertyMetadata) null, EMPTY_INCLUDE);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Include include) {
        return new SimpleBeanPropertyDefinition(annotatedMember, propertyName, mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), propertyMetadata, include);
    }

    public static SimpleBeanPropertyDefinition construct(MapperConfig<?> mapperConfig, AnnotatedMember annotatedMember, PropertyName propertyName, PropertyMetadata propertyMetadata, JsonInclude.Value value) {
        return new SimpleBeanPropertyDefinition(annotatedMember, propertyName, mapperConfig == null ? null : mapperConfig.getAnnotationIntrospector(), propertyMetadata, value);
    }

    @Deprecated
    public BeanPropertyDefinition withName(String str) {
        return mo343withSimpleName(str);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    /* renamed from: withSimpleName */
    public BeanPropertyDefinition mo343withSimpleName(String str) {
        return (!this._fullName.hasSimpleName(str) || this._fullName.hasNamespace()) ? new SimpleBeanPropertyDefinition(this._member, new PropertyName(str), this._introspector, this._metadata, this._inclusion) : this;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    /* renamed from: withName */
    public BeanPropertyDefinition mo342withName(PropertyName propertyName) {
        return this._fullName.equals(propertyName) ? this : new SimpleBeanPropertyDefinition(this._member, propertyName, this._introspector, this._metadata, this._inclusion);
    }

    public BeanPropertyDefinition withMetadata(PropertyMetadata propertyMetadata) {
        return propertyMetadata.equals(this._metadata) ? this : new SimpleBeanPropertyDefinition(this._member, this._fullName, this._introspector, propertyMetadata, this._inclusion);
    }

    public BeanPropertyDefinition withInclusion(JsonInclude.Value value) {
        return this._inclusion == value ? this : new SimpleBeanPropertyDefinition(this._member, this._fullName, this._introspector, this._metadata, value);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.util.Named
    public String getName() {
        return this._fullName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getFullName() {
        return this._fullName;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasName(PropertyName propertyName) {
        return this._fullName.equals(propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public String getInternalName() {
        return getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getWrapperName() {
        if (this._introspector != null || this._member == null) {
            return this._introspector.findWrapperName(this._member);
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyIncluded() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyNamed() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyMetadata getMetadata() {
        return this._metadata;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public JsonInclude.Value findInclusion() {
        return this._inclusion;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasGetter() {
        return getGetter() != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasSetter() {
        return getSetter() != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasField() {
        return this._member instanceof AnnotatedField;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasConstructorParameter() {
        return this._member instanceof AnnotatedParameter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getGetter() {
        if (!(this._member instanceof AnnotatedMethod) || ((AnnotatedMethod) this._member).getParameterCount() != 0) {
            return null;
        }
        return (AnnotatedMethod) this._member;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getSetter() {
        if (!(this._member instanceof AnnotatedMethod) || ((AnnotatedMethod) this._member).getParameterCount() != 1) {
            return null;
        }
        return (AnnotatedMethod) this._member;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedField getField() {
        if (this._member instanceof AnnotatedField) {
            return (AnnotatedField) this._member;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedParameter getConstructorParameter() {
        if (this._member instanceof AnnotatedParameter) {
            return (AnnotatedParameter) this._member;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Iterator<AnnotatedParameter> getConstructorParameters() {
        AnnotatedParameter constructorParameter = getConstructorParameter();
        return constructorParameter == null ? ClassUtil.emptyIterator() : Collections.singleton(constructorParameter).iterator();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getAccessor() {
        AnnotatedMethod getter = getGetter();
        if (getter == null) {
            return getField();
        }
        return getter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getMutator() {
        AnnotatedParameter constructorParameter = getConstructorParameter();
        if (constructorParameter == null) {
            AnnotatedMethod setter = getSetter();
            if (setter == null) {
                return getField();
            }
            return setter;
        }
        return constructorParameter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getNonConstructorMutator() {
        AnnotatedMethod setter = getSetter();
        if (setter == null) {
            return getField();
        }
        return setter;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMember getPrimaryMember() {
        return this._member;
    }
}
