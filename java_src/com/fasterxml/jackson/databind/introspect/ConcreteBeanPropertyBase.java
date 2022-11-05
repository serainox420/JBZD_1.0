package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class ConcreteBeanPropertyBase implements BeanProperty, Serializable {
    private static final long serialVersionUID = 1;
    protected final PropertyMetadata _metadata;
    protected transient JsonFormat.Value _propertyFormat;

    /* JADX INFO: Access modifiers changed from: protected */
    public ConcreteBeanPropertyBase(PropertyMetadata propertyMetadata) {
        this._metadata = propertyMetadata == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : propertyMetadata;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ConcreteBeanPropertyBase(ConcreteBeanPropertyBase concreteBeanPropertyBase) {
        this._metadata = concreteBeanPropertyBase._metadata;
        this._propertyFormat = concreteBeanPropertyBase._propertyFormat;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public boolean isRequired() {
        return this._metadata.isRequired();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyMetadata getMetadata() {
        return this._metadata;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public boolean isVirtual() {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    @Deprecated
    public final JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
        AnnotatedMember member;
        JsonFormat.Value value = null;
        if (annotationIntrospector != null && (member = getMember()) != null) {
            value = annotationIntrospector.findFormat(member);
        }
        if (value == null) {
            return EMPTY_FORMAT;
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
        AnnotatedMember member;
        JsonFormat.Value value = this._propertyFormat;
        if (value == null) {
            JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
            value = null;
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            if (annotationIntrospector != null && (member = getMember()) != null) {
                value = annotationIntrospector.findFormat(member);
            }
            if (defaultPropertyFormat == null) {
                if (value == null) {
                    value = EMPTY_FORMAT;
                }
            } else {
                value = value == null ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(value);
            }
            this._propertyFormat = value;
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
        JsonInclude.Value findPropertyInclusion;
        JsonInclude.Value defaultPropertyInclusion = mapperConfig.getDefaultPropertyInclusion(cls);
        AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
        AnnotatedMember member = getMember();
        return (annotationIntrospector == null || member == null || (findPropertyInclusion = annotationIntrospector.findPropertyInclusion(member)) == null) ? defaultPropertyInclusion : defaultPropertyInclusion.withOverrides(findPropertyInclusion);
    }
}
