package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes.dex */
public class POJOPropertyBuilder extends BeanPropertyDefinition implements Comparable<POJOPropertyBuilder> {
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final MapperConfig<?> _config;
    protected Linked<AnnotatedParameter> _ctorParameters;
    protected Linked<AnnotatedField> _fields;
    protected final boolean _forSerialization;
    protected Linked<AnnotatedMethod> _getters;
    protected final PropertyName _internalName;
    protected final PropertyName _name;
    protected Linked<AnnotatedMethod> _setters;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface WithMember<T> {
        /* renamed from: withMember */
        T mo351withMember(AnnotatedMember annotatedMember);
    }

    public POJOPropertyBuilder(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z, PropertyName propertyName) {
        this(mapperConfig, annotationIntrospector, z, propertyName, propertyName);
    }

    protected POJOPropertyBuilder(MapperConfig<?> mapperConfig, AnnotationIntrospector annotationIntrospector, boolean z, PropertyName propertyName, PropertyName propertyName2) {
        this._config = mapperConfig;
        this._annotationIntrospector = annotationIntrospector;
        this._internalName = propertyName;
        this._name = propertyName2;
        this._forSerialization = z;
    }

    public POJOPropertyBuilder(POJOPropertyBuilder pOJOPropertyBuilder, PropertyName propertyName) {
        this._config = pOJOPropertyBuilder._config;
        this._annotationIntrospector = pOJOPropertyBuilder._annotationIntrospector;
        this._internalName = pOJOPropertyBuilder._internalName;
        this._name = propertyName;
        this._fields = pOJOPropertyBuilder._fields;
        this._ctorParameters = pOJOPropertyBuilder._ctorParameters;
        this._getters = pOJOPropertyBuilder._getters;
        this._setters = pOJOPropertyBuilder._setters;
        this._forSerialization = pOJOPropertyBuilder._forSerialization;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    /* renamed from: withName  reason: collision with other method in class */
    public POJOPropertyBuilder mo342withName(PropertyName propertyName) {
        return new POJOPropertyBuilder(this, propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    /* renamed from: withSimpleName  reason: collision with other method in class */
    public POJOPropertyBuilder mo343withSimpleName(String str) {
        PropertyName withSimpleName = this._name.withSimpleName(str);
        return withSimpleName == this._name ? this : new POJOPropertyBuilder(this, withSimpleName);
    }

    @Override // java.lang.Comparable
    public int compareTo(POJOPropertyBuilder pOJOPropertyBuilder) {
        if (this._ctorParameters != null) {
            if (pOJOPropertyBuilder._ctorParameters == null) {
                return -1;
            }
        } else if (pOJOPropertyBuilder._ctorParameters != null) {
            return 1;
        }
        return getName().compareTo(pOJOPropertyBuilder.getName());
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition, com.fasterxml.jackson.databind.util.Named
    public String getName() {
        if (this._name == null) {
            return null;
        }
        return this._name.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getFullName() {
        return this._name;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasName(PropertyName propertyName) {
        return this._name.equals(propertyName);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public String getInternalName() {
        return this._internalName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyName getWrapperName() {
        AnnotatedMember primaryMember = getPrimaryMember();
        if (primaryMember == null || this._annotationIntrospector == null) {
            return null;
        }
        return this._annotationIntrospector.findWrapperName(primaryMember);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyIncluded() {
        return _anyExplicits(this._fields) || _anyExplicits(this._getters) || _anyExplicits(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isExplicitlyNamed() {
        return _anyExplicitNames(this._fields) || _anyExplicitNames(this._getters) || _anyExplicitNames(this._setters) || _anyExplicitNames(this._ctorParameters);
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasGetter() {
        return this._getters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasSetter() {
        return this._setters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasField() {
        return this._fields != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean hasConstructorParameter() {
        return this._ctorParameters != null;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean couldDeserialize() {
        return (this._ctorParameters == null && this._setters == null && this._fields == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean couldSerialize() {
        return (this._getters == null && this._fields == null) ? false : true;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getGetter() {
        Linked<AnnotatedMethod> linked;
        Linked<AnnotatedMethod> linked2 = this._getters;
        if (linked2 == null) {
            return null;
        }
        Linked<AnnotatedMethod> linked3 = linked2.next;
        if (linked3 == null) {
            return linked2.value;
        }
        for (Linked<AnnotatedMethod> linked4 = linked3; linked4 != null; linked4 = linked4.next) {
            Class<?> declaringClass = linked2.value.getDeclaringClass();
            Class<?> declaringClass2 = linked4.value.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    linked = linked4;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                    linked = linked2;
                }
                linked2 = linked;
            }
            int _getterPriority = _getterPriority(linked4.value);
            int _getterPriority2 = _getterPriority(linked2.value);
            if (_getterPriority != _getterPriority2) {
                linked = _getterPriority < _getterPriority2 ? linked4 : linked2;
                linked2 = linked;
            } else {
                throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + linked2.value.getFullName() + " vs " + linked4.value.getFullName());
            }
        }
        this._getters = linked2.withoutNext();
        return linked2.value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedMethod getSetter() {
        Linked<AnnotatedMethod> linked;
        Linked<AnnotatedMethod> linked2 = this._setters;
        if (linked2 == null) {
            return null;
        }
        Linked<AnnotatedMethod> linked3 = linked2.next;
        if (linked3 == null) {
            return linked2.value;
        }
        for (Linked<AnnotatedMethod> linked4 = linked3; linked4 != null; linked4 = linked4.next) {
            Class<?> declaringClass = linked2.value.getDeclaringClass();
            Class<?> declaringClass2 = linked4.value.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (declaringClass.isAssignableFrom(declaringClass2)) {
                    linked = linked4;
                } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                    linked = linked2;
                }
                linked2 = linked;
            }
            AnnotatedMethod annotatedMethod = linked4.value;
            AnnotatedMethod annotatedMethod2 = linked2.value;
            int _setterPriority = _setterPriority(annotatedMethod);
            int _setterPriority2 = _setterPriority(annotatedMethod2);
            if (_setterPriority != _setterPriority2) {
                linked = _setterPriority < _setterPriority2 ? linked4 : linked2;
            } else {
                if (this._annotationIntrospector != null) {
                    AnnotatedMethod resolveSetterConflict = this._annotationIntrospector.resolveSetterConflict(this._config, annotatedMethod2, annotatedMethod);
                    if (resolveSetterConflict == annotatedMethod2) {
                        linked = linked2;
                    } else if (resolveSetterConflict == annotatedMethod) {
                        linked = linked4;
                    }
                }
                throw new IllegalArgumentException(String.format("Conflicting setter definitions for property \"%s\": %s vs %s", getName(), linked2.value.getFullName(), linked4.value.getFullName()));
            }
            linked2 = linked;
        }
        this._setters = linked2.withoutNext();
        return linked2.value;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedField getField() {
        if (this._fields == null) {
            return null;
        }
        Linked<AnnotatedField> linked = this._fields.next;
        AnnotatedField annotatedField = this._fields.value;
        while (linked != null) {
            AnnotatedField annotatedField2 = linked.value;
            Class<?> declaringClass = annotatedField.getDeclaringClass();
            Class<?> declaringClass2 = annotatedField2.getDeclaringClass();
            if (declaringClass != declaringClass2) {
                if (!declaringClass.isAssignableFrom(declaringClass2)) {
                    if (declaringClass2.isAssignableFrom(declaringClass)) {
                        annotatedField2 = annotatedField;
                    }
                }
                linked = linked.next;
                annotatedField = annotatedField2;
            }
            throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + annotatedField.getFullName() + " vs " + annotatedField2.getFullName());
        }
        return annotatedField;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotatedParameter getConstructorParameter() {
        if (this._ctorParameters == null) {
            return null;
        }
        Linked linked = this._ctorParameters;
        while (true) {
            Linked linked2 = linked;
            if (((AnnotatedParameter) linked2.value).getOwner() instanceof AnnotatedConstructor) {
                return (AnnotatedParameter) linked2.value;
            }
            linked = linked2.next;
            if (linked == null) {
                return this._ctorParameters.value;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Iterator<AnnotatedParameter> getConstructorParameters() {
        return this._ctorParameters == null ? ClassUtil.emptyIterator() : new MemberIterator(this._ctorParameters);
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
        return this._forSerialization ? getAccessor() : getMutator();
    }

    protected int _getterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    protected int _setterPriority(AnnotatedMethod annotatedMethod) {
        String name = annotatedMethod.getName();
        return (!name.startsWith("set") || name.length() <= 3) ? 2 : 1;
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public Class<?>[] findViews() {
        return (Class[]) fromMemberAnnotations(new WithMember<Class<?>[]>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.1
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember  reason: avoid collision after fix types in other method */
            public Class<?>[] mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findViews(annotatedMember);
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public AnnotationIntrospector.ReferenceProperty findReferenceType() {
        return (AnnotationIntrospector.ReferenceProperty) fromMemberAnnotations(new WithMember<AnnotationIntrospector.ReferenceProperty>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public AnnotationIntrospector.ReferenceProperty mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findReferenceType(annotatedMember);
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public boolean isTypeId() {
        Boolean bool = (Boolean) fromMemberAnnotations(new WithMember<Boolean>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public Boolean mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.isTypeId(annotatedMember);
            }
        });
        return bool != null && bool.booleanValue();
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public PropertyMetadata getMetadata() {
        Boolean _findRequired = _findRequired();
        String _findDescription = _findDescription();
        Integer _findIndex = _findIndex();
        String _findDefaultValue = _findDefaultValue();
        if (_findRequired == null && _findIndex == null && _findDefaultValue == null) {
            return _findDescription == null ? PropertyMetadata.STD_REQUIRED_OR_OPTIONAL : PropertyMetadata.STD_REQUIRED_OR_OPTIONAL.withDescription(_findDescription);
        }
        return PropertyMetadata.construct(_findRequired.booleanValue(), _findDescription, _findIndex, _findDefaultValue);
    }

    protected Boolean _findRequired() {
        return (Boolean) fromMemberAnnotations(new WithMember<Boolean>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public Boolean mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.hasRequiredMarker(annotatedMember);
            }
        });
    }

    protected String _findDescription() {
        return (String) fromMemberAnnotations(new WithMember<String>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.5
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember  reason: collision with other method in class */
            public String mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyDescription(annotatedMember);
            }
        });
    }

    protected Integer _findIndex() {
        return (Integer) fromMemberAnnotations(new WithMember<Integer>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public Integer mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyIndex(annotatedMember);
            }
        });
    }

    protected String _findDefaultValue() {
        return (String) fromMemberAnnotations(new WithMember<String>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.7
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember  reason: collision with other method in class */
            public String mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyDefaultValue(annotatedMember);
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public ObjectIdInfo findObjectIdInfo() {
        return (ObjectIdInfo) fromMemberAnnotations(new WithMember<ObjectIdInfo>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public ObjectIdInfo mo351withMember(AnnotatedMember annotatedMember) {
                ObjectIdInfo findObjectIdInfo = POJOPropertyBuilder.this._annotationIntrospector.findObjectIdInfo(annotatedMember);
                if (findObjectIdInfo != null) {
                    return POJOPropertyBuilder.this._annotationIntrospector.findObjectReferenceInfo(annotatedMember, findObjectIdInfo);
                }
                return findObjectIdInfo;
            }
        });
    }

    @Override // com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition
    public JsonInclude.Value findInclusion() {
        JsonInclude.Value findPropertyInclusion = this._annotationIntrospector == null ? null : this._annotationIntrospector.findPropertyInclusion(getAccessor());
        return findPropertyInclusion == null ? JsonInclude.Value.empty() : findPropertyInclusion;
    }

    public JsonProperty.Access findAccess() {
        return (JsonProperty.Access) fromMemberAnnotationsExcept(new WithMember<JsonProperty.Access>() { // from class: com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.fasterxml.jackson.databind.introspect.POJOPropertyBuilder.WithMember
            /* renamed from: withMember */
            public JsonProperty.Access mo351withMember(AnnotatedMember annotatedMember) {
                return POJOPropertyBuilder.this._annotationIntrospector.findPropertyAccess(annotatedMember);
            }
        }, JsonProperty.Access.AUTO);
    }

    public void addField(AnnotatedField annotatedField, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._fields = new Linked<>(annotatedField, this._fields, propertyName, z, z2, z3);
    }

    public void addCtor(AnnotatedParameter annotatedParameter, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._ctorParameters = new Linked<>(annotatedParameter, this._ctorParameters, propertyName, z, z2, z3);
    }

    public void addGetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._getters = new Linked<>(annotatedMethod, this._getters, propertyName, z, z2, z3);
    }

    public void addSetter(AnnotatedMethod annotatedMethod, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
        this._setters = new Linked<>(annotatedMethod, this._setters, propertyName, z, z2, z3);
    }

    public void addAll(POJOPropertyBuilder pOJOPropertyBuilder) {
        this._fields = merge(this._fields, pOJOPropertyBuilder._fields);
        this._ctorParameters = merge(this._ctorParameters, pOJOPropertyBuilder._ctorParameters);
        this._getters = merge(this._getters, pOJOPropertyBuilder._getters);
        this._setters = merge(this._setters, pOJOPropertyBuilder._setters);
    }

    private static <T> Linked<T> merge(Linked<T> linked, Linked<T> linked2) {
        if (linked == null) {
            return linked2;
        }
        return linked2 == null ? linked : linked.append(linked2);
    }

    public void removeIgnored() {
        this._fields = _removeIgnored(this._fields);
        this._getters = _removeIgnored(this._getters);
        this._setters = _removeIgnored(this._setters);
        this._ctorParameters = _removeIgnored(this._ctorParameters);
    }

    public JsonProperty.Access removeNonVisible(boolean z) {
        JsonProperty.Access findAccess = findAccess();
        if (findAccess == null) {
            findAccess = JsonProperty.Access.AUTO;
        }
        switch (findAccess) {
            case READ_ONLY:
                this._setters = null;
                this._ctorParameters = null;
                if (!this._forSerialization) {
                    this._fields = null;
                    break;
                }
                break;
            case READ_WRITE:
                break;
            case WRITE_ONLY:
                this._getters = null;
                if (this._forSerialization) {
                    this._fields = null;
                    break;
                }
                break;
            default:
                this._getters = _removeNonVisible(this._getters);
                this._ctorParameters = _removeNonVisible(this._ctorParameters);
                if (!z || this._getters == null) {
                    this._fields = _removeNonVisible(this._fields);
                    this._setters = _removeNonVisible(this._setters);
                    break;
                }
                break;
        }
        return findAccess;
    }

    public void removeConstructors() {
        this._ctorParameters = null;
    }

    public void trimByVisibility() {
        this._fields = _trimByVisibility(this._fields);
        this._getters = _trimByVisibility(this._getters);
        this._setters = _trimByVisibility(this._setters);
        this._ctorParameters = _trimByVisibility(this._ctorParameters);
    }

    public void mergeAnnotations(boolean z) {
        if (z) {
            if (this._getters != null) {
                this._getters = _applyAnnotations(this._getters, _mergeAnnotations(0, this._getters, this._fields, this._ctorParameters, this._setters));
            } else if (this._fields != null) {
                this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, this._fields, this._ctorParameters, this._setters));
            }
        } else if (this._ctorParameters != null) {
            this._ctorParameters = _applyAnnotations(this._ctorParameters, _mergeAnnotations(0, this._ctorParameters, this._setters, this._fields, this._getters));
        } else if (this._setters != null) {
            this._setters = _applyAnnotations(this._setters, _mergeAnnotations(0, this._setters, this._fields, this._getters));
        } else if (this._fields != null) {
            this._fields = _applyAnnotations(this._fields, _mergeAnnotations(0, this._fields, this._getters));
        }
    }

    private AnnotationMap _mergeAnnotations(int i, Linked<? extends AnnotatedMember>... linkedArr) {
        AnnotationMap _getAllAnnotations = _getAllAnnotations(linkedArr[i]);
        do {
            i++;
            if (i >= linkedArr.length) {
                return _getAllAnnotations;
            }
        } while (linkedArr[i] == null);
        return AnnotationMap.merge(_getAllAnnotations, _mergeAnnotations(i, linkedArr));
    }

    private <T extends AnnotatedMember> AnnotationMap _getAllAnnotations(Linked<T> linked) {
        AnnotationMap allAnnotations = linked.value.getAllAnnotations();
        if (linked.next != null) {
            return AnnotationMap.merge(allAnnotations, _getAllAnnotations(linked.next));
        }
        return allAnnotations;
    }

    private <T extends AnnotatedMember> Linked<T> _applyAnnotations(Linked<T> linked, AnnotationMap annotationMap) {
        AnnotatedMember annotatedMember = (AnnotatedMember) linked.value.mo335withAnnotations(annotationMap);
        Linked<T> linked2 = linked.next;
        Linked linked3 = linked;
        if (linked2 != null) {
            linked3 = (Linked<T>) linked.withNext(_applyAnnotations(linked.next, annotationMap));
        }
        return linked3.withValue(annotatedMember);
    }

    private <T> Linked<T> _removeIgnored(Linked<T> linked) {
        return linked == null ? linked : linked.withoutIgnored();
    }

    private <T> Linked<T> _removeNonVisible(Linked<T> linked) {
        return linked == null ? linked : linked.withoutNonVisible();
    }

    private <T> Linked<T> _trimByVisibility(Linked<T> linked) {
        return linked == null ? linked : linked.trimByVisibility();
    }

    private <T> boolean _anyExplicits(Linked<T> linked) {
        while (linked != null) {
            if (linked.name == null || !linked.name.hasSimpleName()) {
                linked = linked.next;
            } else {
                return true;
            }
        }
        return false;
    }

    private <T> boolean _anyExplicitNames(Linked<T> linked) {
        while (linked != null) {
            if (linked.name == null || !linked.isNameExplicit) {
                linked = linked.next;
            } else {
                return true;
            }
        }
        return false;
    }

    public boolean anyVisible() {
        return _anyVisible(this._fields) || _anyVisible(this._getters) || _anyVisible(this._setters) || _anyVisible(this._ctorParameters);
    }

    private <T> boolean _anyVisible(Linked<T> linked) {
        while (linked != null) {
            if (!linked.isVisible) {
                linked = linked.next;
            } else {
                return true;
            }
        }
        return false;
    }

    public boolean anyIgnorals() {
        return _anyIgnorals(this._fields) || _anyIgnorals(this._getters) || _anyIgnorals(this._setters) || _anyIgnorals(this._ctorParameters);
    }

    private <T> boolean _anyIgnorals(Linked<T> linked) {
        while (linked != null) {
            if (!linked.isMarkedIgnored) {
                linked = linked.next;
            } else {
                return true;
            }
        }
        return false;
    }

    public Set<PropertyName> findExplicitNames() {
        Set<PropertyName> _findExplicitNames = _findExplicitNames(this._ctorParameters, _findExplicitNames(this._setters, _findExplicitNames(this._getters, _findExplicitNames(this._fields, null))));
        if (_findExplicitNames == null) {
            return Collections.emptySet();
        }
        return _findExplicitNames;
    }

    public Collection<POJOPropertyBuilder> explode(Collection<PropertyName> collection) {
        HashMap hashMap = new HashMap();
        _explode(collection, hashMap, this._fields);
        _explode(collection, hashMap, this._getters);
        _explode(collection, hashMap, this._setters);
        _explode(collection, hashMap, this._ctorParameters);
        return hashMap.values();
    }

    private void _explode(Collection<PropertyName> collection, Map<PropertyName, POJOPropertyBuilder> map, Linked<?> linked) {
        for (Linked<?> linked2 = linked; linked2 != null; linked2 = linked2.next) {
            PropertyName propertyName = linked2.name;
            if (!linked2.isNameExplicit || propertyName == null) {
                if (linked2.isVisible) {
                    throw new IllegalStateException("Conflicting/ambiguous property name definitions (implicit name '" + this._name + "'): found multiple explicit names: " + collection + ", but also implicit accessor: " + linked2);
                }
            } else {
                POJOPropertyBuilder pOJOPropertyBuilder = map.get(propertyName);
                if (pOJOPropertyBuilder == null) {
                    pOJOPropertyBuilder = new POJOPropertyBuilder(this._config, this._annotationIntrospector, this._forSerialization, this._internalName, propertyName);
                    map.put(propertyName, pOJOPropertyBuilder);
                }
                if (linked == this._fields) {
                    pOJOPropertyBuilder._fields = linked2.withNext(pOJOPropertyBuilder._fields);
                } else if (linked == this._getters) {
                    pOJOPropertyBuilder._getters = linked2.withNext(pOJOPropertyBuilder._getters);
                } else if (linked == this._setters) {
                    pOJOPropertyBuilder._setters = linked2.withNext(pOJOPropertyBuilder._setters);
                } else if (linked == this._ctorParameters) {
                    pOJOPropertyBuilder._ctorParameters = linked2.withNext(pOJOPropertyBuilder._ctorParameters);
                } else {
                    throw new IllegalStateException("Internal error: mismatched accessors, property: " + this);
                }
            }
        }
    }

    private Set<PropertyName> _findExplicitNames(Linked<? extends AnnotatedMember> linked, Set<PropertyName> set) {
        Set<PropertyName> set2 = set;
        for (Linked<? extends AnnotatedMember> linked2 = linked; linked2 != null; linked2 = linked2.next) {
            if (linked2.isNameExplicit && linked2.name != null) {
                if (set2 == null) {
                    set2 = new HashSet<>();
                }
                set2.add(linked2.name);
            }
        }
        return set2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[Property '").append(this._name).append("'; ctors: ").append(this._ctorParameters).append(", field(s): ").append(this._fields).append(", getter(s): ").append(this._getters).append(", setter(s): ").append(this._setters);
        sb.append("]");
        return sb.toString();
    }

    protected <T> T fromMemberAnnotations(WithMember<T> withMember) {
        T t = null;
        if (this._annotationIntrospector == null) {
            return null;
        }
        if (this._forSerialization) {
            if (this._getters != null) {
                t = withMember.mo351withMember(this._getters.value);
            }
        } else {
            if (this._ctorParameters != null) {
                t = withMember.mo351withMember(this._ctorParameters.value);
            }
            if (t == null && this._setters != null) {
                t = withMember.mo351withMember(this._setters.value);
            }
        }
        if (t == null && this._fields != null) {
            return withMember.mo351withMember(this._fields.value);
        }
        return t;
    }

    protected <T> T fromMemberAnnotationsExcept(WithMember<T> withMember, T t) {
        T mo351withMember;
        T mo351withMember2;
        T mo351withMember3;
        T mo351withMember4;
        T mo351withMember5;
        T mo351withMember6;
        T mo351withMember7;
        T mo351withMember8;
        if (this._annotationIntrospector == null) {
            return null;
        }
        if (this._forSerialization) {
            if (this._getters == null || (mo351withMember8 = withMember.mo351withMember(this._getters.value)) == null || mo351withMember8 == t) {
                if (this._fields == null || (mo351withMember7 = withMember.mo351withMember(this._fields.value)) == null || mo351withMember7 == t) {
                    if (this._ctorParameters == null || (mo351withMember6 = withMember.mo351withMember(this._ctorParameters.value)) == null || mo351withMember6 == t) {
                        if (this._setters != null && (mo351withMember5 = withMember.mo351withMember(this._setters.value)) != null && mo351withMember5 != t) {
                            return mo351withMember5;
                        }
                        return null;
                    }
                    return mo351withMember6;
                }
                return mo351withMember7;
            }
            return mo351withMember8;
        } else if (this._ctorParameters == null || (mo351withMember4 = withMember.mo351withMember(this._ctorParameters.value)) == null || mo351withMember4 == t) {
            if (this._setters == null || (mo351withMember3 = withMember.mo351withMember(this._setters.value)) == null || mo351withMember3 == t) {
                if (this._fields == null || (mo351withMember2 = withMember.mo351withMember(this._fields.value)) == null || mo351withMember2 == t) {
                    if (this._getters != null && (mo351withMember = withMember.mo351withMember(this._getters.value)) != null && mo351withMember != t) {
                        return mo351withMember;
                    }
                    return null;
                }
                return mo351withMember2;
            }
            return mo351withMember3;
        } else {
            return mo351withMember4;
        }
    }

    /* loaded from: classes.dex */
    protected static class MemberIterator<T extends AnnotatedMember> implements Iterator<T> {
        private Linked<T> next;

        public MemberIterator(Linked<T> linked) {
            this.next = linked;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next != null;
        }

        @Override // java.util.Iterator
        /* renamed from: next */
        public T mo352next() {
            if (this.next == null) {
                throw new NoSuchElementException();
            }
            T t = this.next.value;
            this.next = this.next.next;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class Linked<T> {
        public final boolean isMarkedIgnored;
        public final boolean isNameExplicit;
        public final boolean isVisible;
        public final PropertyName name;
        public final Linked<T> next;
        public final T value;

        public Linked(T t, Linked<T> linked, PropertyName propertyName, boolean z, boolean z2, boolean z3) {
            this.value = t;
            this.next = linked;
            this.name = (propertyName == null || propertyName.isEmpty()) ? null : propertyName;
            if (z) {
                if (this.name == null) {
                    throw new IllegalArgumentException("Can not pass true for 'explName' if name is null/empty");
                }
                if (!propertyName.hasSimpleName()) {
                    z = false;
                }
            }
            this.isNameExplicit = z;
            this.isVisible = z2;
            this.isMarkedIgnored = z3;
        }

        public Linked<T> withoutNext() {
            return this.next == null ? this : new Linked<>(this.value, null, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withValue(T t) {
            return t == this.value ? this : new Linked<>(t, this.next, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withNext(Linked<T> linked) {
            return linked == this.next ? this : new Linked<>(this.value, linked, this.name, this.isNameExplicit, this.isVisible, this.isMarkedIgnored);
        }

        public Linked<T> withoutIgnored() {
            Linked<T> withoutIgnored;
            if (!this.isMarkedIgnored) {
                return (this.next == null || (withoutIgnored = this.next.withoutIgnored()) == this.next) ? this : withNext(withoutIgnored);
            } else if (this.next != null) {
                return this.next.withoutIgnored();
            } else {
                return null;
            }
        }

        public Linked<T> withoutNonVisible() {
            Linked<T> withoutNonVisible = this.next == null ? null : this.next.withoutNonVisible();
            return this.isVisible ? withNext(withoutNonVisible) : withoutNonVisible;
        }

        protected Linked<T> append(Linked<T> linked) {
            return this.next == null ? withNext(linked) : withNext(this.next.append(linked));
        }

        public Linked<T> trimByVisibility() {
            if (this.next == null) {
                return this;
            }
            Linked<T> trimByVisibility = this.next.trimByVisibility();
            if (this.name != null) {
                if (trimByVisibility.name == null) {
                    return withNext(null);
                }
                return withNext(trimByVisibility);
            } else if (trimByVisibility.name == null) {
                if (this.isVisible == trimByVisibility.isVisible) {
                    return withNext(trimByVisibility);
                }
                return this.isVisible ? withNext(null) : trimByVisibility;
            } else {
                return trimByVisibility;
            }
        }

        public String toString() {
            String str = this.value.toString() + "[visible=" + this.isVisible + ",ignore=" + this.isMarkedIgnored + ",explicitName=" + this.isNameExplicit + "]";
            if (this.next != null) {
                return str + ", " + this.next.toString();
            }
            return str;
        }
    }
}
