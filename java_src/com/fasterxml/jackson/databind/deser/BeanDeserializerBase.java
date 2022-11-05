package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.impl.BeanPropertyMap;
import com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler;
import com.fasterxml.jackson.databind.deser.impl.InnerClassProperty;
import com.fasterxml.jackson.databind.deser.impl.ManagedReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReferenceProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer;
import com.fasterxml.jackson.databind.deser.impl.UnwrappedPropertyHandler;
import com.fasterxml.jackson.databind.deser.impl.ValueInjector;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import com.fasterxml.jackson.databind.exc.IgnoredPropertyException;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.ClassKey;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class BeanDeserializerBase extends StdDeserializer<Object> implements ContextualDeserializer, ResolvableDeserializer, Serializable {
    protected static final PropertyName TEMP_PROPERTY_NAME = new PropertyName("#temporary-name");
    private static final long serialVersionUID = 1;
    protected SettableAnyProperty _anySetter;
    protected JsonDeserializer<Object> _arrayDelegateDeserializer;
    protected final Map<String, SettableBeanProperty> _backRefs;
    protected final BeanPropertyMap _beanProperties;
    protected final JavaType _beanType;
    private final transient Annotations _classAnnotations;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected ExternalTypeHandler _externalTypeIdHandler;
    protected final Set<String> _ignorableProps;
    protected final boolean _ignoreAllUnknown;
    protected final ValueInjector[] _injectables;
    protected final boolean _needViewProcesing;
    protected boolean _nonStandardCreation;
    protected final ObjectIdReader _objectIdReader;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected final JsonFormat.Shape _serializationShape;
    protected transient HashMap<ClassKey, JsonDeserializer<Object>> _subDeserializers;
    protected UnwrappedPropertyHandler _unwrappedPropertyHandler;
    protected final ValueInstantiator _valueInstantiator;
    protected boolean _vanillaProcessing;

    protected abstract Object _deserializeUsingPropertyBased(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException;

    protected abstract BeanDeserializerBase asArrayDeserializer();

    public abstract Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException;

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public abstract JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer);

    /* renamed from: withIgnorableProperties */
    public abstract BeanDeserializerBase mo257withIgnorableProperties(Set<String> set);

    /* renamed from: withObjectIdReader */
    public abstract BeanDeserializerBase mo258withObjectIdReader(ObjectIdReader objectIdReader);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeanDeserializerBase(BeanDeserializerBuilder beanDeserializerBuilder, BeanDescription beanDescription, BeanPropertyMap beanPropertyMap, Map<String, SettableBeanProperty> map, Set<String> set, boolean z, boolean z2) {
        super(beanDescription.getType());
        boolean z3 = true;
        JsonFormat.Shape shape = null;
        this._classAnnotations = beanDescription.getClassInfo().getAnnotations();
        this._beanType = beanDescription.getType();
        this._valueInstantiator = beanDeserializerBuilder.getValueInstantiator();
        this._beanProperties = beanPropertyMap;
        this._backRefs = map;
        this._ignorableProps = set;
        this._ignoreAllUnknown = z;
        this._anySetter = beanDeserializerBuilder.getAnySetter();
        List<ValueInjector> injectables = beanDeserializerBuilder.getInjectables();
        this._injectables = (injectables == null || injectables.isEmpty()) ? null : (ValueInjector[]) injectables.toArray(new ValueInjector[injectables.size()]);
        this._objectIdReader = beanDeserializerBuilder.getObjectIdReader();
        this._nonStandardCreation = this._unwrappedPropertyHandler != null || this._valueInstantiator.canCreateUsingDelegate() || this._valueInstantiator.canCreateUsingArrayDelegate() || this._valueInstantiator.canCreateFromObjectWith() || !this._valueInstantiator.canCreateUsingDefault();
        JsonFormat.Value findExpectedFormat = beanDescription.findExpectedFormat(null);
        this._serializationShape = findExpectedFormat != null ? findExpectedFormat.getShape() : shape;
        this._needViewProcesing = z2;
        this._vanillaProcessing = (this._nonStandardCreation || this._injectables != null || this._needViewProcesing || this._objectIdReader != null) ? false : z3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase) {
        this(beanDeserializerBase, beanDeserializerBase._ignoreAllUnknown);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, boolean z) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._beanProperties = beanDeserializerBase._beanProperties;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = z;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, NameTransformer nameTransformer) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = nameTransformer != null || beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        UnwrappedPropertyHandler unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        if (nameTransformer != null) {
            unwrappedPropertyHandler = unwrappedPropertyHandler != null ? unwrappedPropertyHandler.renameAll(nameTransformer) : unwrappedPropertyHandler;
            this._beanProperties = beanDeserializerBase._beanProperties.renameAll(nameTransformer);
        } else {
            this._beanProperties = beanDeserializerBase._beanProperties;
        }
        this._unwrappedPropertyHandler = unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, ObjectIdReader objectIdReader) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._objectIdReader = objectIdReader;
        if (objectIdReader == null) {
            this._beanProperties = beanDeserializerBase._beanProperties;
            this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
            return;
        }
        this._beanProperties = beanDeserializerBase._beanProperties.withProperty(new ObjectIdValueProperty(objectIdReader, PropertyMetadata.STD_REQUIRED));
        this._vanillaProcessing = false;
    }

    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, Set<String> set) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = set;
        this._ignoreAllUnknown = beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._beanProperties = beanDeserializerBase._beanProperties.withoutProperties(set);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BeanDeserializerBase(BeanDeserializerBase beanDeserializerBase, BeanPropertyMap beanPropertyMap) {
        super(beanDeserializerBase._beanType);
        this._classAnnotations = beanDeserializerBase._classAnnotations;
        this._beanType = beanDeserializerBase._beanType;
        this._valueInstantiator = beanDeserializerBase._valueInstantiator;
        this._delegateDeserializer = beanDeserializerBase._delegateDeserializer;
        this._propertyBasedCreator = beanDeserializerBase._propertyBasedCreator;
        this._beanProperties = beanPropertyMap;
        this._backRefs = beanDeserializerBase._backRefs;
        this._ignorableProps = beanDeserializerBase._ignorableProps;
        this._ignoreAllUnknown = beanDeserializerBase._ignoreAllUnknown;
        this._anySetter = beanDeserializerBase._anySetter;
        this._injectables = beanDeserializerBase._injectables;
        this._objectIdReader = beanDeserializerBase._objectIdReader;
        this._nonStandardCreation = beanDeserializerBase._nonStandardCreation;
        this._unwrappedPropertyHandler = beanDeserializerBase._unwrappedPropertyHandler;
        this._needViewProcesing = beanDeserializerBase._needViewProcesing;
        this._serializationShape = beanDeserializerBase._serializationShape;
        this._vanillaProcessing = beanDeserializerBase._vanillaProcessing;
    }

    public BeanDeserializerBase withBeanProperties(BeanPropertyMap beanPropertyMap) {
        throw new UnsupportedOperationException("Class " + getClass().getName() + " does not override `withBeanProperties()`, needs to");
    }

    @Override // com.fasterxml.jackson.databind.deser.ResolvableDeserializer
    public void resolve(DeserializationContext deserializationContext) throws JsonMappingException {
        SettableBeanProperty mo273withValueDeserializer;
        ExternalTypeHandler.Builder builder = null;
        SettableBeanProperty[] fromObjectArguments = this._valueInstantiator.canCreateFromObjectWith() ? this._valueInstantiator.getFromObjectArguments(deserializationContext.mo255getConfig()) : null;
        Iterator<SettableBeanProperty> it = this._beanProperties.iterator();
        UnwrappedPropertyHandler unwrappedPropertyHandler = null;
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            if (!next.hasValueDeserializer()) {
                JsonDeserializer<?> findConvertingDeserializer = findConvertingDeserializer(deserializationContext, next);
                if (findConvertingDeserializer == null) {
                    findConvertingDeserializer = findDeserializer(deserializationContext, next.getType(), next);
                }
                mo273withValueDeserializer = next.mo273withValueDeserializer(findConvertingDeserializer);
            } else {
                JsonDeserializer<?> valueDeserializer = next.getValueDeserializer();
                JsonDeserializer<?> handlePrimaryContextualization = deserializationContext.handlePrimaryContextualization(valueDeserializer, next, next.getType());
                mo273withValueDeserializer = handlePrimaryContextualization != valueDeserializer ? next.mo273withValueDeserializer(handlePrimaryContextualization) : next;
            }
            SettableBeanProperty _resolveManagedReferenceProperty = _resolveManagedReferenceProperty(deserializationContext, mo273withValueDeserializer);
            if (!(_resolveManagedReferenceProperty instanceof ManagedReferenceProperty)) {
                _resolveManagedReferenceProperty = _resolvedObjectIdProperty(deserializationContext, _resolveManagedReferenceProperty);
            }
            SettableBeanProperty _resolveUnwrappedProperty = _resolveUnwrappedProperty(deserializationContext, _resolveManagedReferenceProperty);
            if (_resolveUnwrappedProperty != null) {
                UnwrappedPropertyHandler unwrappedPropertyHandler2 = unwrappedPropertyHandler == null ? new UnwrappedPropertyHandler() : unwrappedPropertyHandler;
                unwrappedPropertyHandler2.addProperty(_resolveUnwrappedProperty);
                this._beanProperties.remove(_resolveUnwrappedProperty);
                unwrappedPropertyHandler = unwrappedPropertyHandler2;
            } else {
                SettableBeanProperty _resolveInnerClassValuedProperty = _resolveInnerClassValuedProperty(deserializationContext, _resolveManagedReferenceProperty);
                if (_resolveInnerClassValuedProperty != next) {
                    this._beanProperties.replace(_resolveInnerClassValuedProperty);
                    if (fromObjectArguments != null) {
                        int length = fromObjectArguments.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                break;
                            } else if (fromObjectArguments[i] != next) {
                                i++;
                            } else {
                                fromObjectArguments[i] = _resolveInnerClassValuedProperty;
                                break;
                            }
                        }
                    }
                }
                if (_resolveInnerClassValuedProperty.hasValueTypeDeserializer()) {
                    TypeDeserializer valueTypeDeserializer = _resolveInnerClassValuedProperty.getValueTypeDeserializer();
                    if (valueTypeDeserializer.getTypeInclusion() == JsonTypeInfo.As.EXTERNAL_PROPERTY) {
                        ExternalTypeHandler.Builder builder2 = builder == null ? new ExternalTypeHandler.Builder() : builder;
                        builder2.addExternal(_resolveInnerClassValuedProperty, valueTypeDeserializer);
                        this._beanProperties.remove(_resolveInnerClassValuedProperty);
                        builder = builder2;
                    }
                }
            }
        }
        if (this._anySetter != null && !this._anySetter.hasValueDeserializer()) {
            this._anySetter = this._anySetter.withValueDeserializer(findDeserializer(deserializationContext, this._anySetter.getType(), this._anySetter.getProperty()));
        }
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            JavaType delegateType = this._valueInstantiator.getDelegateType(deserializationContext.mo255getConfig());
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            this._delegateDeserializer = _findDelegateDeserializer(deserializationContext, delegateType, this._valueInstantiator.getDelegateCreator());
        }
        if (this._valueInstantiator.canCreateUsingArrayDelegate()) {
            JavaType arrayDelegateType = this._valueInstantiator.getArrayDelegateType(deserializationContext.mo255getConfig());
            if (arrayDelegateType == null) {
                throw new IllegalArgumentException("Invalid array-delegate-creator definition for " + this._beanType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingArrayDelegate()', but null for 'getArrayDelegateType()'");
            }
            this._arrayDelegateDeserializer = _findDelegateDeserializer(deserializationContext, arrayDelegateType, this._valueInstantiator.getArrayDelegateCreator());
        }
        if (fromObjectArguments != null) {
            this._propertyBasedCreator = PropertyBasedCreator.construct(deserializationContext, this._valueInstantiator, fromObjectArguments);
        }
        if (builder != null) {
            this._externalTypeIdHandler = builder.build(this._beanProperties);
            this._nonStandardCreation = true;
        }
        this._unwrappedPropertyHandler = unwrappedPropertyHandler;
        if (unwrappedPropertyHandler != null) {
            this._nonStandardCreation = true;
        }
        this._vanillaProcessing = this._vanillaProcessing && !this._nonStandardCreation;
    }

    private JsonDeserializer<Object> _findDelegateDeserializer(DeserializationContext deserializationContext, JavaType javaType, AnnotatedWithParams annotatedWithParams) throws JsonMappingException {
        BeanProperty.Std std = new BeanProperty.Std(TEMP_PROPERTY_NAME, javaType, null, this._classAnnotations, annotatedWithParams, PropertyMetadata.STD_OPTIONAL);
        TypeDeserializer typeDeserializer = (TypeDeserializer) javaType.getTypeHandler();
        if (typeDeserializer == null) {
            typeDeserializer = deserializationContext.mo255getConfig().findTypeDeserializer(javaType);
        }
        JsonDeserializer<Object> findDeserializer = findDeserializer(deserializationContext, javaType, std);
        return typeDeserializer != null ? new TypeWrappedDeserializer(typeDeserializer.forProperty(std), findDeserializer) : findDeserializer;
    }

    protected JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        Object findDeserializationConverter;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializationConverter = annotationIntrospector.findDeserializationConverter(settableBeanProperty.getMember())) == null) {
            return null;
        }
        Converter<Object, Object> converterInstance = deserializationContext.converterInstance(settableBeanProperty.getMember(), findDeserializationConverter);
        JavaType inputType = converterInstance.getInputType(deserializationContext.getTypeFactory());
        return new StdDelegatingDeserializer(converterInstance, inputType, deserializationContext.findContextualValueDeserializer(inputType, settableBeanProperty));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a  */
    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /* renamed from: createContextual */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonDeserializer<?> mo279createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        BeanDeserializerBase beanDeserializerBase;
        JsonFormat.Value findFormatOverrides;
        BeanDeserializerBase beanDeserializerBase2;
        JsonFormat.Shape shape;
        BeanPropertyMap beanPropertyMap;
        BeanPropertyMap withCaseInsensitivity;
        JsonIgnoreProperties.Value findPropertyIgnorals;
        Set<String> set;
        ObjectIdInfo findObjectIdInfo;
        JavaType javaType;
        ObjectIdGenerator<?> objectIdGeneratorInstance;
        SettableBeanProperty settableBeanProperty;
        JsonFormat.Shape shape2 = null;
        ObjectIdReader objectIdReader = this._objectIdReader;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        AnnotatedMember member = (beanProperty == null || annotationIntrospector == null) ? null : beanProperty.getMember();
        if (member != null && annotationIntrospector != null && (findObjectIdInfo = annotationIntrospector.findObjectIdInfo(member)) != null) {
            ObjectIdInfo findObjectReferenceInfo = annotationIntrospector.findObjectReferenceInfo(member, findObjectIdInfo);
            Class<? extends ObjectIdGenerator<?>> generatorType = findObjectReferenceInfo.getGeneratorType();
            ObjectIdResolver objectIdResolverInstance = deserializationContext.objectIdResolverInstance(member, findObjectReferenceInfo);
            if (generatorType == ObjectIdGenerators.PropertyGenerator.class) {
                PropertyName propertyName = findObjectReferenceInfo.getPropertyName();
                settableBeanProperty = findProperty(propertyName);
                if (settableBeanProperty == null) {
                    throw new IllegalArgumentException("Invalid Object Id definition for " + handledType().getName() + ": can not find property with name '" + propertyName + "'");
                }
                javaType = settableBeanProperty.getType();
                objectIdGeneratorInstance = new PropertyBasedObjectIdGenerator(findObjectReferenceInfo.getScope());
            } else {
                javaType = deserializationContext.getTypeFactory().findTypeParameters(deserializationContext.constructType((Class<?>) generatorType), ObjectIdGenerator.class)[0];
                objectIdGeneratorInstance = deserializationContext.objectIdGeneratorInstance(member, findObjectReferenceInfo);
                settableBeanProperty = null;
            }
            objectIdReader = ObjectIdReader.construct(javaType, findObjectReferenceInfo.getPropertyName(), objectIdGeneratorInstance, deserializationContext.findRootValueDeserializer(javaType), settableBeanProperty, objectIdResolverInstance);
        }
        BeanDeserializerBase mo258withObjectIdReader = (objectIdReader == null || objectIdReader == this._objectIdReader) ? this : mo258withObjectIdReader(objectIdReader);
        if (member != null && (findPropertyIgnorals = annotationIntrospector.findPropertyIgnorals(member)) != null) {
            Set<String> findIgnoredForDeserialization = findPropertyIgnorals.findIgnoredForDeserialization();
            if (!findIgnoredForDeserialization.isEmpty()) {
                Set<String> set2 = mo258withObjectIdReader._ignorableProps;
                if (set2 == null || set2.isEmpty()) {
                    set = findIgnoredForDeserialization;
                } else {
                    set = new HashSet<>(findIgnoredForDeserialization);
                    set.addAll(set2);
                }
                beanDeserializerBase = mo258withObjectIdReader.mo257withIgnorableProperties(set);
                findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, handledType());
                if (findFormatOverrides == null) {
                    if (findFormatOverrides.hasShape()) {
                        shape2 = findFormatOverrides.getShape();
                    }
                    Boolean feature = findFormatOverrides.getFeature(JsonFormat.Feature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
                    if (feature == null || (withCaseInsensitivity = (beanPropertyMap = this._beanProperties).withCaseInsensitivity(feature.booleanValue())) == beanPropertyMap) {
                        beanDeserializerBase2 = beanDeserializerBase;
                        shape = shape2;
                    } else {
                        beanDeserializerBase2 = beanDeserializerBase.withBeanProperties(withCaseInsensitivity);
                        shape = shape2;
                    }
                } else {
                    beanDeserializerBase2 = beanDeserializerBase;
                    shape = null;
                }
                if (shape == null) {
                    shape = this._serializationShape;
                }
                return shape != JsonFormat.Shape.ARRAY ? beanDeserializerBase2.asArrayDeserializer() : beanDeserializerBase2;
            }
        }
        beanDeserializerBase = mo258withObjectIdReader;
        findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, handledType());
        if (findFormatOverrides == null) {
        }
        if (shape == null) {
        }
        if (shape != JsonFormat.Shape.ARRAY) {
        }
    }

    protected SettableBeanProperty _resolveManagedReferenceProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        String managedReferenceName = settableBeanProperty.getManagedReferenceName();
        if (managedReferenceName != null) {
            SettableBeanProperty findBackReference = settableBeanProperty.getValueDeserializer().findBackReference(managedReferenceName);
            if (findBackReference == null) {
                throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': no back reference property found from type " + settableBeanProperty.getType());
            }
            JavaType javaType = this._beanType;
            JavaType type = findBackReference.getType();
            boolean isContainerType = settableBeanProperty.getType().isContainerType();
            if (!type.getRawClass().isAssignableFrom(javaType.getRawClass())) {
                throw new IllegalArgumentException("Can not handle managed/back reference '" + managedReferenceName + "': back reference type (" + type.getRawClass().getName() + ") not compatible with managed type (" + javaType.getRawClass().getName() + ")");
            }
            return new ManagedReferenceProperty(settableBeanProperty, managedReferenceName, findBackReference, this._classAnnotations, isContainerType);
        }
        return settableBeanProperty;
    }

    protected SettableBeanProperty _resolvedObjectIdProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        ObjectIdInfo objectIdInfo = settableBeanProperty.getObjectIdInfo();
        return (objectIdInfo == null && settableBeanProperty.getValueDeserializer().getObjectIdReader() == null) ? settableBeanProperty : new ObjectIdReferenceProperty(settableBeanProperty, objectIdInfo);
    }

    protected SettableBeanProperty _resolveUnwrappedProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        NameTransformer findUnwrappingNameTransformer;
        JsonDeserializer<Object> valueDeserializer;
        JsonDeserializer<Object> unwrappingDeserializer;
        AnnotatedMember member = settableBeanProperty.getMember();
        if (member == null || (findUnwrappingNameTransformer = deserializationContext.getAnnotationIntrospector().findUnwrappingNameTransformer(member)) == null || (unwrappingDeserializer = (valueDeserializer = settableBeanProperty.getValueDeserializer()).unwrappingDeserializer(findUnwrappingNameTransformer)) == valueDeserializer || unwrappingDeserializer == null) {
            return null;
        }
        return settableBeanProperty.mo273withValueDeserializer(unwrappingDeserializer);
    }

    protected SettableBeanProperty _resolveInnerClassValuedProperty(DeserializationContext deserializationContext, SettableBeanProperty settableBeanProperty) {
        Class<?> rawClass;
        Class<?> outerClass;
        JsonDeserializer<Object> valueDeserializer = settableBeanProperty.getValueDeserializer();
        if ((valueDeserializer instanceof BeanDeserializerBase) && !((BeanDeserializerBase) valueDeserializer).getValueInstantiator().canCreateUsingDefault() && (outerClass = ClassUtil.getOuterClass((rawClass = settableBeanProperty.getType().getRawClass()))) != null && outerClass == this._beanType.getRawClass()) {
            Constructor<?>[] constructors = rawClass.getConstructors();
            for (Constructor<?> constructor : constructors) {
                Class<?>[] parameterTypes = constructor.getParameterTypes();
                if (parameterTypes.length == 1 && outerClass.equals(parameterTypes[0])) {
                    if (deserializationContext.canOverrideAccessModifiers()) {
                        ClassUtil.checkAndFixAccess(constructor, deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                    }
                    return new InnerClassProperty(settableBeanProperty, constructor);
                }
            }
            return settableBeanProperty;
        }
        return settableBeanProperty;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Class<?> handledType() {
        return this._beanType.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public ObjectIdReader getObjectIdReader() {
        return this._objectIdReader;
    }

    public boolean hasProperty(String str) {
        return this._beanProperties.find(str) != null;
    }

    public boolean hasViews() {
        return this._needViewProcesing;
    }

    public int getPropertyCount() {
        return this._beanProperties.size();
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Collection<Object> getKnownPropertyNames() {
        ArrayList arrayList = new ArrayList();
        Iterator<SettableBeanProperty> it = this._beanProperties.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getName());
        }
        return arrayList;
    }

    @Deprecated
    public final Class<?> getBeanClass() {
        return this._beanType.getRawClass();
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public JavaType getValueType() {
        return this._beanType;
    }

    public Iterator<SettableBeanProperty> properties() {
        if (this._beanProperties == null) {
            throw new IllegalStateException("Can only call after BeanDeserializer has been resolved");
        }
        return this._beanProperties.iterator();
    }

    public Iterator<SettableBeanProperty> creatorProperties() {
        return this._propertyBasedCreator == null ? Collections.emptyList().iterator() : this._propertyBasedCreator.properties().iterator();
    }

    public SettableBeanProperty findProperty(PropertyName propertyName) {
        return findProperty(propertyName.getSimpleName());
    }

    public SettableBeanProperty findProperty(String str) {
        SettableBeanProperty find = this._beanProperties == null ? null : this._beanProperties.find(str);
        if (find == null && this._propertyBasedCreator != null) {
            return this._propertyBasedCreator.findCreatorProperty(str);
        }
        return find;
    }

    public SettableBeanProperty findProperty(int i) {
        SettableBeanProperty find = this._beanProperties == null ? null : this._beanProperties.find(i);
        if (find == null && this._propertyBasedCreator != null) {
            return this._propertyBasedCreator.findCreatorProperty(i);
        }
        return find;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public SettableBeanProperty findBackReference(String str) {
        if (this._backRefs == null) {
            return null;
        }
        return this._backRefs.get(str);
    }

    public ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    public void replaceProperty(SettableBeanProperty settableBeanProperty, SettableBeanProperty settableBeanProperty2) {
        this._beanProperties.replace(settableBeanProperty2);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    /* renamed from: deserializeWithType */
    public Object mo321deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        Object objectId;
        if (this._objectIdReader != null) {
            if (jsonParser.canReadObjectId() && (objectId = jsonParser.getObjectId()) != null) {
                return _handleTypedObjectId(jsonParser, deserializationContext, typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext), objectId);
            }
            JsonToken currentToken = jsonParser.getCurrentToken();
            if (currentToken != null) {
                if (currentToken.isScalarValue()) {
                    return deserializeFromObjectId(jsonParser, deserializationContext);
                }
                if (currentToken == JsonToken.START_OBJECT) {
                    currentToken = jsonParser.nextToken();
                }
                if (currentToken == JsonToken.FIELD_NAME && this._objectIdReader.maySerializeAsObject() && this._objectIdReader.isValidReferencePropertyName(jsonParser.getCurrentName(), jsonParser)) {
                    return deserializeFromObjectId(jsonParser, deserializationContext);
                }
            }
        }
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object _handleTypedObjectId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, Object obj2) throws IOException {
        JsonDeserializer<Object> deserializer = this._objectIdReader.getDeserializer();
        if (deserializer.handledType() != obj2.getClass()) {
            obj2 = _convertObjectId(jsonParser, deserializationContext, obj2, deserializer);
        }
        deserializationContext.findObjectId(obj2, this._objectIdReader.generator, this._objectIdReader.resolver).bindItem(obj);
        SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
        if (settableBeanProperty != null) {
            return settableBeanProperty.setAndReturn(obj, obj2);
        }
        return obj;
    }

    protected Object _convertObjectId(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, JsonDeserializer<Object> jsonDeserializer) throws IOException {
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        if (obj instanceof String) {
            tokenBuffer.writeString((String) obj);
        } else if (obj instanceof Long) {
            tokenBuffer.writeNumber(((Long) obj).longValue());
        } else if (obj instanceof Integer) {
            tokenBuffer.writeNumber(((Integer) obj).intValue());
        } else {
            tokenBuffer.writeObject(obj);
        }
        JsonParser asParser = tokenBuffer.asParser();
        asParser.nextToken();
        return jsonDeserializer.mo573deserialize(asParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object deserializeWithObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return deserializeFromObject(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object deserializeFromObjectId(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object readObjectReference = this._objectIdReader.readObjectReference(jsonParser, deserializationContext);
        ReadableObjectId findObjectId = deserializationContext.findObjectId(readObjectReference, this._objectIdReader.generator, this._objectIdReader.resolver);
        Object resolve = findObjectId.resolve();
        if (resolve == null) {
            throw new UnresolvedForwardReference(jsonParser, "Could not resolve Object Id [" + readObjectReference + "] (for " + this._beanType + ").", jsonParser.getCurrentLocation(), findObjectId);
        }
        return resolve;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object deserializeFromObjectUsingNonDefault(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> _delegateDeserializer = _delegateDeserializer();
        if (_delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
        }
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._beanType.isAbstract()) {
            return deserializationContext.handleMissingInstantiator(handledType(), jsonParser, "abstract type (need to add/enable type information?)", new Object[0]);
        }
        Class<?> rawClass = this._beanType.getRawClass();
        if (ClassUtil.isNonStaticInnerClass(rawClass)) {
            return deserializationContext.handleMissingInstantiator(rawClass, jsonParser, "can only instantiate non-static inner class by using default, no-argument constructor", new Object[0]);
        }
        return deserializationContext.handleMissingInstantiator(rawClass, jsonParser, "no suitable constructor found, can not deserialize from Object value (missing default constructor or creator, or perhaps need to add/enable type information?)", new Object[0]);
    }

    public Object deserializeFromNumber(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._objectIdReader != null) {
            return deserializeFromObjectId(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> _delegateDeserializer = _delegateDeserializer();
        switch (jsonParser.getNumberType()) {
            case INT:
                if (_delegateDeserializer != null && !this._valueInstantiator.canCreateFromInt()) {
                    Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        injectValues(deserializationContext, createUsingDelegate);
                        return createUsingDelegate;
                    }
                    return createUsingDelegate;
                }
                return this._valueInstantiator.createFromInt(deserializationContext, jsonParser.getIntValue());
            case LONG:
                if (_delegateDeserializer != null && !this._valueInstantiator.canCreateFromInt()) {
                    Object createUsingDelegate2 = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
                    if (this._injectables != null) {
                        injectValues(deserializationContext, createUsingDelegate2);
                        return createUsingDelegate2;
                    }
                    return createUsingDelegate2;
                }
                return this._valueInstantiator.createFromLong(deserializationContext, jsonParser.getLongValue());
            default:
                if (_delegateDeserializer == null) {
                    return deserializationContext.handleMissingInstantiator(handledType(), jsonParser, "no suitable creator method found to deserialize from Number value (%s)", jsonParser.getNumberValue());
                }
                Object createUsingDelegate3 = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
                if (this._injectables != null) {
                    injectValues(deserializationContext, createUsingDelegate3);
                    return createUsingDelegate3;
                }
                return createUsingDelegate3;
        }
    }

    public Object deserializeFromString(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (this._objectIdReader != null) {
            return deserializeFromObjectId(jsonParser, deserializationContext);
        }
        JsonDeserializer<Object> _delegateDeserializer = _delegateDeserializer();
        if (_delegateDeserializer != null && !this._valueInstantiator.canCreateFromString()) {
            Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDelegate);
                return createUsingDelegate;
            }
            return createUsingDelegate;
        }
        return this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
    }

    public Object deserializeFromDouble(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonParser.NumberType numberType = jsonParser.getNumberType();
        if (numberType == JsonParser.NumberType.DOUBLE || numberType == JsonParser.NumberType.FLOAT) {
            JsonDeserializer<Object> _delegateDeserializer = _delegateDeserializer();
            if (_delegateDeserializer != null && !this._valueInstantiator.canCreateFromDouble()) {
                Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
                if (this._injectables != null) {
                    injectValues(deserializationContext, createUsingDelegate);
                    return createUsingDelegate;
                }
                return createUsingDelegate;
            }
            return this._valueInstantiator.createFromDouble(deserializationContext, jsonParser.getDoubleValue());
        }
        JsonDeserializer<Object> _delegateDeserializer2 = _delegateDeserializer();
        return _delegateDeserializer2 != null ? this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer2.mo573deserialize(jsonParser, deserializationContext)) : deserializationContext.handleMissingInstantiator(handledType(), jsonParser, "no suitable creator method found to deserialize from Number value (%s)", jsonParser.getNumberValue());
    }

    public Object deserializeFromBoolean(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> _delegateDeserializer = _delegateDeserializer();
        if (_delegateDeserializer != null && !this._valueInstantiator.canCreateFromBoolean()) {
            Object createUsingDelegate = this._valueInstantiator.createUsingDelegate(deserializationContext, _delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingDelegate);
                return createUsingDelegate;
            }
            return createUsingDelegate;
        }
        return this._valueInstantiator.createFromBoolean(deserializationContext, jsonParser.getCurrentToken() == JsonToken.VALUE_TRUE);
    }

    public Object deserializeFromArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._arrayDelegateDeserializer;
        if (jsonDeserializer != null || (jsonDeserializer = this._delegateDeserializer) != null) {
            Object createUsingArrayDelegate = this._valueInstantiator.createUsingArrayDelegate(deserializationContext, jsonDeserializer.mo573deserialize(jsonParser, deserializationContext));
            if (this._injectables != null) {
                injectValues(deserializationContext, createUsingArrayDelegate);
                return createUsingArrayDelegate;
            }
            return createUsingArrayDelegate;
        } else if (deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            if (jsonParser.nextToken() == JsonToken.END_ARRAY && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
                return null;
            }
            Object deserialize = mo573deserialize(jsonParser, deserializationContext);
            if (jsonParser.nextToken() != JsonToken.END_ARRAY) {
                handleMissingEndArrayForSingle(jsonParser, deserializationContext);
                return deserialize;
            }
            return deserialize;
        } else if (deserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
            if (jsonParser.nextToken() == JsonToken.END_ARRAY) {
                return null;
            }
            return deserializationContext.handleUnexpectedToken(handledType(), JsonToken.START_ARRAY, jsonParser, null, new Object[0]);
        } else {
            return deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        }
    }

    public Object deserializeFromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        return this._objectIdReader != null ? deserializeFromObjectId(jsonParser, deserializationContext) : jsonParser.getEmbeddedObject();
    }

    private final JsonDeserializer<Object> _delegateDeserializer() {
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        if (jsonDeserializer == null) {
            return this._arrayDelegateDeserializer;
        }
        return jsonDeserializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void injectValues(DeserializationContext deserializationContext, Object obj) throws IOException {
        for (ValueInjector valueInjector : this._injectables) {
            valueInjector.inject(deserializationContext, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object handleUnknownProperties(DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        tokenBuffer.writeEndObject();
        JsonParser asParser = tokenBuffer.asParser();
        while (asParser.nextToken() != JsonToken.END_OBJECT) {
            String currentName = asParser.getCurrentName();
            asParser.nextToken();
            handleUnknownProperty(asParser, deserializationContext, obj, currentName);
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnknownVanilla(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (this._ignorableProps != null && this._ignorableProps.contains(str)) {
            handleIgnoredProperty(jsonParser, deserializationContext, obj, str);
        } else if (this._anySetter != null) {
            try {
                this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj, str);
            } catch (Exception e) {
                wrapAndThrow(e, obj, str, deserializationContext);
            }
        } else {
            handleUnknownProperty(jsonParser, deserializationContext, obj, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public void handleUnknownProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (this._ignoreAllUnknown) {
            jsonParser.skipChildren();
            return;
        }
        if (this._ignorableProps != null && this._ignorableProps.contains(str)) {
            handleIgnoredProperty(jsonParser, deserializationContext, obj, str);
        }
        super.handleUnknownProperty(jsonParser, deserializationContext, obj, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleIgnoredProperty(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_IGNORED_PROPERTIES)) {
            throw IgnoredPropertyException.from(jsonParser, obj, str, getKnownPropertyNames());
        }
        jsonParser.skipChildren();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object handlePolymorphic(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        Object obj2;
        JsonDeserializer<Object> _findSubclassDeserializer = _findSubclassDeserializer(deserializationContext, obj, tokenBuffer);
        if (_findSubclassDeserializer != null) {
            if (tokenBuffer != null) {
                tokenBuffer.writeEndObject();
                JsonParser asParser = tokenBuffer.asParser();
                asParser.nextToken();
                obj2 = _findSubclassDeserializer.deserialize(asParser, deserializationContext, obj);
            } else {
                obj2 = obj;
            }
            if (jsonParser != null) {
                return _findSubclassDeserializer.deserialize(jsonParser, deserializationContext, obj2);
            }
            return obj2;
        }
        Object handleUnknownProperties = tokenBuffer != null ? handleUnknownProperties(deserializationContext, obj, tokenBuffer) : obj;
        if (jsonParser != null) {
            return deserialize(jsonParser, deserializationContext, handleUnknownProperties);
        }
        return handleUnknownProperties;
    }

    protected JsonDeserializer<Object> _findSubclassDeserializer(DeserializationContext deserializationContext, Object obj, TokenBuffer tokenBuffer) throws IOException {
        JsonDeserializer<Object> jsonDeserializer;
        synchronized (this) {
            jsonDeserializer = this._subDeserializers == null ? null : this._subDeserializers.get(new ClassKey(obj.getClass()));
        }
        if (jsonDeserializer == null && (jsonDeserializer = deserializationContext.findRootValueDeserializer(deserializationContext.constructType(obj.getClass()))) != null) {
            synchronized (this) {
                if (this._subDeserializers == null) {
                    this._subDeserializers = new HashMap<>();
                }
                this._subDeserializers.put(new ClassKey(obj.getClass()), jsonDeserializer);
            }
        }
        return jsonDeserializer;
    }

    public void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(th, deserializationContext), obj, str);
    }

    @Deprecated
    public void wrapAndThrow(Throwable th, Object obj, int i, DeserializationContext deserializationContext) throws IOException {
        throw JsonMappingException.wrapWithPath(throwOrReturnThrowable(th, deserializationContext), obj, i);
    }

    private Throwable throwOrReturnThrowable(Throwable th, DeserializationContext deserializationContext) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        boolean z = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th2 instanceof IOException) {
            if (!z || !(th2 instanceof JsonProcessingException)) {
                throw ((IOException) th2);
            }
        } else if (!z && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        return th2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object wrapInstantiationProblem(Throwable th, DeserializationContext deserializationContext) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        boolean z = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th2 instanceof IOException) {
            throw ((IOException) th2);
        }
        if (!z && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        return deserializationContext.handleInstantiationProblem(this._beanType.getRawClass(), null, th2);
    }
}
