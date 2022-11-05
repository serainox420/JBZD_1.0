package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.deser.impl.CreatorCollector;
import com.fasterxml.jackson.databind.deser.std.ArrayBlockingQueueDeserializer;
import com.fasterxml.jackson.databind.deser.std.AtomicReferenceDeserializer;
import com.fasterxml.jackson.databind.deser.std.CollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.DateDeserializers;
import com.fasterxml.jackson.databind.deser.std.EnumDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumMapDeserializer;
import com.fasterxml.jackson.databind.deser.std.EnumSetDeserializer;
import com.fasterxml.jackson.databind.deser.std.JdkDeserializers;
import com.fasterxml.jackson.databind.deser.std.JsonLocationInstantiator;
import com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapDeserializer;
import com.fasterxml.jackson.databind.deser.std.MapEntryDeserializer;
import com.fasterxml.jackson.databind.deser.std.NumberDeserializers;
import com.fasterxml.jackson.databind.deser.std.ObjectArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.PrimitiveArrayDeserializers;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer;
import com.fasterxml.jackson.databind.deser.std.StringDeserializer;
import com.fasterxml.jackson.databind.deser.std.TokenBufferDeserializer;
import com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer;
import com.fasterxml.jackson.databind.ext.OptionalHandlerFactory;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedConstructor;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;
import com.fasterxml.jackson.databind.introspect.BasicBeanDescription;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.type.ReferenceType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.EnumResolver;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class BasicDeserializerFactory extends DeserializerFactory implements Serializable {
    static final HashMap<String, Class<? extends Collection>> _collectionFallbacks;
    protected final DeserializerFactoryConfig _factoryConfig;
    private static final Class<?> CLASS_OBJECT = Object.class;
    private static final Class<?> CLASS_STRING = String.class;
    private static final Class<?> CLASS_CHAR_BUFFER = CharSequence.class;
    private static final Class<?> CLASS_ITERABLE = Iterable.class;
    private static final Class<?> CLASS_MAP_ENTRY = Map.Entry.class;
    protected static final PropertyName UNWRAPPED_CREATOR_PARAM_NAME = new PropertyName("@JsonUnwrapped");
    static final HashMap<String, Class<? extends Map>> _mapFallbacks = new HashMap<>();

    protected abstract DeserializerFactory withConfig(DeserializerFactoryConfig deserializerFactoryConfig);

    static {
        _mapFallbacks.put(Map.class.getName(), LinkedHashMap.class);
        _mapFallbacks.put(ConcurrentMap.class.getName(), ConcurrentHashMap.class);
        _mapFallbacks.put(SortedMap.class.getName(), TreeMap.class);
        _mapFallbacks.put(NavigableMap.class.getName(), TreeMap.class);
        _mapFallbacks.put(ConcurrentNavigableMap.class.getName(), ConcurrentSkipListMap.class);
        _collectionFallbacks = new HashMap<>();
        _collectionFallbacks.put(Collection.class.getName(), ArrayList.class);
        _collectionFallbacks.put(List.class.getName(), ArrayList.class);
        _collectionFallbacks.put(Set.class.getName(), HashSet.class);
        _collectionFallbacks.put(SortedSet.class.getName(), TreeSet.class);
        _collectionFallbacks.put(Queue.class.getName(), LinkedList.class);
        _collectionFallbacks.put("java.util.Deque", LinkedList.class);
        _collectionFallbacks.put("java.util.NavigableSet", TreeSet.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasicDeserializerFactory(DeserializerFactoryConfig deserializerFactoryConfig) {
        this._factoryConfig = deserializerFactoryConfig;
    }

    public DeserializerFactoryConfig getFactoryConfig() {
        return this._factoryConfig;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAdditionalDeserializers(Deserializers deserializers) {
        return withConfig(this._factoryConfig.withAdditionalDeserializers(deserializers));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAdditionalKeyDeserializers(KeyDeserializers keyDeserializers) {
        return withConfig(this._factoryConfig.withAdditionalKeyDeserializers(keyDeserializers));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withDeserializerModifier(BeanDeserializerModifier beanDeserializerModifier) {
        return withConfig(this._factoryConfig.withDeserializerModifier(beanDeserializerModifier));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withAbstractTypeResolver(AbstractTypeResolver abstractTypeResolver) {
        return withConfig(this._factoryConfig.withAbstractTypeResolver(abstractTypeResolver));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public final DeserializerFactory withValueInstantiators(ValueInstantiators valueInstantiators) {
        return withConfig(this._factoryConfig.withValueInstantiators(valueInstantiators));
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JavaType mapAbstractType(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        JavaType _mapAbstractType2;
        while (true) {
            _mapAbstractType2 = _mapAbstractType2(deserializationConfig, javaType);
            if (_mapAbstractType2 == null) {
                return javaType;
            }
            Class<?> rawClass = javaType.getRawClass();
            Class<?> rawClass2 = _mapAbstractType2.getRawClass();
            if (rawClass == rawClass2 || !rawClass.isAssignableFrom(rawClass2)) {
                break;
            }
            javaType = _mapAbstractType2;
        }
        throw new IllegalArgumentException("Invalid abstract type resolution from " + javaType + " to " + _mapAbstractType2 + ": latter is not a subtype of former");
    }

    private JavaType _mapAbstractType2(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        if (this._factoryConfig.hasAbstractTypeResolvers()) {
            for (AbstractTypeResolver abstractTypeResolver : this._factoryConfig.abstractTypeResolvers()) {
                JavaType findTypeMapping = abstractTypeResolver.findTypeMapping(deserializationConfig, javaType);
                if (findTypeMapping != null && findTypeMapping.getRawClass() != rawClass) {
                    return findTypeMapping;
                }
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public ValueInstantiator findValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        ValueInstantiator valueInstantiator;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        ValueInstantiator valueInstantiator2 = null;
        AnnotatedClass classInfo = beanDescription.getClassInfo();
        Object findValueInstantiator = deserializationContext.getAnnotationIntrospector().findValueInstantiator(classInfo);
        if (findValueInstantiator != null) {
            valueInstantiator2 = _valueInstantiatorInstance(mo255getConfig, classInfo, findValueInstantiator);
        }
        if (valueInstantiator2 == null && (valueInstantiator2 = _findStdValueInstantiator(mo255getConfig, beanDescription)) == null) {
            valueInstantiator2 = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
        }
        if (this._factoryConfig.hasValueInstantiators()) {
            valueInstantiator = valueInstantiator2;
            for (ValueInstantiators valueInstantiators : this._factoryConfig.valueInstantiators()) {
                valueInstantiator = valueInstantiators.findValueInstantiator(mo255getConfig, beanDescription, valueInstantiator);
                if (valueInstantiator == null) {
                    deserializationContext.reportMappingException("Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator", valueInstantiators.getClass().getName());
                }
            }
        } else {
            valueInstantiator = valueInstantiator2;
        }
        if (valueInstantiator.getIncompleteParameter() != null) {
            AnnotatedParameter incompleteParameter = valueInstantiator.getIncompleteParameter();
            throw new IllegalArgumentException("Argument #" + incompleteParameter.getIndex() + " of constructor " + incompleteParameter.getOwner() + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
        }
        return valueInstantiator;
    }

    private ValueInstantiator _findStdValueInstantiator(DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        if (beanDescription.getBeanClass() == JsonLocation.class) {
            return new JsonLocationInstantiator();
        }
        return null;
    }

    protected ValueInstantiator _constructDefaultValueInstantiator(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        CreatorCollector creatorCollector = new CreatorCollector(beanDescription, deserializationContext.mo255getConfig());
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        VisibilityChecker<?> findAutoDetectVisibility = annotationIntrospector.findAutoDetectVisibility(beanDescription.getClassInfo(), mo255getConfig.getDefaultVisibilityChecker());
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> _findCreatorsFromProperties = _findCreatorsFromProperties(deserializationContext, beanDescription);
        _addDeserializerFactoryMethods(deserializationContext, beanDescription, findAutoDetectVisibility, annotationIntrospector, creatorCollector, _findCreatorsFromProperties);
        if (beanDescription.getType().isConcrete()) {
            _addDeserializerConstructors(deserializationContext, beanDescription, findAutoDetectVisibility, annotationIntrospector, creatorCollector, _findCreatorsFromProperties);
        }
        return creatorCollector.constructValueInstantiator(mo255getConfig);
    }

    protected Map<AnnotatedWithParams, BeanPropertyDefinition[]> _findCreatorsFromProperties(DeserializationContext deserializationContext, BeanDescription beanDescription) throws JsonMappingException {
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> map;
        Map<AnnotatedWithParams, BeanPropertyDefinition[]> emptyMap = Collections.emptyMap();
        for (BeanPropertyDefinition beanPropertyDefinition : beanDescription.findProperties()) {
            Iterator<AnnotatedParameter> constructorParameters = beanPropertyDefinition.getConstructorParameters();
            while (constructorParameters.hasNext()) {
                AnnotatedParameter next = constructorParameters.next();
                AnnotatedWithParams owner = next.getOwner();
                BeanPropertyDefinition[] beanPropertyDefinitionArr = emptyMap.get(owner);
                int index = next.getIndex();
                if (beanPropertyDefinitionArr == null) {
                    map = emptyMap.isEmpty() ? new LinkedHashMap<>() : emptyMap;
                    beanPropertyDefinitionArr = new BeanPropertyDefinition[owner.getParameterCount()];
                    map.put(owner, beanPropertyDefinitionArr);
                } else if (beanPropertyDefinitionArr[index] != null) {
                    throw new IllegalStateException("Conflict: parameter #" + index + " of " + owner + " bound to more than one property; " + beanPropertyDefinitionArr[index] + " vs " + beanPropertyDefinition);
                } else {
                    map = emptyMap;
                }
                beanPropertyDefinitionArr[index] = beanPropertyDefinition;
                emptyMap = map;
            }
        }
        return emptyMap;
    }

    public ValueInstantiator _valueInstantiatorInstance(DeserializationConfig deserializationConfig, Annotated annotated, Object obj) throws JsonMappingException {
        ValueInstantiator valueInstantiatorInstance;
        if (obj == null) {
            return null;
        }
        if (obj instanceof ValueInstantiator) {
            return (ValueInstantiator) obj;
        }
        if (!(obj instanceof Class)) {
            throw new IllegalStateException("AnnotationIntrospector returned key deserializer definition of type " + obj.getClass().getName() + "; expected type KeyDeserializer or Class<KeyDeserializer> instead");
        }
        Class<?> cls = (Class) obj;
        if (ClassUtil.isBogusClass(cls)) {
            return null;
        }
        if (!ValueInstantiator.class.isAssignableFrom(cls)) {
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<ValueInstantiator>");
        }
        HandlerInstantiator handlerInstantiator = deserializationConfig.getHandlerInstantiator();
        return (handlerInstantiator == null || (valueInstantiatorInstance = handlerInstantiator.valueInstantiatorInstance(deserializationConfig, annotated, cls)) == null) ? (ValueInstantiator) ClassUtil.createInstance(cls, deserializationConfig.canOverrideAccessModifiers()) : valueInstantiatorInstance;
    }

    protected void _addDeserializerConstructors(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) throws JsonMappingException {
        List<AnnotatedConstructor> list;
        int i;
        int i2;
        int i3;
        AnnotatedWithParams findDefaultConstructor = beanDescription.findDefaultConstructor();
        if (findDefaultConstructor != null && (!creatorCollector.hasDefaultCreator() || annotationIntrospector.hasCreatorAnnotation(findDefaultConstructor))) {
            creatorCollector.setDefaultCreator(findDefaultConstructor);
        }
        if (!beanDescription.isNonStaticInnerClass()) {
            List<AnnotatedConstructor> list2 = null;
            for (AnnotatedConstructor annotatedConstructor : beanDescription.getConstructors()) {
                boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(annotatedConstructor);
                BeanPropertyDefinition[] beanPropertyDefinitionArr = map.get(annotatedConstructor);
                int parameterCount = annotatedConstructor.getParameterCount();
                if (parameterCount == 1) {
                    BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[0];
                    if (_checkIfCreatorPropertyBased(annotationIntrospector, annotatedConstructor, beanPropertyDefinition)) {
                        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[1];
                        PropertyName fullName = beanPropertyDefinition == null ? null : beanPropertyDefinition.getFullName();
                        AnnotatedParameter parameter = annotatedConstructor.getParameter(0);
                        settableBeanPropertyArr[0] = constructCreatorProperty(deserializationContext, beanDescription, fullName, 0, parameter, annotationIntrospector.findInjectableValueId(parameter));
                        creatorCollector.addPropertyCreator(annotatedConstructor, hasCreatorAnnotation, settableBeanPropertyArr);
                    } else {
                        _handleSingleArgumentConstructor(deserializationContext, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, annotatedConstructor, hasCreatorAnnotation, visibilityChecker.isCreatorVisible(annotatedConstructor));
                        if (beanPropertyDefinition != null) {
                            ((POJOPropertyBuilder) beanPropertyDefinition).removeConstructors();
                        }
                    }
                } else {
                    AnnotatedParameter annotatedParameter = null;
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    int i7 = 0;
                    while (i7 < parameterCount) {
                        AnnotatedParameter parameter2 = annotatedConstructor.getParameter(i7);
                        BeanPropertyDefinition beanPropertyDefinition2 = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i7];
                        Object findInjectableValueId = annotationIntrospector.findInjectableValueId(parameter2);
                        PropertyName fullName2 = beanPropertyDefinition2 == null ? null : beanPropertyDefinition2.getFullName();
                        if (beanPropertyDefinition2 != null && beanPropertyDefinition2.isExplicitlyNamed()) {
                            settableBeanPropertyArr2[i7] = constructCreatorProperty(deserializationContext, beanDescription, fullName2, i7, parameter2, findInjectableValueId);
                            i = i6;
                            i2 = i5;
                            i3 = i4 + 1;
                            parameter2 = annotatedParameter;
                        } else if (findInjectableValueId != null) {
                            settableBeanPropertyArr2[i7] = constructCreatorProperty(deserializationContext, beanDescription, fullName2, i7, parameter2, findInjectableValueId);
                            i = i6 + 1;
                            i2 = i5;
                            i3 = i4;
                            parameter2 = annotatedParameter;
                        } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter2) != null) {
                            settableBeanPropertyArr2[i7] = constructCreatorProperty(deserializationContext, beanDescription, UNWRAPPED_CREATOR_PARAM_NAME, i7, parameter2, null);
                            i2 = i5;
                            i3 = i4 + 1;
                            parameter2 = annotatedParameter;
                            i = i6;
                        } else if (hasCreatorAnnotation && fullName2 != null && !fullName2.isEmpty()) {
                            settableBeanPropertyArr2[i7] = constructCreatorProperty(deserializationContext, beanDescription, fullName2, i7, parameter2, findInjectableValueId);
                            i = i6;
                            i2 = i5 + 1;
                            i3 = i4;
                            parameter2 = annotatedParameter;
                        } else if (annotatedParameter == null) {
                            i = i6;
                            i2 = i5;
                            i3 = i4;
                        } else {
                            i = i6;
                            i2 = i5;
                            i3 = i4;
                            parameter2 = annotatedParameter;
                        }
                        i7++;
                        i6 = i;
                        i5 = i2;
                        i4 = i3;
                        annotatedParameter = parameter2;
                    }
                    int i8 = i4 + i5;
                    if (hasCreatorAnnotation || i4 > 0 || i6 > 0) {
                        if (i8 + i6 == parameterCount) {
                            creatorCollector.addPropertyCreator(annotatedConstructor, hasCreatorAnnotation, settableBeanPropertyArr2);
                        } else if (i4 == 0 && i6 + 1 == parameterCount) {
                            creatorCollector.addDelegatingCreator(annotatedConstructor, hasCreatorAnnotation, settableBeanPropertyArr2);
                        } else {
                            PropertyName _findImplicitParamName = _findImplicitParamName(annotatedParameter, annotationIntrospector);
                            if (_findImplicitParamName == null || _findImplicitParamName.isEmpty()) {
                                throw new IllegalArgumentException("Argument #" + annotatedParameter.getIndex() + " of constructor " + annotatedConstructor + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                            }
                        }
                    }
                    if (!creatorCollector.hasDefaultCreator()) {
                        list = list2 == null ? new LinkedList<>() : list2;
                        list.add(annotatedConstructor);
                    } else {
                        list = list2;
                    }
                    list2 = list;
                }
            }
            if (list2 != null && !creatorCollector.hasDelegatingCreator() && !creatorCollector.hasPropertyBasedCreator()) {
                _checkImplicitlyNamedConstructors(deserializationContext, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, list2);
            }
        }
    }

    protected void _checkImplicitlyNamedConstructors(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, List<AnnotatedConstructor> list) throws JsonMappingException {
        Iterator<AnnotatedConstructor> it = list.iterator();
        SettableBeanProperty[] settableBeanPropertyArr = null;
        AnnotatedConstructor annotatedConstructor = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AnnotatedConstructor next = it.next();
            if (visibilityChecker.isCreatorVisible(next)) {
                int parameterCount = next.getParameterCount();
                SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                int i = 0;
                while (true) {
                    if (i < parameterCount) {
                        AnnotatedParameter parameter = next.getParameter(i);
                        PropertyName _findParamName = _findParamName(parameter, annotationIntrospector);
                        if (_findParamName != null && !_findParamName.isEmpty()) {
                            settableBeanPropertyArr2[i] = constructCreatorProperty(deserializationContext, beanDescription, _findParamName, parameter.getIndex(), parameter, null);
                            i++;
                        }
                    } else if (annotatedConstructor != null) {
                        annotatedConstructor = null;
                        break;
                    } else {
                        settableBeanPropertyArr = settableBeanPropertyArr2;
                        annotatedConstructor = next;
                    }
                }
            }
        }
        if (annotatedConstructor != null) {
            creatorCollector.addPropertyCreator(annotatedConstructor, false, settableBeanPropertyArr);
            BasicBeanDescription basicBeanDescription = (BasicBeanDescription) beanDescription;
            for (SettableBeanProperty settableBeanProperty : settableBeanPropertyArr) {
                PropertyName fullName = settableBeanProperty.getFullName();
                if (!basicBeanDescription.hasProperty(fullName)) {
                    basicBeanDescription.addProperty(SimpleBeanPropertyDefinition.construct(deserializationContext.mo255getConfig(), settableBeanProperty.getMember(), fullName));
                }
            }
        }
    }

    protected boolean _checkIfCreatorPropertyBased(AnnotationIntrospector annotationIntrospector, AnnotatedWithParams annotatedWithParams, BeanPropertyDefinition beanPropertyDefinition) {
        String name;
        JsonCreator.Mode findCreatorBinding = annotationIntrospector.findCreatorBinding(annotatedWithParams);
        if (findCreatorBinding == JsonCreator.Mode.PROPERTIES) {
            return true;
        }
        if (findCreatorBinding == JsonCreator.Mode.DELEGATING) {
            return false;
        }
        if ((beanPropertyDefinition != null && beanPropertyDefinition.isExplicitlyNamed()) || annotationIntrospector.findInjectableValueId(annotatedWithParams.getParameter(0)) != null) {
            return true;
        }
        return beanPropertyDefinition != null && (name = beanPropertyDefinition.getName()) != null && !name.isEmpty() && beanPropertyDefinition.couldSerialize();
    }

    protected boolean _handleSingleArgumentConstructor(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, AnnotatedConstructor annotatedConstructor, boolean z, boolean z2) throws JsonMappingException {
        Class<?> rawParameterType = annotatedConstructor.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CharSequence.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addStringCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addIntCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addLongCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addDoubleCreator(annotatedConstructor, z);
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (!z && !z2) {
                return true;
            }
            creatorCollector.addBooleanCreator(annotatedConstructor, z);
            return true;
        } else if (!z) {
            return false;
        } else {
            creatorCollector.addDelegatingCreator(annotatedConstructor, z, null);
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0106 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00fd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void _addDeserializerFactoryMethods(DeserializationContext deserializationContext, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, Map<AnnotatedWithParams, BeanPropertyDefinition[]> map) throws JsonMappingException {
        int i;
        int i2;
        int i3;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        for (AnnotatedMethod annotatedMethod : beanDescription.getFactoryMethods()) {
            boolean hasCreatorAnnotation = annotationIntrospector.hasCreatorAnnotation(annotatedMethod);
            int parameterCount = annotatedMethod.getParameterCount();
            if (parameterCount == 0) {
                if (hasCreatorAnnotation) {
                    creatorCollector.setDefaultCreator(annotatedMethod);
                }
            } else {
                BeanPropertyDefinition[] beanPropertyDefinitionArr = map.get(annotatedMethod);
                if (parameterCount == 1) {
                    BeanPropertyDefinition beanPropertyDefinition = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[0];
                    if (!_checkIfCreatorPropertyBased(annotationIntrospector, annotatedMethod, beanPropertyDefinition)) {
                        _handleSingleArgumentFactory(mo255getConfig, beanDescription, visibilityChecker, annotationIntrospector, creatorCollector, annotatedMethod, hasCreatorAnnotation);
                        if (beanPropertyDefinition != null) {
                            ((POJOPropertyBuilder) beanPropertyDefinition).removeConstructors();
                        }
                    } else {
                        AnnotatedParameter annotatedParameter = null;
                        SettableBeanProperty[] settableBeanPropertyArr = new SettableBeanProperty[parameterCount];
                        int i4 = 0;
                        int i5 = 0;
                        i = 0;
                        i2 = 0;
                        while (i2 < parameterCount) {
                            AnnotatedParameter parameter = annotatedMethod.getParameter(i2);
                            BeanPropertyDefinition beanPropertyDefinition2 = beanPropertyDefinitionArr == null ? null : beanPropertyDefinitionArr[i2];
                            Object findInjectableValueId = annotationIntrospector.findInjectableValueId(parameter);
                            PropertyName fullName = beanPropertyDefinition2 == null ? null : beanPropertyDefinition2.getFullName();
                            if (beanPropertyDefinition2 != null && beanPropertyDefinition2.isExplicitlyNamed()) {
                                i5++;
                                settableBeanPropertyArr[i2] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i2, parameter, findInjectableValueId);
                                parameter = annotatedParameter;
                            } else if (findInjectableValueId != null) {
                                i++;
                                settableBeanPropertyArr[i2] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i2, parameter, findInjectableValueId);
                                parameter = annotatedParameter;
                            } else if (annotationIntrospector.findUnwrappingNameTransformer(parameter) != null) {
                                settableBeanPropertyArr[i2] = constructCreatorProperty(deserializationContext, beanDescription, UNWRAPPED_CREATOR_PARAM_NAME, i2, parameter, null);
                                i4++;
                                parameter = annotatedParameter;
                            } else if (hasCreatorAnnotation && fullName != null && !fullName.isEmpty()) {
                                i4++;
                                settableBeanPropertyArr[i2] = constructCreatorProperty(deserializationContext, beanDescription, fullName, i2, parameter, findInjectableValueId);
                                parameter = annotatedParameter;
                            } else if (annotatedParameter != null) {
                                parameter = annotatedParameter;
                            }
                            i2++;
                            annotatedParameter = parameter;
                        }
                        i3 = i5 + i4;
                        if (!hasCreatorAnnotation || i5 > 0 || i > 0) {
                            if (i3 + i != parameterCount) {
                                creatorCollector.addPropertyCreator(annotatedMethod, hasCreatorAnnotation, settableBeanPropertyArr);
                            } else if (i5 == 0 && i + 1 == parameterCount) {
                                creatorCollector.addDelegatingCreator(annotatedMethod, hasCreatorAnnotation, settableBeanPropertyArr);
                            } else {
                                throw new IllegalArgumentException("Argument #" + annotatedParameter.getIndex() + " of factory method " + annotatedMethod + " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator");
                            }
                        }
                    }
                } else if (hasCreatorAnnotation) {
                    AnnotatedParameter annotatedParameter2 = null;
                    SettableBeanProperty[] settableBeanPropertyArr2 = new SettableBeanProperty[parameterCount];
                    int i42 = 0;
                    int i52 = 0;
                    i = 0;
                    i2 = 0;
                    while (i2 < parameterCount) {
                    }
                    i3 = i52 + i42;
                    if (!hasCreatorAnnotation) {
                    }
                    if (i3 + i != parameterCount) {
                    }
                } else {
                    continue;
                }
            }
        }
    }

    protected boolean _handleSingleArgumentFactory(DeserializationConfig deserializationConfig, BeanDescription beanDescription, VisibilityChecker<?> visibilityChecker, AnnotationIntrospector annotationIntrospector, CreatorCollector creatorCollector, AnnotatedMethod annotatedMethod, boolean z) throws JsonMappingException {
        Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
        if (rawParameterType == String.class || rawParameterType == CharSequence.class) {
            if (!z && !visibilityChecker.isCreatorVisible(annotatedMethod)) {
                return true;
            }
            creatorCollector.addStringCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Integer.TYPE || rawParameterType == Integer.class) {
            if (!z && !visibilityChecker.isCreatorVisible(annotatedMethod)) {
                return true;
            }
            creatorCollector.addIntCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Long.TYPE || rawParameterType == Long.class) {
            if (!z && !visibilityChecker.isCreatorVisible(annotatedMethod)) {
                return true;
            }
            creatorCollector.addLongCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Double.TYPE || rawParameterType == Double.class) {
            if (!z && !visibilityChecker.isCreatorVisible(annotatedMethod)) {
                return true;
            }
            creatorCollector.addDoubleCreator(annotatedMethod, z);
            return true;
        } else if (rawParameterType == Boolean.TYPE || rawParameterType == Boolean.class) {
            if (!z && !visibilityChecker.isCreatorVisible(annotatedMethod)) {
                return true;
            }
            creatorCollector.addBooleanCreator(annotatedMethod, z);
            return true;
        } else if (!z) {
            return false;
        } else {
            creatorCollector.addDelegatingCreator(annotatedMethod, z, null);
            return true;
        }
    }

    protected SettableBeanProperty constructCreatorProperty(DeserializationContext deserializationContext, BeanDescription beanDescription, PropertyName propertyName, int i, AnnotatedParameter annotatedParameter, Object obj) throws JsonMappingException {
        PropertyMetadata construct;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null) {
            construct = PropertyMetadata.STD_REQUIRED_OR_OPTIONAL;
        } else {
            Boolean hasRequiredMarker = annotationIntrospector.hasRequiredMarker(annotatedParameter);
            construct = PropertyMetadata.construct(hasRequiredMarker != null && hasRequiredMarker.booleanValue(), annotationIntrospector.findPropertyDescription(annotatedParameter), annotationIntrospector.findPropertyIndex(annotatedParameter), annotationIntrospector.findPropertyDefaultValue(annotatedParameter));
        }
        JavaType resolveMemberAndTypeAnnotations = resolveMemberAndTypeAnnotations(deserializationContext, annotatedParameter, annotatedParameter.getType());
        BeanProperty.Std std = new BeanProperty.Std(propertyName, resolveMemberAndTypeAnnotations, annotationIntrospector.findWrapperName(annotatedParameter), beanDescription.getClassAnnotations(), annotatedParameter, construct);
        TypeDeserializer typeDeserializer = (TypeDeserializer) resolveMemberAndTypeAnnotations.getTypeHandler();
        CreatorProperty creatorProperty = new CreatorProperty(propertyName, resolveMemberAndTypeAnnotations, std.getWrapperName(), typeDeserializer == null ? findTypeDeserializer(mo255getConfig, resolveMemberAndTypeAnnotations) : typeDeserializer, beanDescription.getClassAnnotations(), annotatedParameter, i, obj, construct);
        JsonDeserializer<?> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, annotatedParameter);
        if (findDeserializerFromAnnotation == null) {
            findDeserializerFromAnnotation = (JsonDeserializer) resolveMemberAndTypeAnnotations.getValueHandler();
        }
        if (findDeserializerFromAnnotation != null) {
            return creatorProperty.mo273withValueDeserializer(deserializationContext.handlePrimaryContextualization(findDeserializerFromAnnotation, creatorProperty, resolveMemberAndTypeAnnotations));
        }
        return creatorProperty;
    }

    protected PropertyName _findParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotatedParameter != null && annotationIntrospector != null) {
            PropertyName findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter);
            if (findNameForDeserialization == null) {
                String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
                if (findImplicitPropertyName != null && !findImplicitPropertyName.isEmpty()) {
                    return PropertyName.construct(findImplicitPropertyName);
                }
            } else {
                return findNameForDeserialization;
            }
        }
        return null;
    }

    protected PropertyName _findImplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        String findImplicitPropertyName = annotationIntrospector.findImplicitPropertyName(annotatedParameter);
        if (findImplicitPropertyName == null || findImplicitPropertyName.isEmpty()) {
            return null;
        }
        return PropertyName.construct(findImplicitPropertyName);
    }

    @Deprecated
    protected PropertyName _findExplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        if (annotatedParameter == null || annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findNameForDeserialization(annotatedParameter);
    }

    @Deprecated
    protected boolean _hasExplicitParamName(AnnotatedParameter annotatedParameter, AnnotationIntrospector annotationIntrospector) {
        PropertyName findNameForDeserialization;
        return (annotatedParameter == null || annotationIntrospector == null || (findNameForDeserialization = annotationIntrospector.findNameForDeserialization(annotatedParameter)) == null || !findNameForDeserialization.hasSimpleName()) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createArrayDeserializer(DeserializationContext deserializationContext, ArrayType arrayType, BeanDescription beanDescription) throws JsonMappingException {
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        JavaType mo463getContentType = arrayType.mo463getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) mo463getContentType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) mo463getContentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(mo255getConfig, mo463getContentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomArrayDeserializer = _findCustomArrayDeserializer(arrayType, mo255getConfig, beanDescription, findTypeDeserializer, jsonDeserializer);
        if (_findCustomArrayDeserializer == null) {
            if (jsonDeserializer == null) {
                Class<?> rawClass = mo463getContentType.getRawClass();
                if (mo463getContentType.isPrimitive()) {
                    return PrimitiveArrayDeserializers.forType(rawClass);
                }
                if (rawClass == String.class) {
                    return StringArrayDeserializer.instance;
                }
            }
            _findCustomArrayDeserializer = new ObjectArrayDeserializer(arrayType, jsonDeserializer, findTypeDeserializer);
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = _findCustomArrayDeserializer;
                if (it.hasNext()) {
                    _findCustomArrayDeserializer = it.next().modifyArrayDeserializer(mo255getConfig, arrayType, beanDescription, jsonDeserializer2);
                } else {
                    return jsonDeserializer2;
                }
            }
        } else {
            return _findCustomArrayDeserializer;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createCollectionDeserializer(DeserializationContext deserializationContext, CollectionType collectionType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType contentType = collectionType.mo463getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(mo255getConfig, contentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomCollectionDeserializer = _findCustomCollectionDeserializer(collectionType, mo255getConfig, beanDescription, findTypeDeserializer, jsonDeserializer);
        if (_findCustomCollectionDeserializer == null) {
            Class<?> rawClass = collectionType.getRawClass();
            if (jsonDeserializer == null && EnumSet.class.isAssignableFrom(rawClass)) {
                _findCustomCollectionDeserializer = new EnumSetDeserializer(contentType, null);
            }
        }
        if (_findCustomCollectionDeserializer == null) {
            if (collectionType.isInterface() || collectionType.isAbstract()) {
                CollectionType _mapAbstractCollectionType = _mapAbstractCollectionType(collectionType, mo255getConfig);
                if (_mapAbstractCollectionType == null) {
                    if (collectionType.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Can not find a deserializer for non-concrete Collection type " + collectionType);
                    }
                    _findCustomCollectionDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                } else {
                    beanDescription = mo255getConfig.introspectForCreation(_mapAbstractCollectionType);
                    collectionType = _mapAbstractCollectionType;
                }
            }
            if (_findCustomCollectionDeserializer == null) {
                ValueInstantiator findValueInstantiator = findValueInstantiator(deserializationContext, beanDescription);
                if (!findValueInstantiator.canCreateUsingDefault() && collectionType.getRawClass() == ArrayBlockingQueue.class) {
                    return new ArrayBlockingQueueDeserializer(collectionType, jsonDeserializer, findTypeDeserializer, findValueInstantiator);
                }
                if (contentType.getRawClass() == String.class) {
                    _findCustomCollectionDeserializer = new StringCollectionDeserializer(collectionType, jsonDeserializer, findValueInstantiator);
                } else {
                    _findCustomCollectionDeserializer = new CollectionDeserializer(collectionType, jsonDeserializer, findTypeDeserializer, findValueInstantiator);
                }
            }
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = _findCustomCollectionDeserializer;
                if (it.hasNext()) {
                    _findCustomCollectionDeserializer = it.next().modifyCollectionDeserializer(mo255getConfig, collectionType, beanDescription, jsonDeserializer2);
                } else {
                    return jsonDeserializer2;
                }
            }
        } else {
            return _findCustomCollectionDeserializer;
        }
    }

    protected CollectionType _mapAbstractCollectionType(JavaType javaType, DeserializationConfig deserializationConfig) {
        Class<? extends Collection> cls = _collectionFallbacks.get(javaType.getRawClass().getName());
        if (cls == null) {
            return null;
        }
        return (CollectionType) deserializationConfig.constructSpecializedType(javaType, cls);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createCollectionLikeDeserializer(DeserializationContext deserializationContext, CollectionLikeType collectionLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType mo463getContentType = collectionLikeType.mo463getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) mo463getContentType.getValueHandler();
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) mo463getContentType.getTypeHandler();
        JsonDeserializer<?> _findCustomCollectionLikeDeserializer = _findCustomCollectionLikeDeserializer(collectionLikeType, mo255getConfig, beanDescription, typeDeserializer == null ? findTypeDeserializer(mo255getConfig, mo463getContentType) : typeDeserializer, jsonDeserializer);
        if (_findCustomCollectionLikeDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = _findCustomCollectionLikeDeserializer;
                if (!it.hasNext()) {
                    return jsonDeserializer2;
                }
                _findCustomCollectionLikeDeserializer = it.next().modifyCollectionLikeDeserializer(mo255getConfig, collectionLikeType, beanDescription, jsonDeserializer2);
            }
        } else {
            return _findCustomCollectionLikeDeserializer;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.fasterxml.jackson.databind.deser.BeanDeserializerModifier] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [com.fasterxml.jackson.databind.JsonDeserializer<?>] */
    /* JADX WARN: Type inference failed for: r8v4, types: [com.fasterxml.jackson.databind.JsonDeserializer] */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9, types: [com.fasterxml.jackson.databind.deser.std.MapDeserializer] */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JsonDeserializer<?> createMapDeserializer(DeserializationContext deserializationContext, MapType mapType, BeanDescription beanDescription) throws JsonMappingException {
        MapType mapType2;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        JavaType keyType = mapType.mo449getKeyType();
        JavaType contentType = mapType.mo463getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) contentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) keyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) contentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(mo255getConfig, contentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomMapDeserializer = _findCustomMapDeserializer(mapType, mo255getConfig, beanDescription, keyDeserializer, findTypeDeserializer, jsonDeserializer);
        if (_findCustomMapDeserializer == null) {
            Class<?> rawClass = mapType.getRawClass();
            _findCustomMapDeserializer = _findCustomMapDeserializer;
            if (EnumMap.class.isAssignableFrom(rawClass)) {
                Class<?> rawClass2 = keyType.getRawClass();
                if (rawClass2 == null || !rawClass2.isEnum()) {
                    throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
                }
                _findCustomMapDeserializer = new EnumMapDeserializer(mapType, null, jsonDeserializer, findTypeDeserializer);
            }
            if (_findCustomMapDeserializer == 0) {
                if (mapType.isInterface() || mapType.isAbstract()) {
                    Class<? extends Map> cls = _mapFallbacks.get(rawClass.getName());
                    if (cls != null) {
                        MapType mapType3 = (MapType) mo255getConfig.constructSpecializedType(mapType, cls);
                        beanDescription = mo255getConfig.introspectForCreation(mapType3);
                        mapType2 = mapType3;
                        _findCustomMapDeserializer = _findCustomMapDeserializer;
                    } else if (mapType.getTypeHandler() == null) {
                        throw new IllegalArgumentException("Can not find a deserializer for non-concrete Map type " + mapType);
                    } else {
                        mapType2 = mapType;
                        _findCustomMapDeserializer = AbstractDeserializer.constructForNonPOJO(beanDescription);
                    }
                } else {
                    mapType2 = mapType;
                    _findCustomMapDeserializer = _findCustomMapDeserializer;
                }
                if (_findCustomMapDeserializer == 0) {
                    _findCustomMapDeserializer = new MapDeserializer(mapType2, findValueInstantiator(deserializationContext, beanDescription), keyDeserializer, jsonDeserializer, findTypeDeserializer);
                    JsonIgnoreProperties.Value defaultPropertyIgnorals = mo255getConfig.getDefaultPropertyIgnorals(Map.class, beanDescription.getClassInfo());
                    _findCustomMapDeserializer.setIgnorableProperties(defaultPropertyIgnorals == null ? null : defaultPropertyIgnorals.findIgnoredForDeserialization());
                }
                if (this._factoryConfig.hasDeserializerModifiers()) {
                    _findCustomMapDeserializer = _findCustomMapDeserializer;
                    for (BeanDeserializerModifier beanDeserializerModifier : this._factoryConfig.deserializerModifiers()) {
                        _findCustomMapDeserializer = beanDeserializerModifier.modifyMapDeserializer(mo255getConfig, mapType2, beanDescription, _findCustomMapDeserializer);
                    }
                }
                return _findCustomMapDeserializer;
            }
        }
        mapType2 = mapType;
        if (this._factoryConfig.hasDeserializerModifiers()) {
        }
        return _findCustomMapDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createMapLikeDeserializer(DeserializationContext deserializationContext, MapLikeType mapLikeType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType mo449getKeyType = mapLikeType.mo449getKeyType();
        JavaType mo463getContentType = mapLikeType.mo463getContentType();
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) mo463getContentType.getValueHandler();
        KeyDeserializer keyDeserializer = (KeyDeserializer) mo449getKeyType.getValueHandler();
        TypeDeserializer typeDeserializer = (TypeDeserializer) mo463getContentType.getTypeHandler();
        JsonDeserializer<?> _findCustomMapLikeDeserializer = _findCustomMapLikeDeserializer(mapLikeType, mo255getConfig, beanDescription, keyDeserializer, typeDeserializer == null ? findTypeDeserializer(mo255getConfig, mo463getContentType) : typeDeserializer, jsonDeserializer);
        if (_findCustomMapLikeDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = _findCustomMapLikeDeserializer;
                if (!it.hasNext()) {
                    return jsonDeserializer2;
                }
                _findCustomMapLikeDeserializer = it.next().modifyMapLikeDeserializer(mo255getConfig, mapLikeType, beanDescription, jsonDeserializer2);
            }
        } else {
            return _findCustomMapLikeDeserializer;
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createEnumDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JsonDeserializer<?> jsonDeserializer;
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, mo255getConfig, beanDescription);
        if (_findCustomEnumDeserializer == null) {
            ValueInstantiator _constructDefaultValueInstantiator = _constructDefaultValueInstantiator(deserializationContext, beanDescription);
            SettableBeanProperty[] fromObjectArguments = _constructDefaultValueInstantiator == null ? null : _constructDefaultValueInstantiator.getFromObjectArguments(deserializationContext.mo255getConfig());
            Iterator<AnnotatedMethod> it = beanDescription.getFactoryMethods().iterator();
            while (true) {
                if (!it.hasNext()) {
                    jsonDeserializer = _findCustomEnumDeserializer;
                    break;
                }
                AnnotatedMethod next = it.next();
                if (deserializationContext.getAnnotationIntrospector().hasCreatorAnnotation(next)) {
                    if (next.getParameterCount() == 0) {
                        jsonDeserializer = EnumDeserializer.deserializerForNoArgsCreator(mo255getConfig, rawClass, next);
                        break;
                    } else if (next.getRawReturnType().isAssignableFrom(rawClass)) {
                        jsonDeserializer = EnumDeserializer.deserializerForCreator(mo255getConfig, rawClass, next, _constructDefaultValueInstantiator, fromObjectArguments);
                        break;
                    }
                }
            }
            if (jsonDeserializer == null) {
                jsonDeserializer = new EnumDeserializer(constructEnumResolver(rawClass, mo255getConfig, beanDescription.findJsonValueMethod()));
            }
        } else {
            jsonDeserializer = _findCustomEnumDeserializer;
        }
        if (this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = jsonDeserializer;
                if (it2.hasNext()) {
                    jsonDeserializer = it2.next().modifyEnumDeserializer(mo255getConfig, javaType, beanDescription, jsonDeserializer2);
                } else {
                    return jsonDeserializer2;
                }
            }
        } else {
            return jsonDeserializer;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createTreeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        Class<?> rawClass = javaType.getRawClass();
        JsonDeserializer<?> _findCustomTreeNodeDeserializer = _findCustomTreeNodeDeserializer(rawClass, deserializationConfig, beanDescription);
        return _findCustomTreeNodeDeserializer != null ? _findCustomTreeNodeDeserializer : JsonNodeDeserializer.getDeserializer(rawClass);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public JsonDeserializer<?> createReferenceDeserializer(DeserializationContext deserializationContext, ReferenceType referenceType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType mo463getContentType = referenceType.mo463getContentType();
        JsonDeserializer<?> jsonDeserializer = (JsonDeserializer) mo463getContentType.getValueHandler();
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        TypeDeserializer typeDeserializer = (TypeDeserializer) mo463getContentType.getTypeHandler();
        TypeDeserializer findTypeDeserializer = typeDeserializer == null ? findTypeDeserializer(mo255getConfig, mo463getContentType) : typeDeserializer;
        JsonDeserializer<?> _findCustomReferenceDeserializer = _findCustomReferenceDeserializer(referenceType, mo255getConfig, beanDescription, findTypeDeserializer, jsonDeserializer);
        if (_findCustomReferenceDeserializer == null && AtomicReference.class.isAssignableFrom(referenceType.getRawClass())) {
            return new AtomicReferenceDeserializer(referenceType, findTypeDeserializer, jsonDeserializer);
        }
        if (_findCustomReferenceDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                JsonDeserializer<?> jsonDeserializer2 = _findCustomReferenceDeserializer;
                if (!it.hasNext()) {
                    return jsonDeserializer2;
                }
                _findCustomReferenceDeserializer = it.next().modifyReferenceDeserializer(mo255getConfig, referenceType, beanDescription, jsonDeserializer2);
            }
        } else {
            return _findCustomReferenceDeserializer;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public TypeDeserializer findTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType) throws JsonMappingException {
        Collection<NamedType> collection = null;
        AnnotatedClass classInfo = deserializationConfig.introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> findTypeResolver = deserializationConfig.getAnnotationIntrospector().findTypeResolver(deserializationConfig, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = deserializationConfig.getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
        } else {
            collection = deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, classInfo);
        }
        Class<?> defaultImpl = findTypeResolver.getDefaultImpl();
        TypeResolverBuilder<?> typeResolverBuilder = findTypeResolver;
        if (defaultImpl == null) {
            typeResolverBuilder = findTypeResolver;
            if (javaType.isAbstract()) {
                JavaType mapAbstractType = mapAbstractType(deserializationConfig, javaType);
                typeResolverBuilder = findTypeResolver;
                if (mapAbstractType != null) {
                    typeResolverBuilder = findTypeResolver;
                    if (mapAbstractType.getRawClass() != javaType.getRawClass()) {
                        typeResolverBuilder = findTypeResolver.defaultImpl(mapAbstractType.getRawClass());
                    }
                }
            }
        }
        return typeResolverBuilder.buildTypeDeserializer(deserializationConfig, javaType, collection);
    }

    protected JsonDeserializer<?> findOptionalStdDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        return OptionalHandlerFactory.instance.findDeserializer(javaType, deserializationContext.mo255getConfig(), beanDescription);
    }

    @Override // com.fasterxml.jackson.databind.deser.DeserializerFactory
    public KeyDeserializer createKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        KeyDeserializer keyDeserializer = null;
        if (this._factoryConfig.hasKeyDeserializers()) {
            BeanDescription introspectClassAnnotations = mo255getConfig.introspectClassAnnotations(javaType.getRawClass());
            Iterator<KeyDeserializers> it = this._factoryConfig.keyDeserializers().iterator();
            while (it.hasNext() && (keyDeserializer = it.next().findKeyDeserializer(javaType, mo255getConfig, introspectClassAnnotations)) == null) {
            }
        }
        if (keyDeserializer == null) {
            if (javaType.isEnumType()) {
                keyDeserializer = _createEnumKeyDeserializer(deserializationContext, javaType);
            } else {
                keyDeserializer = StdKeyDeserializers.findStringBasedKeyDeserializer(mo255getConfig, javaType);
            }
        }
        if (keyDeserializer != null && this._factoryConfig.hasDeserializerModifiers()) {
            Iterator<BeanDeserializerModifier> it2 = this._factoryConfig.deserializerModifiers().iterator();
            while (true) {
                KeyDeserializer keyDeserializer2 = keyDeserializer;
                if (!it2.hasNext()) {
                    return keyDeserializer2;
                }
                keyDeserializer = it2.next().modifyKeyDeserializer(mo255getConfig, javaType, keyDeserializer2);
            }
        } else {
            return keyDeserializer;
        }
    }

    private KeyDeserializer _createEnumKeyDeserializer(DeserializationContext deserializationContext, JavaType javaType) throws JsonMappingException {
        DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
        Class<?> rawClass = javaType.getRawClass();
        BeanDescription introspect = mo255getConfig.introspect(javaType);
        KeyDeserializer findKeyDeserializerFromAnnotation = findKeyDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
        if (findKeyDeserializerFromAnnotation == null) {
            JsonDeserializer<?> _findCustomEnumDeserializer = _findCustomEnumDeserializer(rawClass, mo255getConfig, introspect);
            if (_findCustomEnumDeserializer != null) {
                return StdKeyDeserializers.constructDelegatingKeyDeserializer(mo255getConfig, javaType, _findCustomEnumDeserializer);
            }
            JsonDeserializer<Object> findDeserializerFromAnnotation = findDeserializerFromAnnotation(deserializationContext, introspect.getClassInfo());
            if (findDeserializerFromAnnotation != null) {
                return StdKeyDeserializers.constructDelegatingKeyDeserializer(mo255getConfig, javaType, findDeserializerFromAnnotation);
            }
            EnumResolver constructEnumResolver = constructEnumResolver(rawClass, mo255getConfig, introspect.findJsonValueMethod());
            AnnotationIntrospector annotationIntrospector = mo255getConfig.getAnnotationIntrospector();
            for (AnnotatedMethod annotatedMethod : introspect.getFactoryMethods()) {
                if (annotationIntrospector.hasCreatorAnnotation(annotatedMethod)) {
                    if (annotatedMethod.getParameterCount() == 1 && annotatedMethod.getRawReturnType().isAssignableFrom(rawClass)) {
                        if (annotatedMethod.getRawParameterType(0) != String.class) {
                            throw new IllegalArgumentException("Parameter #0 type for factory method (" + annotatedMethod + ") not suitable, must be java.lang.String");
                        }
                        if (mo255getConfig.canOverrideAccessModifiers()) {
                            ClassUtil.checkAndFixAccess(annotatedMethod.mo333getMember(), deserializationContext.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
                        }
                        return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver, annotatedMethod);
                    }
                    throw new IllegalArgumentException("Unsuitable method (" + annotatedMethod + ") decorated with @JsonCreator (for Enum type " + rawClass.getName() + ")");
                }
            }
            return StdKeyDeserializers.constructEnumKeyDeserializer(constructEnumResolver);
        }
        return findKeyDeserializerFromAnnotation;
    }

    public TypeDeserializer findPropertyTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> findPropertyTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyTypeResolver(deserializationConfig, annotatedMember, javaType);
        if (findPropertyTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, javaType);
        }
        return findPropertyTypeResolver.buildTypeDeserializer(deserializationConfig, javaType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, javaType));
    }

    public TypeDeserializer findPropertyContentTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        TypeResolverBuilder<?> findPropertyContentTypeResolver = deserializationConfig.getAnnotationIntrospector().findPropertyContentTypeResolver(deserializationConfig, annotatedMember, javaType);
        JavaType mo463getContentType = javaType.mo463getContentType();
        if (findPropertyContentTypeResolver == null) {
            return findTypeDeserializer(deserializationConfig, mo463getContentType);
        }
        return findPropertyContentTypeResolver.buildTypeDeserializer(deserializationConfig, mo463getContentType, deserializationConfig.getSubtypeResolver().collectAndResolveSubtypesByTypeId(deserializationConfig, annotatedMember, mo463getContentType));
    }

    public JsonDeserializer<?> findDefaultDeserializer(DeserializationContext deserializationContext, JavaType javaType, BeanDescription beanDescription) throws JsonMappingException {
        JavaType javaType2;
        JavaType javaType3;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == CLASS_OBJECT) {
            DeserializationConfig mo255getConfig = deserializationContext.mo255getConfig();
            if (this._factoryConfig.hasAbstractTypeResolvers()) {
                javaType3 = _findRemappedType(mo255getConfig, List.class);
                javaType2 = _findRemappedType(mo255getConfig, Map.class);
            } else {
                javaType2 = null;
                javaType3 = null;
            }
            return new UntypedObjectDeserializer(javaType3, javaType2);
        } else if (rawClass == CLASS_STRING || rawClass == CLASS_CHAR_BUFFER) {
            return StringDeserializer.instance;
        } else {
            if (rawClass == CLASS_ITERABLE) {
                TypeFactory typeFactory = deserializationContext.getTypeFactory();
                JavaType[] findTypeParameters = typeFactory.findTypeParameters(javaType, CLASS_ITERABLE);
                return createCollectionDeserializer(deserializationContext, typeFactory.constructCollectionType(Collection.class, (findTypeParameters == null || findTypeParameters.length != 1) ? TypeFactory.unknownType() : findTypeParameters[0]), beanDescription);
            } else if (rawClass == CLASS_MAP_ENTRY) {
                JavaType mo474containedType = javaType.mo474containedType(0);
                JavaType unknownType = mo474containedType == null ? TypeFactory.unknownType() : mo474containedType;
                JavaType mo474containedType2 = javaType.mo474containedType(1);
                JavaType unknownType2 = mo474containedType2 == null ? TypeFactory.unknownType() : mo474containedType2;
                TypeDeserializer typeDeserializer = (TypeDeserializer) unknownType2.getTypeHandler();
                return new MapEntryDeserializer(javaType, (KeyDeserializer) unknownType.getValueHandler(), (JsonDeserializer) unknownType2.getValueHandler(), typeDeserializer == null ? findTypeDeserializer(deserializationContext.mo255getConfig(), unknownType2) : typeDeserializer);
            } else {
                String name = rawClass.getName();
                if (rawClass.isPrimitive() || name.startsWith("java.")) {
                    JsonDeserializer<?> find = NumberDeserializers.find(rawClass, name);
                    if (find == null) {
                        find = DateDeserializers.find(rawClass, name);
                    }
                    if (find != null) {
                        return find;
                    }
                }
                if (rawClass == TokenBuffer.class) {
                    return new TokenBufferDeserializer();
                }
                JsonDeserializer<?> findOptionalStdDeserializer = findOptionalStdDeserializer(deserializationContext, javaType, beanDescription);
                return findOptionalStdDeserializer == null ? JdkDeserializers.find(rawClass, name) : findOptionalStdDeserializer;
            }
        }
    }

    protected JavaType _findRemappedType(DeserializationConfig deserializationConfig, Class<?> cls) throws JsonMappingException {
        JavaType mapAbstractType = mapAbstractType(deserializationConfig, deserializationConfig.constructType(cls));
        if (mapAbstractType == null || mapAbstractType.hasRawClass(cls)) {
            return null;
        }
        return mapAbstractType;
    }

    protected JsonDeserializer<?> _findCustomTreeNodeDeserializer(Class<? extends JsonNode> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findTreeNodeDeserializer = deserializers.findTreeNodeDeserializer(cls, deserializationConfig, beanDescription);
            if (findTreeNodeDeserializer != null) {
                return findTreeNodeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomReferenceDeserializer(ReferenceType referenceType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findReferenceDeserializer = deserializers.findReferenceDeserializer(referenceType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findReferenceDeserializer != null) {
                return findReferenceDeserializer;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<Object> _findCustomBeanDeserializer(JavaType javaType, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findBeanDeserializer = deserializers.findBeanDeserializer(javaType, deserializationConfig, beanDescription);
            if (findBeanDeserializer != null) {
                return findBeanDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomArrayDeserializer(ArrayType arrayType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findArrayDeserializer = deserializers.findArrayDeserializer(arrayType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findArrayDeserializer != null) {
                return findArrayDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionDeserializer(CollectionType collectionType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionDeserializer = deserializers.findCollectionDeserializer(collectionType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionDeserializer != null) {
                return findCollectionDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomCollectionLikeDeserializer(CollectionLikeType collectionLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findCollectionLikeDeserializer = deserializers.findCollectionLikeDeserializer(collectionLikeType, deserializationConfig, beanDescription, typeDeserializer, jsonDeserializer);
            if (findCollectionLikeDeserializer != null) {
                return findCollectionLikeDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomEnumDeserializer(Class<?> cls, DeserializationConfig deserializationConfig, BeanDescription beanDescription) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findEnumDeserializer = deserializers.findEnumDeserializer(cls, deserializationConfig, beanDescription);
            if (findEnumDeserializer != null) {
                return findEnumDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapDeserializer(MapType mapType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapDeserializer = deserializers.findMapDeserializer(mapType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapDeserializer != null) {
                return findMapDeserializer;
            }
        }
        return null;
    }

    protected JsonDeserializer<?> _findCustomMapLikeDeserializer(MapLikeType mapLikeType, DeserializationConfig deserializationConfig, BeanDescription beanDescription, KeyDeserializer keyDeserializer, TypeDeserializer typeDeserializer, JsonDeserializer<?> jsonDeserializer) throws JsonMappingException {
        for (Deserializers deserializers : this._factoryConfig.deserializers()) {
            JsonDeserializer<?> findMapLikeDeserializer = deserializers.findMapLikeDeserializer(mapLikeType, deserializationConfig, beanDescription, keyDeserializer, typeDeserializer, jsonDeserializer);
            if (findMapLikeDeserializer != null) {
                return findMapLikeDeserializer;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findDeserializer = annotationIntrospector.findDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.deserializerInstance(annotated, findDeserializer);
    }

    protected KeyDeserializer findKeyDeserializerFromAnnotation(DeserializationContext deserializationContext, Annotated annotated) throws JsonMappingException {
        Object findKeyDeserializer;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector == null || (findKeyDeserializer = annotationIntrospector.findKeyDeserializer(annotated)) == null) {
            return null;
        }
        return deserializationContext.keyDeserializerInstance(annotated, findKeyDeserializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType resolveMemberAndTypeAnnotations(DeserializationContext deserializationContext, AnnotatedMember annotatedMember, JavaType javaType) throws JsonMappingException {
        KeyDeserializer keyDeserializerInstance;
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        if (annotationIntrospector != null) {
            if (javaType.isMapLikeType() && javaType.mo449getKeyType() != null && (keyDeserializerInstance = deserializationContext.keyDeserializerInstance(annotatedMember, annotationIntrospector.findKeyDeserializer(annotatedMember))) != null) {
                javaType = ((MapLikeType) javaType).mo459withKeyValueHandler(keyDeserializerInstance);
                javaType.mo449getKeyType();
            }
            if (javaType.hasContentType()) {
                JsonDeserializer<Object> deserializerInstance = deserializationContext.deserializerInstance(annotatedMember, annotationIntrospector.findContentDeserializer(annotatedMember));
                if (deserializerInstance != null) {
                    javaType = javaType.mo470withContentValueHandler(deserializerInstance);
                }
                TypeDeserializer findPropertyContentTypeDeserializer = findPropertyContentTypeDeserializer(deserializationContext.mo255getConfig(), javaType, annotatedMember);
                if (findPropertyContentTypeDeserializer != null) {
                    javaType = javaType.mo465withContentTypeHandler(findPropertyContentTypeDeserializer);
                }
            }
            TypeDeserializer findPropertyTypeDeserializer = findPropertyTypeDeserializer(deserializationContext.mo255getConfig(), javaType, annotatedMember);
            if (findPropertyTypeDeserializer != null) {
                javaType = javaType.mo472withTypeHandler(findPropertyTypeDeserializer);
            }
            return annotationIntrospector.refineDeserializationType(deserializationContext.mo255getConfig(), annotatedMember, javaType);
        }
        return javaType;
    }

    protected EnumResolver constructEnumResolver(Class<?> cls, DeserializationConfig deserializationConfig, AnnotatedMethod annotatedMethod) {
        if (annotatedMethod != null) {
            Method mo354getAnnotated = annotatedMethod.mo354getAnnotated();
            if (deserializationConfig.canOverrideAccessModifiers()) {
                ClassUtil.checkAndFixAccess(mo354getAnnotated, deserializationConfig.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
            }
            return EnumResolver.constructUnsafeUsingMethod(cls, mo354getAnnotated, deserializationConfig.getAnnotationIntrospector());
        }
        return EnumResolver.constructUnsafe(cls, deserializationConfig.getAnnotationIntrospector());
    }

    @Deprecated
    protected JavaType modifyTypeByAnnotation(DeserializationContext deserializationContext, Annotated annotated, JavaType javaType) throws JsonMappingException {
        AnnotationIntrospector annotationIntrospector = deserializationContext.getAnnotationIntrospector();
        return annotationIntrospector == null ? javaType : annotationIntrospector.refineDeserializationType(deserializationContext.mo255getConfig(), annotated, javaType);
    }

    @Deprecated
    protected JavaType resolveType(DeserializationContext deserializationContext, BeanDescription beanDescription, JavaType javaType, AnnotatedMember annotatedMember) throws JsonMappingException {
        return resolveMemberAndTypeAnnotations(deserializationContext, annotatedMember, javaType);
    }

    @Deprecated
    protected AnnotatedMethod _findJsonValueFor(DeserializationConfig deserializationConfig, JavaType javaType) {
        if (javaType == null) {
            return null;
        }
        return deserializationConfig.introspect(javaType).findJsonValueMethod();
    }
}
