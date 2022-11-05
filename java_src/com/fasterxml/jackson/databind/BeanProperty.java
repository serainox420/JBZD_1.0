package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.Named;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public interface BeanProperty extends Named {
    public static final JsonFormat.Value EMPTY_FORMAT = new JsonFormat.Value();
    public static final JsonInclude.Value EMPTY_INCLUDE = JsonInclude.Value.empty();

    void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException;

    @Deprecated
    JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector);

    JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls);

    JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls);

    <A extends Annotation> A getAnnotation(Class<A> cls);

    <A extends Annotation> A getContextAnnotation(Class<A> cls);

    PropertyName getFullName();

    AnnotatedMember getMember();

    PropertyMetadata getMetadata();

    @Override // com.fasterxml.jackson.databind.util.Named
    String getName();

    JavaType getType();

    PropertyName getWrapperName();

    boolean isRequired();

    boolean isVirtual();

    /* loaded from: classes.dex */
    public static class Std implements BeanProperty {
        protected final Annotations _contextAnnotations;
        protected final AnnotatedMember _member;
        protected final PropertyMetadata _metadata;
        protected final PropertyName _name;
        protected final JavaType _type;
        protected final PropertyName _wrapperName;

        public Std(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, Annotations annotations, AnnotatedMember annotatedMember, PropertyMetadata propertyMetadata) {
            this._name = propertyName;
            this._type = javaType;
            this._wrapperName = propertyName2;
            this._metadata = propertyMetadata;
            this._member = annotatedMember;
            this._contextAnnotations = annotations;
        }

        public Std(Std std, JavaType javaType) {
            this(std._name, javaType, std._wrapperName, std._contextAnnotations, std._member, std._metadata);
        }

        public Std withType(JavaType javaType) {
            return new Std(this, javaType);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getAnnotation(Class<A> cls) {
            if (this._member == null) {
                return null;
            }
            return (A) this._member.getAnnotation(cls);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
            if (this._contextAnnotations == null) {
                return null;
            }
            return (A) this._contextAnnotations.get(cls);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        @Deprecated
        public JsonFormat.Value findFormatOverrides(AnnotationIntrospector annotationIntrospector) {
            JsonFormat.Value findFormat;
            return (this._member == null || annotationIntrospector == null || (findFormat = annotationIntrospector.findFormat(this._member)) == null) ? EMPTY_FORMAT : findFormat;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonFormat.Value findPropertyFormat(MapperConfig<?> mapperConfig, Class<?> cls) {
            JsonFormat.Value findFormat;
            JsonFormat.Value defaultPropertyFormat = mapperConfig.getDefaultPropertyFormat(cls);
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            return (annotationIntrospector == null || this._member == null || (findFormat = annotationIntrospector.findFormat(this._member)) == null) ? defaultPropertyFormat : defaultPropertyFormat.withOverrides(findFormat);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JsonInclude.Value findPropertyInclusion(MapperConfig<?> mapperConfig, Class<?> cls) {
            JsonInclude.Value findPropertyInclusion;
            JsonInclude.Value defaultPropertyInclusion = mapperConfig.getDefaultPropertyInclusion(cls);
            AnnotationIntrospector annotationIntrospector = mapperConfig.getAnnotationIntrospector();
            return (annotationIntrospector == null || this._member == null || (findPropertyInclusion = annotationIntrospector.findPropertyInclusion(this._member)) == null) ? defaultPropertyInclusion : defaultPropertyInclusion.withOverrides(findPropertyInclusion);
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.Named
        public String getName() {
            return this._name.getSimpleName();
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getFullName() {
            return this._name;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public JavaType getType() {
            return this._type;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public PropertyName getWrapperName() {
            return this._wrapperName;
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
        public AnnotatedMember getMember() {
            return this._member;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public boolean isVirtual() {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) {
            throw new UnsupportedOperationException("Instances of " + getClass().getName() + " should not get visited");
        }
    }
}
