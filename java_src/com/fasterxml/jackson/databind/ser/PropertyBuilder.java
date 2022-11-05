package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.NameTransformer;
/* loaded from: classes.dex */
public class PropertyBuilder {
    private static final Object NO_DEFAULT_MARKER = Boolean.FALSE;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final BeanDescription _beanDesc;
    protected final SerializationConfig _config;
    protected Object _defaultBean;
    protected final JsonInclude.Value _defaultInclusion;
    protected final boolean _useRealPropertyDefaults;

    public PropertyBuilder(SerializationConfig serializationConfig, BeanDescription beanDescription) {
        this._config = serializationConfig;
        this._beanDesc = beanDescription;
        JsonInclude.Value merge = JsonInclude.Value.merge(beanDescription.findPropertyInclusion(JsonInclude.Value.empty()), serializationConfig.getDefaultPropertyInclusion(beanDescription.getBeanClass(), JsonInclude.Value.empty()));
        this._defaultInclusion = JsonInclude.Value.merge(serializationConfig.getDefaultPropertyInclusion(), merge);
        this._useRealPropertyDefaults = merge.getValueInclusion() == JsonInclude.Include.NON_DEFAULT;
        this._annotationIntrospector = this._config.getAnnotationIntrospector();
    }

    public Annotations getClassAnnotations() {
        return this._beanDesc.getClassAnnotations();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanPropertyWriter buildWriter(SerializerProvider serializerProvider, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, JsonSerializer<?> jsonSerializer, TypeSerializer typeSerializer, TypeSerializer typeSerializer2, AnnotatedMember annotatedMember, boolean z) throws JsonMappingException {
        JavaType javaType2;
        boolean z2;
        boolean z3;
        Object defaultBean;
        try {
            JavaType findSerializationType = findSerializationType(annotatedMember, z, javaType);
            if (typeSerializer2 != null) {
                if (findSerializationType == null) {
                    findSerializationType = javaType;
                }
                if (findSerializationType.mo463getContentType() == null) {
                    serializerProvider.reportBadPropertyDefinition(this._beanDesc, beanPropertyDefinition, "serialization type " + findSerializationType + " has no content", new Object[0]);
                }
                javaType2 = findSerializationType.mo465withContentTypeHandler(typeSerializer2);
                javaType2.mo463getContentType();
            } else {
                javaType2 = findSerializationType;
            }
            Object obj = null;
            JavaType javaType3 = javaType2 == null ? javaType : javaType2;
            JsonInclude.Include valueInclusion = this._config.getDefaultPropertyInclusion(javaType3.getRawClass(), this._defaultInclusion).withOverrides(beanPropertyDefinition.findInclusion()).getValueInclusion();
            if (valueInclusion == JsonInclude.Include.USE_DEFAULTS) {
                valueInclusion = JsonInclude.Include.ALWAYS;
            }
            switch (valueInclusion) {
                case NON_DEFAULT:
                    if (this._useRealPropertyDefaults && (defaultBean = getDefaultBean()) != null) {
                        if (serializerProvider.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                            annotatedMember.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                        }
                        try {
                            obj = annotatedMember.getValue(defaultBean);
                            z2 = false;
                        } catch (Exception e) {
                            _throwWrapped(e, beanPropertyDefinition.getName(), defaultBean);
                            z2 = false;
                        }
                    } else {
                        obj = getDefaultValue(javaType3);
                        z2 = true;
                    }
                    if (obj == null) {
                        z3 = true;
                        break;
                    } else {
                        if (obj.getClass().isArray()) {
                            obj = ArrayBuilders.getArrayComparator(obj);
                            z3 = z2;
                            break;
                        }
                        z3 = z2;
                        break;
                    }
                    break;
                case NON_ABSENT:
                    z2 = true;
                    if (javaType3.isReferenceType()) {
                        obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
                        z3 = true;
                        break;
                    }
                    z3 = z2;
                    break;
                case NON_EMPTY:
                    obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
                    z3 = true;
                    break;
                case NON_NULL:
                    z2 = true;
                    if (javaType3.isContainerType() && !this._config.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS)) {
                        obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
                        z3 = z2;
                        break;
                    }
                    z3 = z2;
                    break;
                default:
                    z2 = false;
                    if (javaType3.isContainerType()) {
                        obj = BeanPropertyWriter.MARKER_FOR_EMPTY;
                        z3 = z2;
                        break;
                    }
                    z3 = z2;
                    break;
            }
            BeanPropertyWriter beanPropertyWriter = new BeanPropertyWriter(beanPropertyDefinition, annotatedMember, this._beanDesc.getClassAnnotations(), javaType, jsonSerializer, typeSerializer, javaType2, z3, obj);
            Object findNullSerializer = this._annotationIntrospector.findNullSerializer(annotatedMember);
            if (findNullSerializer != null) {
                beanPropertyWriter.assignNullSerializer(serializerProvider.serializerInstance(annotatedMember, findNullSerializer));
            }
            NameTransformer findUnwrappingNameTransformer = this._annotationIntrospector.findUnwrappingNameTransformer(annotatedMember);
            if (findUnwrappingNameTransformer != null) {
                return beanPropertyWriter.unwrappingWriter(findUnwrappingNameTransformer);
            }
            return beanPropertyWriter;
        } catch (JsonMappingException e2) {
            return (BeanPropertyWriter) serializerProvider.reportBadPropertyDefinition(this._beanDesc, beanPropertyDefinition, e2.getMessage(), new Object[0]);
        }
    }

    protected JavaType findSerializationType(Annotated annotated, boolean z, JavaType javaType) throws JsonMappingException {
        boolean z2 = true;
        JavaType refineSerializationType = this._annotationIntrospector.refineSerializationType(this._config, annotated, javaType);
        if (refineSerializationType != javaType) {
            Class<?> rawClass = refineSerializationType.getRawClass();
            Class<?> rawClass2 = javaType.getRawClass();
            if (!rawClass.isAssignableFrom(rawClass2) && !rawClass2.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + annotated.getName() + "': class " + rawClass.getName() + " not a super-type of (declared) class " + rawClass2.getName());
            }
            javaType = refineSerializationType;
            z = true;
        }
        JsonSerialize.Typing findSerializationTyping = this._annotationIntrospector.findSerializationTyping(annotated);
        if (findSerializationTyping != null && findSerializationTyping != JsonSerialize.Typing.DEFAULT_TYPING) {
            if (findSerializationTyping != JsonSerialize.Typing.STATIC) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            return javaType.mo471withStaticTyping();
        }
        return null;
    }

    protected Object getDefaultBean() {
        Object obj = this._defaultBean;
        if (obj == null) {
            obj = this._beanDesc.instantiateBean(this._config.canOverrideAccessModifiers());
            if (obj == null) {
                obj = NO_DEFAULT_MARKER;
            }
            this._defaultBean = obj;
        }
        if (obj == NO_DEFAULT_MARKER) {
            return null;
        }
        return this._defaultBean;
    }

    @Deprecated
    protected Object getPropertyDefaultValue(String str, AnnotatedMember annotatedMember, JavaType javaType) {
        Object defaultBean = getDefaultBean();
        if (defaultBean == null) {
            return getDefaultValue(javaType);
        }
        try {
            return annotatedMember.getValue(defaultBean);
        } catch (Exception e) {
            return _throwWrapped(e, str, defaultBean);
        }
    }

    protected Object getDefaultValue(JavaType javaType) {
        Class<?> rawClass = javaType.getRawClass();
        Class<?> primitiveType = ClassUtil.primitiveType(rawClass);
        if (primitiveType != null) {
            return ClassUtil.defaultValue(primitiveType);
        }
        if (javaType.isContainerType() || javaType.isReferenceType()) {
            return JsonInclude.Include.NON_EMPTY;
        }
        if (rawClass == String.class) {
            return "";
        }
        return null;
    }

    protected Object _throwWrapped(Exception exc, String str, Object obj) {
        Throwable th = exc;
        while (th.getCause() != null) {
            th = th.getCause();
        }
        if (th instanceof Error) {
            throw ((Error) th);
        }
        if (!(th instanceof RuntimeException)) {
            throw new IllegalArgumentException("Failed to get property '" + str + "' of default " + obj.getClass().getName() + " instance");
        }
        throw ((RuntimeException) th);
    }
}
