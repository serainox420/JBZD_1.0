package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.ConfigFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes.dex */
public abstract class MapperConfigBase<CFG extends ConfigFeature, T extends MapperConfigBase<CFG, T>> extends MapperConfig<T> implements Serializable {
    private static final int DEFAULT_MAPPER_FEATURES = collectFeatureDefaults(MapperFeature.class);
    protected final ContextAttributes _attributes;
    protected final ConfigOverrides _configOverrides;
    protected final SimpleMixInResolver _mixIns;
    protected final PropertyName _rootName;
    protected final RootNameLookup _rootNames;
    protected final SubtypeResolver _subtypeResolver;
    protected final Class<?> _view;

    /* renamed from: with */
    public abstract T mo236with(Base64Variant base64Variant);

    /* renamed from: with */
    public abstract T mo237with(AnnotationIntrospector annotationIntrospector);

    /* renamed from: with */
    public abstract T mo238with(PropertyNamingStrategy propertyNamingStrategy);

    /* renamed from: with */
    public abstract T mo239with(ContextAttributes contextAttributes);

    /* renamed from: with */
    public abstract T mo240with(HandlerInstantiator handlerInstantiator);

    /* renamed from: with */
    public abstract T mo241with(ClassIntrospector classIntrospector);

    /* renamed from: with */
    public abstract T mo242with(VisibilityChecker<?> visibilityChecker);

    /* renamed from: with */
    public abstract T mo243with(SubtypeResolver subtypeResolver);

    /* renamed from: with */
    public abstract T mo244with(TypeResolverBuilder<?> typeResolverBuilder);

    /* renamed from: with */
    public abstract T mo245with(TypeFactory typeFactory);

    /* renamed from: with */
    public abstract T mo246with(DateFormat dateFormat);

    /* renamed from: with */
    public abstract T mo247with(Locale locale);

    /* renamed from: with */
    public abstract T mo248with(TimeZone timeZone);

    /* renamed from: withAppendedAnnotationIntrospector */
    public abstract T mo249withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector);

    /* renamed from: withInsertedAnnotationIntrospector */
    public abstract T mo250withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector);

    /* renamed from: withRootName */
    public abstract T mo251withRootName(PropertyName propertyName);

    /* renamed from: withView */
    public abstract T mo252withView(Class<?> cls);

    /* renamed from: withVisibility */
    public abstract T mo253withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility);

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, DEFAULT_MAPPER_FEATURES);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = rootNameLookup;
        this._rootName = null;
        this._view = null;
        this._attributes = ContextAttributes.getEmpty();
        this._configOverrides = configOverrides;
    }

    @Deprecated
    protected MapperConfigBase(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup) {
        this(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, BaseSettings baseSettings) {
        super(mapperConfigBase, baseSettings);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, int i) {
        super(mapperConfigBase, i);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SubtypeResolver subtypeResolver) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, PropertyName propertyName) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = propertyName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, Class<?> cls) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = cls;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SimpleMixInResolver simpleMixInResolver) {
        super(mapperConfigBase);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, ContextAttributes contextAttributes) {
        super(mapperConfigBase);
        this._mixIns = mapperConfigBase._mixIns;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = mapperConfigBase._rootNames;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = contextAttributes;
        this._configOverrides = mapperConfigBase._configOverrides;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfigBase(MapperConfigBase<CFG, T> mapperConfigBase, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(mapperConfigBase);
        this._mixIns = simpleMixInResolver;
        this._subtypeResolver = mapperConfigBase._subtypeResolver;
        this._rootNames = rootNameLookup;
        this._rootName = mapperConfigBase._rootName;
        this._view = mapperConfigBase._view;
        this._attributes = mapperConfigBase._attributes;
        this._configOverrides = configOverrides;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.fasterxml.jackson.databind.introspect.VisibilityChecker, com.fasterxml.jackson.databind.introspect.VisibilityChecker<?>] */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        VisibilityChecker<?> defaultVisibilityChecker = super.getDefaultVisibilityChecker();
        VisibilityChecker<?> visibilityChecker = defaultVisibilityChecker;
        if (!isEnabled(MapperFeature.AUTO_DETECT_SETTERS)) {
            visibilityChecker = defaultVisibilityChecker.mo361withSetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        VisibilityChecker<?> visibilityChecker2 = visibilityChecker;
        if (!isEnabled(MapperFeature.AUTO_DETECT_CREATORS)) {
            visibilityChecker2 = visibilityChecker.mo357withCreatorVisibility(JsonAutoDetect.Visibility.NONE);
        }
        VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
        if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS)) {
            visibilityChecker3 = visibilityChecker2.mo359withGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        VisibilityChecker<?> visibilityChecker4 = visibilityChecker3;
        if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS)) {
            visibilityChecker4 = visibilityChecker3.mo360withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
            return visibilityChecker4.mo358withFieldVisibility(JsonAutoDetect.Visibility.NONE);
        }
        return visibilityChecker4;
    }

    public T withRootName(String str) {
        return str == null ? mo251withRootName((PropertyName) null) : mo251withRootName(PropertyName.construct(str));
    }

    public T withAttributes(Map<?, ?> map) {
        return mo239with(getAttributes().withSharedAttributes(map));
    }

    public T withAttribute(Object obj, Object obj2) {
        return mo239with(getAttributes().withSharedAttribute(obj, obj2));
    }

    public T withoutAttribute(Object obj) {
        return mo239with(getAttributes().withoutSharedAttribute(obj));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final SubtypeResolver getSubtypeResolver() {
        return this._subtypeResolver;
    }

    @Deprecated
    public final String getRootName() {
        if (this._rootName == null) {
            return null;
        }
        return this._rootName.getSimpleName();
    }

    public final PropertyName getFullRootName() {
        return this._rootName;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final Class<?> getActiveView() {
        return this._view;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final ContextAttributes getAttributes() {
        return this._attributes;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final ConfigOverride findConfigOverride(Class<?> cls) {
        return this._configOverrides.findOverride(cls);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        JsonFormat.Value format;
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        return (findOverride == null || (format = findOverride.getFormat()) == null) ? EMPTY_FORMAT : format;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls) {
        JsonIgnoreProperties.Value ignorals;
        ConfigOverride findOverride = this._configOverrides.findOverride(cls);
        if (findOverride == null || (ignorals = findOverride.getIgnorals()) == null) {
            return null;
        }
        return ignorals;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public final JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls, AnnotatedClass annotatedClass) {
        AnnotationIntrospector annotationIntrospector = getAnnotationIntrospector();
        return JsonIgnoreProperties.Value.merge(annotationIntrospector == null ? null : annotationIntrospector.findPropertyIgnorals(annotatedClass), getDefaultPropertyIgnorals(cls));
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public PropertyName findRootName(JavaType javaType) {
        return this._rootName != null ? this._rootName : this._rootNames.findRootName(javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public PropertyName findRootName(Class<?> cls) {
        return this._rootName != null ? this._rootName : this._rootNames.findRootName(cls, this);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    public final Class<?> findMixInClassFor(Class<?> cls) {
        return this._mixIns.findMixInClassFor(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.ClassIntrospector.MixInResolver
    /* renamed from: copy */
    public ClassIntrospector.MixInResolver mo353copy() {
        throw new UnsupportedOperationException();
    }

    public final int mixInCount() {
        return this._mixIns.localSize();
    }
}
