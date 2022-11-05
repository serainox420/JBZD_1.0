package com.fasterxml.jackson.databind.deser;

import com.facebook.share.internal.ShareConstants;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.ErrorThrowingDeserializer;
import com.fasterxml.jackson.databind.deser.impl.FieldProperty;
import com.fasterxml.jackson.databind.deser.impl.MethodProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.SetterlessProperty;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class BeanDeserializerFactory extends BasicDeserializerFactory implements Serializable {
    private static final Class<?>[] INIT_CAUSE_PARAMS = {Throwable.class};
    private static final Class<?>[] NO_VIEWS = new Class[0];
    public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(new DeserializerFactoryConfig());
    private static final long serialVersionUID = 1;

    public BeanDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        super(deserializerFactoryConfig);
    }

    @Override // com.fasterxml.jackson.databind.deser.BasicDeserializerFactory
    public DeserializerFactory withConfig(DeserializerFactoryConfig deserializerFactoryConfig) {
        if (this._factoryConfig != deserializerFactoryConfig) {
            if (getClass() != BeanDeserializerFactory.class) {
                throw new IllegalStateException("Subtype of BeanDeserializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with additional deserializer definitions");
            }
            return new BeanDeserializerFactory(deserializerFactoryConfig);
        }
        return this;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<Object> createBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType materializeAbstractType;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        JsonDeserializer<Object> _findCustomBeanDeserializer = _findCustomBeanDeserializer(javaType, mo255getConfig, beanDescription);
        if (_findCustomBeanDeserializer == null) {
            if (javaType.isThrowable()) {
                return buildThrowableDeserializer(deserializationContext, javaType, beanDescription);
            }
            if (javaType.isAbstract() && !javaType.isPrimitive() && !javaType.isEnumType() && (materializeAbstractType = materializeAbstractType(deserializationContext, javaType, beanDescription)) != null) {
                return buildBeanDeserializer(deserializationContext, materializeAbstractType, mo255getConfig.introspect(materializeAbstractType));
            }
            JsonDeserializer<?> findStdDeserializer = findStdDeserializer(deserializationContext, javaType, beanDescription);
            if (findStdDeserializer == null) {
                if (!isPotentialBeanType(javaType.getRawClass())) {
                    return null;
                }
                return buildBeanDeserializer(deserializationContext, javaType, beanDescription);
            }
            return findStdDeserializer;
        }
        return _findCustomBeanDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<Object> createBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription, Class<?> cls) throws JsonMappingException {
        return buildBuilderBasedDeserializer(deserializationContext, javaType, deserializationContext.mo255getConfig().introspectForBuilder(deserializationContext.constructType(cls)));
    }

    protected JsonDeserializer<?> findStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonDeserializer<?> findDefaultDeserializer = findDefaultDeserializer(deserializationContext, javaType, beanDescription);
        if (findDefaultDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer = findDefaultDeserializer;
                if (!it.hasNext()) {
                    return jsonDeserializer;
                }
                findDefaultDeserializer = it.next().modifyDeserializer(deserializationContext.mo255getConfig(), beanDescription, jsonDeserializer);
            }
        } else {
            return findDefaultDeserializer;
        }
    }

    protected JavaType materializeAbstractType(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        for (AbstractTypeResolver abstractTypeResolver : this._factoryConfig.abstractTypeResolvers()) {
            JavaType resolveAbstractType = abstractTypeResolver.resolveAbstractType(deserializationContext.mo255getConfig(), beanDescription);
            if (resolveAbstractType != null) {
                return resolveAbstractType;
            }
        }
        return null;
    }

    public JsonDeserializer<Object> buildBeanDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        BeanDeserializerBuilder beanDeserializerBuilder;
        JsonDeserializer<?> build;
        try {
            ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
            BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
            constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator);
            addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addObjectIdReader(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addReferenceProperties(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            addInjectables(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
            DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
            if (this._factoryConfig.hasDeserializerModifiers()) {
                Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
                while (true) {
                    beanDeserializerBuilder = constructBeanDeserializerBuilder;
                    if (!it.hasNext()) {
                        break;
                    }
                    constructBeanDeserializerBuilder = it.next().updateBuilder(mo255getConfig, beanDescription, beanDeserializerBuilder);
                }
            } else {
                beanDeserializerBuilder = constructBeanDeserializerBuilder;
            }
            if (javaType.isAbstract() && !findValueInstantiator.canInstantiate()) {
                build = beanDeserializerBuilder.buildAbstract();
            } else {
                build = beanDeserializerBuilder.build();
            }
            if (!this._factoryConfig.hasDeserializerModifiers()) {
                return build;
            }
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer = build;
                if (it2.hasNext()) {
                    build = it2.next().modifyDeserializer(mo255getConfig, beanDescription, jsonDeserializer);
                } else {
                    return jsonDeserializer;
                }
            }
        } catch (NoClassDefFoundError e) {
            return new ErrorThrowingDeserializer(e);
        }
    }

    protected JsonDeserializer<Object> buildBuilderBasedDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
        constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator);
        addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        addObjectIdReader(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        addReferenceProperties(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        addInjectables(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        JsonPOJOBuilder.Value findPOJOBuilderConfig = beanDescription.findPOJOBuilderConfig();
        String str = findPOJOBuilderConfig == null ? "build" : findPOJOBuilderConfig.buildMethodName;
        AnnotatedMethod findMethod = beanDescription.findMethod(str, null);
        if (findMethod != null && mo255getConfig.canOverrideAccessModifiers()) {
            ClassUtil.checkAndFixAccess(findMethod.mo333getMember(), mo255getConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        constructBeanDeserializerBuilder.setPOJOBuilder(findMethod, findPOJOBuilderConfig);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            for (BeanDeserializerModifier beanDeserializerModifier : this._factoryConfig.deserializerModifiers()) {
                constructBeanDeserializerBuilder = beanDeserializerModifier.updateBuilder(mo255getConfig, beanDescription, constructBeanDeserializerBuilder);
            }
        }
        JsonDeserializer<?> buildBuilderBased = constructBeanDeserializerBuilder.buildBuilderBased(javaType, str);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer = buildBuilderBased;
                if (it.hasNext()) {
                    buildBuilderBased = it.next().modifyDeserializer(mo255getConfig, beanDescription, jsonDeserializer);
                } else {
                    return jsonDeserializer;
                }
            }
        } else {
            return buildBuilderBased;
        }
    }

    protected void addObjectIdReader(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        JavaType javaType;
        SettableBeanProperty settableBeanProperty;
        ObjectIdGenerator<?> objectIdGeneratorInstance;
        ObjectIdInfo objectIdInfo = beanDescription.getObjectIdInfo();
        if (objectIdInfo != null) {
            Class<? extends ObjectIdGenerator<?>> generatorType = objectIdInfo.getGeneratorType();
            ObjectIdResolver objectIdResolverInstance = deserializationContext.objectIdResolverInstance(beanDescription.getClassInfo(), objectIdInfo);
            if (generatorType == ObjectIdGenerators.PropertyGenerator.class) {
                PropertyName propertyName = objectIdInfo.getPropertyName();
                settableBeanProperty = beanDeserializerBuilder.findProperty(propertyName);
                if (settableBeanProperty == null) {
                    throw new IllegalArgumentException("Invalid Object Id definition for " + beanDescription.getBeanClass().getName() + ": can not find property with name '" + propertyName + "'");
                }
                javaType = settableBeanProperty.getType();
                objectIdGeneratorInstance = new PropertyBasedObjectIdGenerator(objectIdInfo.getScope());
            } else {
                javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) generatorType), ObjectIdGenerator.class)[0];
                settableBeanProperty = null;
                objectIdGeneratorInstance = deserializationContext.objectIdGeneratorInstance(beanDescription.getClassInfo(), objectIdInfo);
            }
            beanDeserializerBuilder.setObjectIdReader(ObjectIdReader.construct(javaType, objectIdInfo.getPropertyName(), objectIdGeneratorInstance, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance));
        }
    }

    public JsonDeserializer<Object> buildThrowableDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        BeanDeserializerBuilder beanDeserializerBuilder;
        SettableBeanProperty constructSettableProperty;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        BeanDeserializerBuilder constructBeanDeserializerBuilder = constructBeanDeserializerBuilder(deserializationContext, beanDescription);
        constructBeanDeserializerBuilder.setValueInstantiator(findValueInstantiator(deserializationContext, beanDescription));
        addBeanProps(deserializationContext, beanDescription, constructBeanDeserializerBuilder);
        AnnotatedMethod findMethod = beanDescription.findMethod("initCause", INIT_CAUSE_PARAMS);
        if (findMethod != null && (constructSettableProperty = constructSettableProperty(deserializationContext, beanDescription, SimpleBeanPropertyDefinition.construct(deserializationContext.mo255getConfig(), findMethod, new PropertyName("cause")), findMethod.getParameterType(0))) != null) {
            constructBeanDeserializerBuilder.addOrReplaceProperty(constructSettableProperty, true);
        }
        constructBeanDeserializerBuilder.addIgnorable("localizedMessage");
        constructBeanDeserializerBuilder.addIgnorable("suppressed");
        constructBeanDeserializerBuilder.addIgnorable(ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                beanDeserializerBuilder = constructBeanDeserializerBuilder;
                if (!it.hasNext()) {
                    break;
                }
                constructBeanDeserializerBuilder = it.next().updateBuilder(mo255getConfig, beanDescription, beanDeserializerBuilder);
            }
        } else {
            beanDeserializerBuilder = constructBeanDeserializerBuilder;
        }
        JsonDeserializer<?> build = beanDeserializerBuilder.build();
        if (build instanceof BeanDeserializer) {
            build = new ThrowableDeserializer((BeanDeserializer) build);
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer = build;
                if (it2.hasNext()) {
                    build = it2.next().modifyDeserializer(mo255getConfig, beanDescription, jsonDeserializer);
                } else {
                    return jsonDeserializer;
                }
            }
        } else {
            return build;
        }
    }

    protected BeanDeserializerBuilder constructBeanDeserializerBuilder(DeserializationContext deserializationContext, BeanDescription beanDescription) {
        return new BeanDeserializerBuilder(beanDescription, deserializationContext.mo255getConfig());
    }

    protected void addBeanProps(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        Set<String> emptySet;
        List<BeanPropertyDefinition> list;
        SettableBeanProperty settableBeanProperty;
        CreatorProperty creatorProperty;
        Set<String> ignoredPropertyNames;
        SettableBeanProperty[] fromObjectArguments = beanDeserializerBuilder.getValueInstantiator().getFromObjectArguments(deserializationContext.mo255getConfig());
        boolean z = !beanDescription.getType().isAbstract();
        JsonIgnoreProperties.Value defaultPropertyIgnorals = deserializationContext.mo255getConfig().getDefaultPropertyIgnorals(beanDescription.getBeanClass(), beanDescription.getClassInfo());
        if (defaultPropertyIgnorals != null) {
            beanDeserializerBuilder.setIgnoreUnknownProperties(defaultPropertyIgnorals.getIgnoreUnknown());
            emptySet = defaultPropertyIgnorals.getIgnored();
            for (String str : emptySet) {
                beanDeserializerBuilder.addIgnorable(str);
            }
        } else {
            emptySet = Collections.emptySet();
        }
        AnnotatedMethod findAnySetter = beanDescription.findAnySetter();
        AnnotatedMember annotatedMember = null;
        if (findAnySetter != null) {
            beanDeserializerBuilder.setAnySetter(constructAnySetter(deserializationContext, beanDescription, findAnySetter));
        } else {
            annotatedMember = beanDescription.findAnySetterField();
            if (annotatedMember != null) {
                beanDeserializerBuilder.setAnySetter(constructAnySetter(deserializationContext, beanDescription, annotatedMember));
            }
        }
        if (findAnySetter == null && annotatedMember == null && (ignoredPropertyNames = beanDescription.getIgnoredPropertyNames()) != null) {
            for (String str2 : ignoredPropertyNames) {
                beanDeserializerBuilder.addIgnorable(str2);
            }
        }
        boolean z2 = deserializationContext.isEnabled(MapperFeature.USE_GETTERS_AS_SETTERS) && deserializationContext.isEnabled(MapperFeature.AUTO_DETECT_GETTERS);
        List<BeanPropertyDefinition> filterBeanProps = filterBeanProps(deserializationContext, beanDescription, beanDeserializerBuilder, beanDescription.findProperties(), emptySet);
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                list = filterBeanProps;
                if (!it.hasNext()) {
                    break;
                }
                filterBeanProps = it.next().updateProperties(deserializationContext.mo255getConfig(), beanDescription, list);
            }
        } else {
            list = filterBeanProps;
        }
        for (BeanPropertyDefinition beanPropertyDefinition : list) {
            if (beanPropertyDefinition.hasSetter()) {
                settableBeanProperty = constructSettableProperty(deserializationContext, beanDescription, beanPropertyDefinition, beanPropertyDefinition.getSetter().getParameterType(0));
            } else if (!beanPropertyDefinition.hasField()) {
                if (z2 && beanPropertyDefinition.hasGetter()) {
                    Class<?> rawType = beanPropertyDefinition.getGetter().getRawType();
                    if (Collection.class.isAssignableFrom(rawType) || Map.class.isAssignableFrom(rawType)) {
                        settableBeanProperty = constructSetterlessProperty(deserializationContext, beanDescription, beanPropertyDefinition);
                    }
                }
                settableBeanProperty = null;
            } else {
                settableBeanProperty = constructSettableProperty(deserializationContext, beanDescription, beanPropertyDefinition, beanPropertyDefinition.getField().getType());
            }
            if (z && beanPropertyDefinition.hasConstructorParameter()) {
                String name = beanPropertyDefinition.getName();
                if (fromObjectArguments != null) {
                    for (SettableBeanProperty settableBeanProperty2 : fromObjectArguments) {
                        if (name.equals(settableBeanProperty2.getName()) && (settableBeanProperty2 instanceof CreatorProperty)) {
                            creatorProperty = (CreatorProperty) settableBeanProperty2;
                            break;
                        }
                    }
                }
                creatorProperty = null;
                if (creatorProperty == null) {
                    deserializationContext.reportMappingException("Could not find creator property with name '%s' (in class %s)", name, beanDescription.getBeanClass().getName());
                } else {
                    if (settableBeanProperty != null) {
                        creatorProperty.setFallbackSetter(settableBeanProperty);
                    }
                    beanDeserializerBuilder.addCreatorProperty(creatorProperty);
                }
            } else if (settableBeanProperty != null) {
                Class<?>[] findViews = beanPropertyDefinition.findViews();
                if (findViews == null && !deserializationContext.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION)) {
                    findViews = NO_VIEWS;
                }
                settableBeanProperty.setViews(findViews);
                beanDeserializerBuilder.addProperty(settableBeanProperty);
            }
        }
    }

    protected List<BeanPropertyDefinition> filterBeanProps(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder, List<BeanPropertyDefinition> list, Set<String> set) throws JsonMappingException {
        ArrayList arrayList = new ArrayList(Math.max(4, list.size()));
        HashMap hashMap = new HashMap();
        for (BeanPropertyDefinition beanPropertyDefinition : list) {
            String name = beanPropertyDefinition.getName();
            if (!set.contains(name)) {
                if (!beanPropertyDefinition.hasConstructorParameter()) {
                    Class<?> cls = null;
                    if (beanPropertyDefinition.hasSetter()) {
                        cls = beanPropertyDefinition.getSetter().getRawParameterType(0);
                    } else if (beanPropertyDefinition.hasField()) {
                        cls = beanPropertyDefinition.getField().getRawType();
                    }
                    if (cls != null && isIgnorableType(deserializationContext.mo255getConfig(), beanDescription, cls, hashMap)) {
                        beanDeserializerBuilder.addIgnorable(name);
                    }
                }
                arrayList.add(beanPropertyDefinition);
            }
        }
        return arrayList;
    }

    protected void addReferenceProperties(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        JavaType type;
        Map<String, AnnotatedMember> findBackReferenceProperties = beanDescription.findBackReferenceProperties();
        if (findBackReferenceProperties != null) {
            for (Map.Entry<String, AnnotatedMember> entry : findBackReferenceProperties.entrySet()) {
                String key = entry.getKey();
                AnnotatedMember value = entry.getValue();
                if (value instanceof AnnotatedMethod) {
                    type = ((AnnotatedMethod) value).getParameterType(0);
                } else {
                    type = value.getType();
                }
                beanDeserializerBuilder.addBackReferenceProperty(key, constructSettableProperty(deserializationContext, beanDescription, SimpleBeanPropertyDefinition.construct(deserializationContext.mo255getConfig(), value), type));
            }
        }
    }

    protected void addInjectables(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanDeserializerBuilder beanDeserializerBuilder) throws JsonMappingException {
        Map<Object, AnnotatedMember> findInjectables = beanDescription.findInjectables();
        if (findInjectables != null) {
            for (Map.Entry<Object, AnnotatedMember> entry : findInjectables.entrySet()) {
                AnnotatedMember value = entry.getValue();
                beanDeserializerBuilder.addInjectable(PropertyName.construct(value.getName()), value.getType(), beanDescription.getClassAnnotations(), value, entry.getKey());
            }
        }
    }

    protected SettableAnyProperty constructAnySetter(DeserializationContext deserializationContext, BeanDescription beanDescription, AnnotatedMember annotatedMember) throws JsonMappingException {
        JavaType mo463getContentType;
        if (annotatedMember instanceof AnnotatedMethod) {
            mo463getContentType = ((AnnotatedMethod) annotatedMember).getParameterType(1);
        } else {
            mo463getContentType = annotatedMember instanceof AnnotatedField ? ((AnnotatedField) annotatedMember).getType().mo463getContentType() : null;
        }
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, annotatedMember, mo463getContentType);
        BeanProperty.Std std = new BeanProperty.Std(PropertyName.construct(annotatedMember.getName()), resolveMemberAndTypeAnnotations, null, beanDescription.getClassAnnotations(), annotatedMember, PropertyMetadata.STD_OPTIONAL);
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, annotatedMember);
        if (findDeserializerFromAnnotation == null) {
            findDeserializerFromAnnotation = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        if (findDeserializerFromAnnotation != null) {
            findDeserializerFromAnnotation = deserializationContext.handlePrimaryContextualization(findDeserializerFromAnnotation, std, resolveMemberAndTypeAnnotations);
        }
        return new SettableAnyProperty(std, annotatedMember, resolveMemberAndTypeAnnotations, findDeserializerFromAnnotation, (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler());
    }

    protected SettableBeanProperty constructSettableProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanPropertyDefinition beanPropertyDefinition, JavaType javaType) throws JsonMappingException {
        SettableBeanProperty fieldProperty;
        AnnotatedMember nonConstructorMutator = beanPropertyDefinition.getNonConstructorMutator();
        if (nonConstructorMutator == null) {
            deserializationContext.reportBadPropertyDefinition(beanDescription, beanPropertyDefinition, "No non-constructor mutator available", new Object[0]);
        }
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, nonConstructorMutator, javaType);
        TypeDeserializer typeDeserializer = (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler();
        if (nonConstructorMutator instanceof AnnotatedMethod) {
            fieldProperty = new MethodProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, typeDeserializer, beanDescription.getClassAnnotations(), (AnnotatedMethod) nonConstructorMutator);
        } else {
            fieldProperty = new FieldProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, typeDeserializer, beanDescription.getClassAnnotations(), (AnnotatedField) nonConstructorMutator);
        }
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, nonConstructorMutator);
        if (findDeserializerFromAnnotation == null) {
            findDeserializerFromAnnotation = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        if (findDeserializerFromAnnotation != null) {
            fieldProperty = fieldProperty.mo273withValueDeserializer(deserializationContext.handlePrimaryContextualization(findDeserializerFromAnnotation, fieldProperty, resolveMemberAndTypeAnnotations));
        }
        AnnotationIntrospector.ReferenceProperty findReferenceType = beanPropertyDefinition.findReferenceType();
        if (findReferenceType != null && findReferenceType.isManagedReference()) {
            fieldProperty.setManagedReferenceName(findReferenceType.getName());
        }
        ObjectIdInfo findObjectIdInfo = beanPropertyDefinition.findObjectIdInfo();
        if (findObjectIdInfo != null) {
            fieldProperty.setObjectIdInfo(findObjectIdInfo);
        }
        return fieldProperty;
    }

    protected SettableBeanProperty constructSetterlessProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, BeanPropertyDefinition beanPropertyDefinition) throws JsonMappingException {
        AnnotatedMethod getter = beanPropertyDefinition.getGetter();
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, getter, getter.getType());
        SetterlessProperty setterlessProperty = new SetterlessProperty(beanPropertyDefinition, resolveMemberAndTypeAnnotations, (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler(), beanDescription.getClassAnnotations(), getter);
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, getter);
        if (findDeserializerFromAnnotation == null) {
            findDeserializerFromAnnotation = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        if (findDeserializerFromAnnotation != null) {
            return setterlessProperty.mo273withValueDeserializer(deserializationContext.handlePrimaryContextualization(findDeserializerFromAnnotation, setterlessProperty, resolveMemberAndTypeAnnotations));
        }
        return setterlessProperty;
    }

    protected boolean isPotentialBeanType(Class<?> cls) {
        String canBeABeanType = ClassUtil.canBeABeanType(cls);
        if (canBeABeanType != null) {
            throw new IllegalArgumentException("Can not deserialize Class " + cls.getName() + " (of type " + canBeABeanType + ") as a Bean");
        }
        if (ClassUtil.isProxyType(cls)) {
            throw new IllegalArgumentException("Can not deserialize Proxy class " + cls.getName() + " as a Bean");
        }
        String isLocalType = ClassUtil.isLocalType(cls, true);
        if (isLocalType == null) {
            return true;
        }
        throw new IllegalArgumentException("Can not deserialize Class " + cls.getName() + " (of type " + isLocalType + ") as a Bean");
    }

    protected boolean isIgnorableType(DeserializationConfig deserializationConfig, BeanDescription beanDescription, Class<?> cls, Map<Class<?>, Boolean> map) {
        Boolean bool = map.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        ConfigOverride findConfigOverride = deserializationConfig.findConfigOverride(cls);
        if (findConfigOverride != null) {
            bool = findConfigOverride.getIsIgnoredType();
        }
        if (bool == null) {
            bool = deserializationConfig.getAnnotationIntrospector().isIgnorableType(deserializationConfig.introspectClassAnnotations(cls).getClassInfo());
            if (bool == null) {
                bool = Boolean.FALSE;
            }
        }
        map.put(cls, bool);
        return bool.booleanValue();
    }
}
