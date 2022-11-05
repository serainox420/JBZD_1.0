package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.TypeResolutionContext;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class AnnotatedClass extends Annotated implements TypeResolutionContext {
    private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final TypeBindings _bindings;
    protected final Class<?> _class;
    protected final AnnotationMap _classAnnotations;
    protected List<AnnotatedConstructor> _constructors;
    protected List<AnnotatedMethod> _creatorMethods;
    protected boolean _creatorsResolved = false;
    protected AnnotatedConstructor _defaultConstructor;
    protected List<AnnotatedField> _fields;
    protected AnnotatedMethodMap _memberMethods;
    protected final ClassIntrospector.MixInResolver _mixInResolver;
    protected transient Boolean _nonStaticInnerClass;
    protected final Class<?> _primaryMixIn;
    protected final List<JavaType> _superTypes;
    protected final JavaType _type;
    protected final TypeFactory _typeFactory;

    private AnnotatedClass(JavaType javaType, Class<?> cls, TypeBindings typeBindings, List<JavaType> list, AnnotationIntrospector annotationIntrospector, ClassIntrospector.MixInResolver mixInResolver, TypeFactory typeFactory) {
        this._type = javaType;
        this._class = cls;
        this._bindings = typeBindings;
        this._superTypes = list;
        this._annotationIntrospector = annotationIntrospector;
        this._typeFactory = typeFactory;
        this._mixInResolver = mixInResolver;
        this._primaryMixIn = this._mixInResolver == null ? null : this._mixInResolver.findMixInClassFor(this._class);
        this._classAnnotations = _resolveClassAnnotations();
    }

    private AnnotatedClass(AnnotatedClass annotatedClass, AnnotationMap annotationMap) {
        this._type = annotatedClass._type;
        this._class = annotatedClass._class;
        this._bindings = annotatedClass._bindings;
        this._superTypes = annotatedClass._superTypes;
        this._annotationIntrospector = annotatedClass._annotationIntrospector;
        this._typeFactory = annotatedClass._typeFactory;
        this._mixInResolver = annotatedClass._mixInResolver;
        this._primaryMixIn = annotatedClass._primaryMixIn;
        this._classAnnotations = annotationMap;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    /* renamed from: withAnnotations  reason: collision with other method in class */
    public AnnotatedClass mo335withAnnotations(AnnotationMap annotationMap) {
        return new AnnotatedClass(this, annotationMap);
    }

    public static AnnotatedClass construct(JavaType javaType, MapperConfig<?> mapperConfig) {
        return new AnnotatedClass(javaType, javaType.getRawClass(), javaType.getBindings(), ClassUtil.findSuperTypes(javaType, (Class<?>) null, false), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mapperConfig, mapperConfig.getTypeFactory());
    }

    public static AnnotatedClass construct(JavaType javaType, MapperConfig<?> mapperConfig, ClassIntrospector.MixInResolver mixInResolver) {
        return new AnnotatedClass(javaType, javaType.getRawClass(), javaType.getBindings(), ClassUtil.findSuperTypes(javaType, (Class<?>) null, false), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mixInResolver, mapperConfig.getTypeFactory());
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> mapperConfig) {
        if (mapperConfig == null) {
            return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), null, null, null);
        }
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mapperConfig, mapperConfig.getTypeFactory());
    }

    public static AnnotatedClass constructWithoutSuperTypes(Class<?> cls, MapperConfig<?> mapperConfig, ClassIntrospector.MixInResolver mixInResolver) {
        if (mapperConfig == null) {
            return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), null, null, null);
        }
        return new AnnotatedClass(null, cls, TypeBindings.emptyBindings(), Collections.emptyList(), mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null, mixInResolver, mapperConfig.getTypeFactory());
    }

    @Override // com.fasterxml.jackson.databind.introspect.TypeResolutionContext
    public JavaType resolveType(Type type) {
        return this._typeFactory.constructType(type, this._bindings);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    /* renamed from: getAnnotated */
    public Class<?> mo354getAnnotated() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int getModifiers() {
        return this._class.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String getName() {
        return this._class.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this._classAnnotations.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasAnnotation(Class<?> cls) {
        return this._classAnnotations.has(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        return this._classAnnotations.hasOneOf(clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Class<?> getRawType() {
        return this._class;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public Iterable<Annotation> annotations() {
        return this._classAnnotations.annotations();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    protected AnnotationMap getAllAnnotations() {
        return this._classAnnotations;
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public JavaType getType() {
        return this._type;
    }

    public Annotations getAnnotations() {
        return this._classAnnotations;
    }

    public boolean hasAnnotations() {
        return this._classAnnotations.size() > 0;
    }

    public AnnotatedConstructor getDefaultConstructor() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._defaultConstructor;
    }

    public List<AnnotatedConstructor> getConstructors() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._constructors;
    }

    public List<AnnotatedMethod> getStaticMethods() {
        if (!this._creatorsResolved) {
            resolveCreators();
        }
        return this._creatorMethods;
    }

    public Iterable<AnnotatedMethod> memberMethods() {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods;
    }

    public int getMemberMethodCount() {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods.size();
    }

    public AnnotatedMethod findMethod(String str, Class<?>[] clsArr) {
        if (this._memberMethods == null) {
            resolveMemberMethods();
        }
        return this._memberMethods.find(str, clsArr);
    }

    public int getFieldCount() {
        if (this._fields == null) {
            resolveFields();
        }
        return this._fields.size();
    }

    public Iterable<AnnotatedField> fields() {
        if (this._fields == null) {
            resolveFields();
        }
        return this._fields;
    }

    public boolean isNonStaticInnerClass() {
        Boolean bool = this._nonStaticInnerClass;
        if (bool == null) {
            bool = Boolean.valueOf(ClassUtil.isNonStaticInnerClass(this._class));
            this._nonStaticInnerClass = bool;
        }
        return bool.booleanValue();
    }

    private AnnotationMap _resolveClassAnnotations() {
        AnnotationMap annotationMap = new AnnotationMap();
        if (this._annotationIntrospector != null) {
            if (this._primaryMixIn != null) {
                _addClassMixIns(annotationMap, this._class, this._primaryMixIn);
            }
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(this._class));
            for (JavaType javaType : this._superTypes) {
                _addClassMixIns(annotationMap, javaType);
                _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(javaType.getRawClass()));
            }
            _addClassMixIns(annotationMap, Object.class);
        }
        return annotationMap;
    }

    private void resolveCreators() {
        ArrayList arrayList;
        Method[] _findClassMethods;
        if (!this._type.isEnumType()) {
            ClassUtil.Ctor[] constructors = ClassUtil.getConstructors(this._class);
            arrayList = null;
            for (ClassUtil.Ctor ctor : constructors) {
                if (_isIncludableConstructor(ctor.getConstructor())) {
                    if (ctor.getParamCount() == 0) {
                        this._defaultConstructor = _constructDefaultConstructor(ctor, this);
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList(Math.max(10, constructors.length));
                        }
                        arrayList.add(_constructNonDefaultConstructor(ctor, this));
                    }
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            this._constructors = Collections.emptyList();
        } else {
            this._constructors = arrayList;
        }
        if (this._primaryMixIn != null && (this._defaultConstructor != null || !this._constructors.isEmpty())) {
            _addConstructorMixIns(this._primaryMixIn);
        }
        if (this._annotationIntrospector != null) {
            if (this._defaultConstructor != null && this._annotationIntrospector.hasIgnoreMarker(this._defaultConstructor)) {
                this._defaultConstructor = null;
            }
            if (this._constructors != null) {
                int size = this._constructors.size();
                while (true) {
                    int i = size - 1;
                    if (i < 0) {
                        break;
                    } else if (this._annotationIntrospector.hasIgnoreMarker(this._constructors.get(i))) {
                        this._constructors.remove(i);
                        size = i;
                    } else {
                        size = i;
                    }
                }
            }
        }
        ArrayList arrayList2 = null;
        for (Method method : _findClassMethods(this._class)) {
            if (Modifier.isStatic(method.getModifiers())) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(8);
                }
                arrayList2.add(_constructCreatorMethod(method, this));
            }
        }
        if (arrayList2 == null) {
            this._creatorMethods = Collections.emptyList();
        } else {
            this._creatorMethods = arrayList2;
            if (this._primaryMixIn != null) {
                _addFactoryMixIns(this._primaryMixIn);
            }
            if (this._annotationIntrospector != null) {
                int size2 = this._creatorMethods.size();
                while (true) {
                    int i2 = size2 - 1;
                    if (i2 < 0) {
                        break;
                    } else if (this._annotationIntrospector.hasIgnoreMarker(this._creatorMethods.get(i2))) {
                        this._creatorMethods.remove(i2);
                        size2 = i2;
                    } else {
                        size2 = i2;
                    }
                }
            }
        }
        this._creatorsResolved = true;
    }

    private void resolveMemberMethods() {
        Class<?> findMixInClassFor;
        this._memberMethods = new AnnotatedMethodMap();
        AnnotatedMethodMap annotatedMethodMap = new AnnotatedMethodMap();
        _addMemberMethods(this._class, this, this._memberMethods, this._primaryMixIn, annotatedMethodMap);
        for (JavaType javaType : this._superTypes) {
            _addMemberMethods(javaType.getRawClass(), new TypeResolutionContext.Basic(this._typeFactory, javaType.getBindings()), this._memberMethods, this._mixInResolver == null ? null : this._mixInResolver.findMixInClassFor(javaType.getRawClass()), annotatedMethodMap);
        }
        if (this._mixInResolver != null && (findMixInClassFor = this._mixInResolver.findMixInClassFor(Object.class)) != null) {
            _addMethodMixIns(this._class, this._memberMethods, findMixInClassFor, annotatedMethodMap);
        }
        if (this._annotationIntrospector != null && !annotatedMethodMap.isEmpty()) {
            Iterator<AnnotatedMethod> it = annotatedMethodMap.iterator();
            while (it.hasNext()) {
                AnnotatedMethod next = it.next();
                try {
                    Method declaredMethod = Object.class.getDeclaredMethod(next.getName(), next.getRawParameterTypes());
                    if (declaredMethod != null) {
                        AnnotatedMethod _constructMethod = _constructMethod(declaredMethod, this);
                        _addMixOvers(next.mo354getAnnotated(), _constructMethod, false);
                        this._memberMethods.add(_constructMethod);
                    }
                } catch (Exception e) {
                }
            }
        }
    }

    private void resolveFields() {
        Map<String, AnnotatedField> _findFields = _findFields(this._type, this, null);
        if (_findFields == null || _findFields.size() == 0) {
            this._fields = Collections.emptyList();
            return;
        }
        this._fields = new ArrayList(_findFields.size());
        this._fields.addAll(_findFields.values());
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, JavaType javaType) {
        if (this._mixInResolver != null) {
            Class<?> rawClass = javaType.getRawClass();
            _addClassMixIns(annotationMap, rawClass, this._mixInResolver.findMixInClassFor(rawClass));
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls) {
        if (this._mixInResolver != null) {
            _addClassMixIns(annotationMap, cls, this._mixInResolver.findMixInClassFor(cls));
        }
    }

    protected void _addClassMixIns(AnnotationMap annotationMap, Class<?> cls, Class<?> cls2) {
        if (cls2 != null) {
            _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls2));
            for (Class<?> cls3 : ClassUtil.findSuperClasses(cls2, cls, false)) {
                _addAnnotationsIfNotPresent(annotationMap, ClassUtil.findClassAnnotations(cls3));
            }
        }
    }

    protected void _addConstructorMixIns(Class<?> cls) {
        MemberKey[] memberKeyArr;
        int size = this._constructors == null ? 0 : this._constructors.size();
        MemberKey[] memberKeyArr2 = null;
        for (ClassUtil.Ctor ctor : ClassUtil.getConstructors(cls)) {
            Constructor<?> constructor = ctor.getConstructor();
            if (constructor.getParameterTypes().length == 0) {
                if (this._defaultConstructor != null) {
                    _addMixOvers(constructor, this._defaultConstructor, false);
                }
            } else {
                if (memberKeyArr2 == null) {
                    memberKeyArr = new MemberKey[size];
                    for (int i = 0; i < size; i++) {
                        memberKeyArr[i] = new MemberKey(this._constructors.get(i).mo354getAnnotated());
                    }
                } else {
                    memberKeyArr = memberKeyArr2;
                }
                MemberKey memberKey = new MemberKey(constructor);
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        if (!memberKey.equals(memberKeyArr[i2])) {
                            i2++;
                        } else {
                            _addMixOvers(constructor, this._constructors.get(i2), true);
                            memberKeyArr2 = memberKeyArr;
                            break;
                        }
                    } else {
                        memberKeyArr2 = memberKeyArr;
                        break;
                    }
                }
            }
        }
    }

    protected void _addFactoryMixIns(Class<?> cls) {
        Method[] declaredMethods;
        MemberKey[] memberKeyArr;
        MemberKey[] memberKeyArr2 = null;
        int size = this._creatorMethods.size();
        for (Method method : ClassUtil.getDeclaredMethods(cls)) {
            if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length != 0) {
                if (memberKeyArr2 == null) {
                    memberKeyArr = new MemberKey[size];
                    for (int i = 0; i < size; i++) {
                        memberKeyArr[i] = new MemberKey(this._creatorMethods.get(i).mo354getAnnotated());
                    }
                } else {
                    memberKeyArr = memberKeyArr2;
                }
                MemberKey memberKey = new MemberKey(method);
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        if (!memberKey.equals(memberKeyArr[i2])) {
                            i2++;
                        } else {
                            _addMixOvers(method, this._creatorMethods.get(i2), true);
                            memberKeyArr2 = memberKeyArr;
                            break;
                        }
                    } else {
                        memberKeyArr2 = memberKeyArr;
                        break;
                    }
                }
            }
        }
    }

    protected void _addMemberMethods(Class<?> cls, TypeResolutionContext typeResolutionContext, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        Method[] _findClassMethods;
        if (cls2 != null) {
            _addMethodMixIns(cls, annotatedMethodMap, cls2, annotatedMethodMap2);
        }
        if (cls != null) {
            for (Method method : _findClassMethods(cls)) {
                if (_isIncludableMemberMethod(method)) {
                    AnnotatedMethod find = annotatedMethodMap.find(method);
                    if (find == null) {
                        AnnotatedMethod _constructMethod = _constructMethod(method, typeResolutionContext);
                        annotatedMethodMap.add(_constructMethod);
                        AnnotatedMethod remove = annotatedMethodMap2.remove(method);
                        if (remove != null) {
                            _addMixOvers(remove.mo354getAnnotated(), _constructMethod, false);
                        }
                    } else {
                        _addMixUnders(method, find);
                        if (find.getDeclaringClass().isInterface() && !method.getDeclaringClass().isInterface()) {
                            annotatedMethodMap.add(find.withMethod(method));
                        }
                    }
                }
            }
        }
    }

    protected void _addMethodMixIns(Class<?> cls, AnnotatedMethodMap annotatedMethodMap, Class<?> cls2, AnnotatedMethodMap annotatedMethodMap2) {
        for (Class<?> cls3 : ClassUtil.findRawSuperTypes(cls2, cls, true)) {
            Method[] declaredMethods = ClassUtil.getDeclaredMethods(cls3);
            for (Method method : declaredMethods) {
                if (_isIncludableMemberMethod(method)) {
                    AnnotatedMethod find = annotatedMethodMap.find(method);
                    if (find != null) {
                        _addMixUnders(method, find);
                    } else {
                        AnnotatedMethod find2 = annotatedMethodMap2.find(method);
                        if (find2 != null) {
                            _addMixUnders(method, find2);
                        } else {
                            annotatedMethodMap2.add(_constructMethod(method, this));
                        }
                    }
                }
            }
        }
    }

    protected Map<String, AnnotatedField> _findFields(JavaType javaType, TypeResolutionContext typeResolutionContext, Map<String, AnnotatedField> map) {
        Field[] declaredFields;
        Class<?> findMixInClassFor;
        JavaType superClass = javaType.getSuperClass();
        if (superClass != null) {
            Class<?> rawClass = javaType.getRawClass();
            Map<String, AnnotatedField> _findFields = _findFields(superClass, new TypeResolutionContext.Basic(this._typeFactory, superClass.getBindings()), map);
            Map<String, AnnotatedField> map2 = _findFields;
            for (Field field : ClassUtil.getDeclaredFields(rawClass)) {
                if (_isIncludableField(field)) {
                    if (map2 == null) {
                        map2 = new LinkedHashMap<>();
                    }
                    map2.put(field.getName(), _constructField(field, typeResolutionContext));
                }
            }
            if (this._mixInResolver != null && (findMixInClassFor = this._mixInResolver.findMixInClassFor(rawClass)) != null) {
                _addFieldMixIns(findMixInClassFor, rawClass, map2);
                return map2;
            }
            return map2;
        }
        return map;
    }

    protected void _addFieldMixIns(Class<?> cls, Class<?> cls2, Map<String, AnnotatedField> map) {
        Field[] declaredFields;
        AnnotatedField annotatedField;
        for (Class<?> cls3 : ClassUtil.findSuperClasses(cls, cls2, true)) {
            for (Field field : ClassUtil.getDeclaredFields(cls3)) {
                if (_isIncludableField(field) && (annotatedField = map.get(field.getName())) != null) {
                    _addOrOverrideAnnotations(annotatedField, field.getDeclaredAnnotations());
                }
            }
        }
    }

    protected AnnotatedMethod _constructMethod(Method method, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedMethod(typeResolutionContext, method, _emptyAnnotationMap(), null) : new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), null);
    }

    protected AnnotatedConstructor _constructDefaultConstructor(ClassUtil.Ctor ctor, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _emptyAnnotationMap(), NO_ANNOTATION_MAPS) : new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
    }

    protected AnnotatedConstructor _constructNonDefaultConstructor(ClassUtil.Ctor ctor, TypeResolutionContext typeResolutionContext) {
        AnnotationMap[] _collectRelevantAnnotations;
        int paramCount = ctor.getParamCount();
        if (this._annotationIntrospector == null) {
            return new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _emptyAnnotationMap(), _emptyAnnotationMaps(paramCount));
        }
        if (paramCount == 0) {
            return new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
        }
        Annotation[][] parameterAnnotations = ctor.getParameterAnnotations();
        if (paramCount != parameterAnnotations.length) {
            _collectRelevantAnnotations = null;
            Class<?> declaringClass = ctor.getDeclaringClass();
            if (declaringClass.isEnum() && paramCount == parameterAnnotations.length + 2) {
                Annotation[][] annotationArr = new Annotation[parameterAnnotations.length + 2];
                System.arraycopy(parameterAnnotations, 0, annotationArr, 2, parameterAnnotations.length);
                _collectRelevantAnnotations = _collectRelevantAnnotations(annotationArr);
                parameterAnnotations = annotationArr;
            } else if (declaringClass.isMemberClass() && paramCount == parameterAnnotations.length + 1) {
                Annotation[][] annotationArr2 = new Annotation[parameterAnnotations.length + 1];
                System.arraycopy(parameterAnnotations, 0, annotationArr2, 1, parameterAnnotations.length);
                _collectRelevantAnnotations = _collectRelevantAnnotations(annotationArr2);
                parameterAnnotations = annotationArr2;
            }
            if (_collectRelevantAnnotations == null) {
                throw new IllegalStateException("Internal error: constructor for " + ctor.getDeclaringClass().getName() + " has mismatch: " + paramCount + " parameters; " + parameterAnnotations.length + " sets of annotations");
            }
        } else {
            _collectRelevantAnnotations = _collectRelevantAnnotations(parameterAnnotations);
        }
        return new AnnotatedConstructor(typeResolutionContext, ctor.getConstructor(), _collectRelevantAnnotations(ctor.getDeclaredAnnotations()), _collectRelevantAnnotations);
    }

    protected AnnotatedMethod _constructCreatorMethod(Method method, TypeResolutionContext typeResolutionContext) {
        int length = method.getParameterTypes().length;
        if (this._annotationIntrospector == null) {
            return new AnnotatedMethod(typeResolutionContext, method, _emptyAnnotationMap(), _emptyAnnotationMaps(length));
        }
        if (length == 0) {
            return new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), NO_ANNOTATION_MAPS);
        }
        return new AnnotatedMethod(typeResolutionContext, method, _collectRelevantAnnotations(method.getDeclaredAnnotations()), _collectRelevantAnnotations(method.getParameterAnnotations()));
    }

    protected AnnotatedField _constructField(Field field, TypeResolutionContext typeResolutionContext) {
        return this._annotationIntrospector == null ? new AnnotatedField(typeResolutionContext, field, _emptyAnnotationMap()) : new AnnotatedField(typeResolutionContext, field, _collectRelevantAnnotations(field.getDeclaredAnnotations()));
    }

    private AnnotationMap _emptyAnnotationMap() {
        return new AnnotationMap();
    }

    private AnnotationMap[] _emptyAnnotationMaps(int i) {
        if (i == 0) {
            return NO_ANNOTATION_MAPS;
        }
        AnnotationMap[] annotationMapArr = new AnnotationMap[i];
        for (int i2 = 0; i2 < i; i2++) {
            annotationMapArr[i2] = _emptyAnnotationMap();
        }
        return annotationMapArr;
    }

    protected boolean _isIncludableMemberMethod(Method method) {
        return !Modifier.isStatic(method.getModifiers()) && !method.isSynthetic() && !method.isBridge() && method.getParameterTypes().length <= 2;
    }

    private boolean _isIncludableField(Field field) {
        return !field.isSynthetic() && !Modifier.isStatic(field.getModifiers());
    }

    private boolean _isIncludableConstructor(Constructor<?> constructor) {
        return !constructor.isSynthetic();
    }

    protected AnnotationMap[] _collectRelevantAnnotations(Annotation[][] annotationArr) {
        int length = annotationArr.length;
        AnnotationMap[] annotationMapArr = new AnnotationMap[length];
        for (int i = 0; i < length; i++) {
            annotationMapArr[i] = _collectRelevantAnnotations(annotationArr[i]);
        }
        return annotationMapArr;
    }

    protected AnnotationMap _collectRelevantAnnotations(Annotation[] annotationArr) {
        return _addAnnotationsIfNotPresent(new AnnotationMap(), annotationArr);
    }

    private AnnotationMap _addAnnotationsIfNotPresent(AnnotationMap annotationMap, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                if (annotationMap.addIfNotPresent(annotation) && _isAnnotationBundle(annotation)) {
                    list = _addFromBundle(annotation, list);
                }
            }
            if (list != null) {
                _addAnnotationsIfNotPresent(annotationMap, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
        return annotationMap;
    }

    private List<Annotation> _addFromBundle(Annotation annotation, List<Annotation> list) {
        Annotation[] findClassAnnotations;
        List<Annotation> list2 = list;
        for (Annotation annotation2 : ClassUtil.findClassAnnotations(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention)) {
                if (list2 == null) {
                    list2 = new ArrayList<>();
                }
                list2.add(annotation2);
            }
        }
        return list2;
    }

    private void _addAnnotationsIfNotPresent(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                if (annotatedMember.addIfNotPresent(annotation) && _isAnnotationBundle(annotation)) {
                    list = _addFromBundle(annotation, list);
                }
            }
            if (list != null) {
                _addAnnotationsIfNotPresent(annotatedMember, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
    }

    private void _addOrOverrideAnnotations(AnnotatedMember annotatedMember, Annotation[] annotationArr) {
        if (annotationArr != null) {
            List<Annotation> list = null;
            for (Annotation annotation : annotationArr) {
                if (annotatedMember.addOrOverride(annotation) && _isAnnotationBundle(annotation)) {
                    list = _addFromBundle(annotation, list);
                }
            }
            if (list != null) {
                _addOrOverrideAnnotations(annotatedMember, (Annotation[]) list.toArray(new Annotation[list.size()]));
            }
        }
    }

    protected void _addMixOvers(Constructor<?> constructor, AnnotatedConstructor annotatedConstructor, boolean z) {
        _addOrOverrideAnnotations(annotatedConstructor, constructor.getDeclaredAnnotations());
        if (z) {
            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i = 0; i < length; i++) {
                for (Annotation annotation : parameterAnnotations[i]) {
                    annotatedConstructor.addOrOverrideParam(i, annotation);
                }
            }
        }
    }

    protected void _addMixOvers(Method method, AnnotatedMethod annotatedMethod, boolean z) {
        _addOrOverrideAnnotations(annotatedMethod, method.getDeclaredAnnotations());
        if (z) {
            Annotation[][] parameterAnnotations = method.getParameterAnnotations();
            int length = parameterAnnotations.length;
            for (int i = 0; i < length; i++) {
                for (Annotation annotation : parameterAnnotations[i]) {
                    annotatedMethod.addOrOverrideParam(i, annotation);
                }
            }
        }
    }

    protected void _addMixUnders(Method method, AnnotatedMethod annotatedMethod) {
        _addAnnotationsIfNotPresent(annotatedMethod, method.getDeclaredAnnotations());
    }

    private final boolean _isAnnotationBundle(Annotation annotation) {
        return this._annotationIntrospector != null && this._annotationIntrospector.isAnnotationBundle(annotation);
    }

    protected Method[] _findClassMethods(Class<?> cls) {
        try {
            return ClassUtil.getDeclaredMethods(cls);
        } catch (NoClassDefFoundError e) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                throw e;
            }
            try {
                return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
            } catch (ClassNotFoundException e2) {
                throw e;
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public String toString() {
        return "[AnnotedClass " + this._class.getName() + "]";
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public int hashCode() {
        return this._class.getName().hashCode();
    }

    @Override // com.fasterxml.jackson.databind.introspect.Annotated
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return ((AnnotatedClass) obj)._class == this._class;
    }
}
