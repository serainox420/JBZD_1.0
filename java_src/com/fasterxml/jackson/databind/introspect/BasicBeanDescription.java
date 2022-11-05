package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class BasicBeanDescription extends BeanDescription {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final AnnotatedClass _classInfo;
    protected final MapperConfig<?> _config;
    protected ObjectIdInfo _objectIdInfo;
    protected final POJOPropertiesCollector _propCollector;
    protected List<BeanPropertyDefinition> _properties;

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector, JavaType javaType, AnnotatedClass annotatedClass) {
        super(javaType);
        this._propCollector = pOJOPropertiesCollector;
        this._config = pOJOPropertiesCollector.getConfig();
        if (this._config == null) {
            this._annotationIntrospector = null;
        } else {
            this._annotationIntrospector = this._config.getAnnotationIntrospector();
        }
        this._classInfo = annotatedClass;
    }

    protected BasicBeanDescription(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass, List<BeanPropertyDefinition> list) {
        super(javaType);
        this._propCollector = null;
        this._config = mapperConfig;
        if (this._config == null) {
            this._annotationIntrospector = null;
        } else {
            this._annotationIntrospector = this._config.getAnnotationIntrospector();
        }
        this._classInfo = annotatedClass;
        this._properties = list;
    }

    protected BasicBeanDescription(POJOPropertiesCollector pOJOPropertiesCollector) {
        this(pOJOPropertiesCollector, pOJOPropertiesCollector.getType(), pOJOPropertiesCollector.getClassDef());
        this._objectIdInfo = pOJOPropertiesCollector.getObjectIdInfo();
    }

    public static BasicBeanDescription forDeserialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    public static BasicBeanDescription forSerialization(POJOPropertiesCollector pOJOPropertiesCollector) {
        return new BasicBeanDescription(pOJOPropertiesCollector);
    }

    public static BasicBeanDescription forOtherUse(MapperConfig<?> mapperConfig, JavaType javaType, AnnotatedClass annotatedClass) {
        return new BasicBeanDescription(mapperConfig, javaType, annotatedClass, Collections.emptyList());
    }

    protected List<BeanPropertyDefinition> _properties() {
        if (this._properties == null) {
            this._properties = this._propCollector.getProperties();
        }
        return this._properties;
    }

    public boolean removeProperty(String str) {
        Iterator<BeanPropertyDefinition> it = _properties().iterator();
        while (it.hasNext()) {
            if (it.next().getName().equals(str)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    public boolean addProperty(BeanPropertyDefinition beanPropertyDefinition) {
        if (hasProperty(beanPropertyDefinition.getFullName())) {
            return false;
        }
        _properties().add(beanPropertyDefinition);
        return true;
    }

    public boolean hasProperty(PropertyName propertyName) {
        return findProperty(propertyName) != null;
    }

    public BeanPropertyDefinition findProperty(PropertyName propertyName) {
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            if (beanPropertyDefinition.hasName(propertyName)) {
                return beanPropertyDefinition;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedClass getClassInfo() {
        return this._classInfo;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public ObjectIdInfo getObjectIdInfo() {
        return this._objectIdInfo;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<BeanPropertyDefinition> findProperties() {
        return _properties();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findJsonValueMethod() {
        if (this._propCollector == null) {
            return null;
        }
        return this._propCollector.getJsonValueMethod();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Set<String> getIgnoredPropertyNames() {
        Set<String> ignoredPropertyNames = this._propCollector == null ? null : this._propCollector.getIgnoredPropertyNames();
        if (ignoredPropertyNames == null) {
            return Collections.emptySet();
        }
        return ignoredPropertyNames;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public boolean hasKnownClassAnnotations() {
        return this._classInfo.hasAnnotations();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Annotations getClassAnnotations() {
        return this._classInfo.getAnnotations();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    @Deprecated
    public TypeBindings bindingsForBeanType() {
        return this._type.getBindings();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    @Deprecated
    public JavaType resolveType(Type type) {
        if (type == null) {
            return null;
        }
        return this._config.getTypeFactory().constructType(type, this._type.getBindings());
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedConstructor findDefaultConstructor() {
        return this._classInfo.getDefaultConstructor();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findAnySetter() throws IllegalArgumentException {
        Class<?> rawParameterType;
        AnnotatedMethod anySetterMethod = this._propCollector == null ? null : this._propCollector.getAnySetterMethod();
        if (anySetterMethod != null && (rawParameterType = anySetterMethod.getRawParameterType(0)) != String.class && rawParameterType != Object.class) {
            throw new IllegalArgumentException("Invalid 'any-setter' annotation on method " + anySetterMethod.getName() + "(): first argument not of type String or Object, but " + rawParameterType.getName());
        }
        return anySetterMethod;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Map<Object, AnnotatedMember> findInjectables() {
        return this._propCollector != null ? this._propCollector.getInjectables() : Collections.emptyMap();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<AnnotatedConstructor> getConstructors() {
        return this._classInfo.getConstructors();
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Object instantiateBean(boolean z) {
        AnnotatedConstructor defaultConstructor = this._classInfo.getDefaultConstructor();
        if (defaultConstructor == null) {
            return null;
        }
        if (z) {
            defaultConstructor.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        try {
            return defaultConstructor.mo354getAnnotated().newInstance(new Object[0]);
        } catch (Exception e) {
            e = e;
            while (e.getCause() != null) {
                e = e.getCause();
            }
            if (e instanceof Error) {
                throw ((Error) e);
            }
            if (!(e instanceof RuntimeException)) {
                throw new IllegalArgumentException("Failed to instantiate bean of type " + this._classInfo.mo354getAnnotated().getName() + ": (" + e.getClass().getName() + ") " + e.getMessage(), e);
            }
            throw ((RuntimeException) e);
        }
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        return this._classInfo.findMethod(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonFormat.Value findExpectedFormat(JsonFormat.Value value) {
        JsonFormat.Value findFormat;
        if (this._annotationIntrospector != null && (findFormat = this._annotationIntrospector.findFormat(this._classInfo)) != null) {
            value = value == null ? findFormat : value.withOverrides(findFormat);
        }
        JsonFormat.Value defaultPropertyFormat = this._config.getDefaultPropertyFormat(this._classInfo.getRawType());
        if (defaultPropertyFormat != null) {
            return value == null ? defaultPropertyFormat : value.withOverrides(defaultPropertyFormat);
        }
        return value;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Converter<Object, Object> findSerializationConverter() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return _createConverter(this._annotationIntrospector.findSerializationConverter(this._classInfo));
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonInclude.Value findPropertyInclusion(JsonInclude.Value value) {
        JsonInclude.Value findPropertyInclusion;
        if (this._annotationIntrospector == null || (findPropertyInclusion = this._annotationIntrospector.findPropertyInclusion(this._classInfo)) == null) {
            return value;
        }
        if (value != null) {
            return value.withOverrides(findPropertyInclusion);
        }
        return findPropertyInclusion;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findAnyGetter() throws IllegalArgumentException {
        AnnotatedMember anyGetter = this._propCollector == null ? null : this._propCollector.getAnyGetter();
        if (anyGetter != null && !Map.class.isAssignableFrom(anyGetter.getRawType())) {
            throw new IllegalArgumentException("Invalid 'any-getter' annotation on method " + anyGetter.getName() + "(): return type is not instance of java.util.Map");
        }
        return anyGetter;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public AnnotatedMember findAnySetterField() throws IllegalArgumentException {
        AnnotatedMember anySetterField = this._propCollector == null ? null : this._propCollector.getAnySetterField();
        if (anySetterField != null && !Map.class.isAssignableFrom(anySetterField.getRawType())) {
            throw new IllegalArgumentException("Invalid 'any-setter' annotation on field " + anySetterField.getName() + "(): type is not instance of java.util.Map");
        }
        return anySetterField;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Map<String, AnnotatedMember> findBackReferenceProperties() {
        AnnotationIntrospector.ReferenceProperty findReferenceType;
        HashMap hashMap = null;
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            AnnotatedMember mutator = beanPropertyDefinition.getMutator();
            if (mutator != null && (findReferenceType = this._annotationIntrospector.findReferenceType(mutator)) != null && findReferenceType.isBackReference()) {
                HashMap hashMap2 = hashMap == null ? new HashMap() : hashMap;
                String name = findReferenceType.getName();
                if (hashMap2.put(name, mutator) != null) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name '" + name + "'");
                }
                hashMap = hashMap2;
            }
        }
        return hashMap;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public List<AnnotatedMethod> getFactoryMethods() {
        List<AnnotatedMethod> staticMethods = this._classInfo.getStaticMethods();
        if (!staticMethods.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (AnnotatedMethod annotatedMethod : staticMethods) {
                if (isFactoryMethod(annotatedMethod)) {
                    arrayList.add(annotatedMethod);
                }
            }
            return arrayList;
        }
        return staticMethods;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Constructor<?> findSingleArgConstructor(Class<?>... clsArr) {
        for (AnnotatedConstructor annotatedConstructor : this._classInfo.getConstructors()) {
            if (annotatedConstructor.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedConstructor.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (cls == rawParameterType) {
                        return annotatedConstructor.mo354getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Method findFactoryMethod(Class<?>... clsArr) {
        for (AnnotatedMethod annotatedMethod : this._classInfo.getStaticMethods()) {
            if (isFactoryMethod(annotatedMethod) && annotatedMethod.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (rawParameterType.isAssignableFrom(cls)) {
                        return annotatedMethod.mo354getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    protected boolean isFactoryMethod(AnnotatedMethod annotatedMethod) {
        if (!getBeanClass().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            return false;
        }
        if (this._annotationIntrospector.hasCreatorAnnotation(annotatedMethod)) {
            return true;
        }
        String name = annotatedMethod.getName();
        if ("valueOf".equals(name) && annotatedMethod.getParameterCount() == 1) {
            return true;
        }
        if (!"fromString".equals(name) || annotatedMethod.getParameterCount() != 1) {
            return false;
        }
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        return rawParameterType == String.class || CharSequence.class.isAssignableFrom(rawParameterType);
    }

    @Deprecated
    protected PropertyName _findCreatorPropertyName(AnnotatedParameter annotatedParameter) {
        String findImplicitPropertyName;
        PropertyName findNameForDeserialization = this._annotationIntrospector.findNameForDeserialization(annotatedParameter);
        if ((findNameForDeserialization == null || findNameForDeserialization.isEmpty()) && (findImplicitPropertyName = this._annotationIntrospector.findImplicitPropertyName(annotatedParameter)) != null && !findImplicitPropertyName.isEmpty()) {
            return PropertyName.construct(findImplicitPropertyName);
        }
        return findNameForDeserialization;
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Class<?> findPOJOBuilder() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return this._annotationIntrospector.findPOJOBuilder(this._classInfo);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public JsonPOJOBuilder.Value findPOJOBuilderConfig() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return this._annotationIntrospector.findPOJOBuilderConfig(this._classInfo);
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public Converter<Object, Object> findDeserializationConverter() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return _createConverter(this._annotationIntrospector.findDeserializationConverter(this._classInfo));
    }

    @Override // com.fasterxml.jackson.databind.BeanDescription
    public String findClassDescription() {
        if (this._annotationIntrospector == null) {
            return null;
        }
        return this._annotationIntrospector.findClassDescription(this._classInfo);
    }

    @Deprecated
    public LinkedHashMap<String, AnnotatedField> _findPropertyFields(Collection<String> collection, boolean z) {
        LinkedHashMap<String, AnnotatedField> linkedHashMap = new LinkedHashMap<>();
        for (BeanPropertyDefinition beanPropertyDefinition : _properties()) {
            AnnotatedField field = beanPropertyDefinition.getField();
            if (field != null) {
                String name = beanPropertyDefinition.getName();
                if (collection == null || !collection.contains(name)) {
                    linkedHashMap.put(name, field);
                }
            }
        }
        return linkedHashMap;
    }

    public Converter<Object, Object> _createConverter(Object obj) {
        Converter<?, ?> converter = null;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Converter) {
            return (Converter) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
        }
        Class<?> cls = (Class) obj;
        if (cls == Converter.None.class || ClassUtil.isBogusClass(cls)) {
            return null;
        }
        if (!Converter.class.isAssignableFrom(cls)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
        }
        HandlerInstantiator handlerInstantiator = this._config.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            converter = handlerInstantiator.converterInstance(this._config, this._classInfo, cls);
        }
        if (converter == null) {
            converter = (Converter) ClassUtil.createInstance(cls, this._config.canOverrideAccessModifiers());
        }
        return converter;
    }
}
