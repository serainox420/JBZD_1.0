package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.LinkedNode;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Collection;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class DeserializationConfig extends MapperConfigBase<DeserializationFeature, DeserializationConfig> implements Serializable {
    private static final long serialVersionUID = 1;
    protected final int _deserFeatures;
    protected final int _formatReadFeatures;
    protected final int _formatReadFeaturesToChange;
    protected final JsonNodeFactory _nodeFactory;
    protected final int _parserFeatures;
    protected final int _parserFeaturesToChange;
    protected final LinkedNode<DeserializationProblemHandler> _problemHandlers;

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ DeserializationConfig mo242with(VisibilityChecker visibilityChecker) {
        return mo242with((VisibilityChecker<?>) visibilityChecker);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ DeserializationConfig mo244with(TypeResolverBuilder typeResolverBuilder) {
        return mo244with((TypeResolverBuilder<?>) typeResolverBuilder);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withView  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ DeserializationConfig mo252withView(Class cls) {
        return mo252withView((Class<?>) cls);
    }

    public DeserializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, configOverrides);
        this._deserFeatures = collectFeatureDefaults(DeserializationFeature.class);
        this._nodeFactory = JsonNodeFactory.instance;
        this._problemHandlers = null;
        this._parserFeatures = 0;
        this._parserFeaturesToChange = 0;
        this._formatReadFeatures = 0;
        this._formatReadFeaturesToChange = 0;
    }

    @Deprecated
    public DeserializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup) {
        this(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, null);
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        super(deserializationConfig, i);
        this._deserFeatures = i2;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._parserFeatures = i3;
        this._parserFeaturesToChange = i4;
        this._formatReadFeatures = i5;
        this._formatReadFeaturesToChange = i6;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, SubtypeResolver subtypeResolver) {
        super(deserializationConfig, subtypeResolver);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, BaseSettings baseSettings) {
        super(deserializationConfig, baseSettings);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, JsonNodeFactory jsonNodeFactory) {
        super(deserializationConfig);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = jsonNodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, LinkedNode<DeserializationProblemHandler> linkedNode) {
        super(deserializationConfig);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = linkedNode;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, PropertyName propertyName) {
        super(deserializationConfig, propertyName);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    private DeserializationConfig(DeserializationConfig deserializationConfig, Class<?> cls) {
        super(deserializationConfig, cls);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    protected DeserializationConfig(DeserializationConfig deserializationConfig, ContextAttributes contextAttributes) {
        super(deserializationConfig, contextAttributes);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationConfig(DeserializationConfig deserializationConfig, SimpleMixInResolver simpleMixInResolver) {
        super(deserializationConfig, simpleMixInResolver);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DeserializationConfig(DeserializationConfig deserializationConfig, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(deserializationConfig, simpleMixInResolver, rootNameLookup, configOverrides);
        this._deserFeatures = deserializationConfig._deserFeatures;
        this._problemHandlers = deserializationConfig._problemHandlers;
        this._nodeFactory = deserializationConfig._nodeFactory;
        this._parserFeatures = deserializationConfig._parserFeatures;
        this._parserFeaturesToChange = deserializationConfig._parserFeaturesToChange;
        this._formatReadFeatures = deserializationConfig._formatReadFeatures;
        this._formatReadFeaturesToChange = deserializationConfig._formatReadFeaturesToChange;
    }

    protected BaseSettings getBaseSettings() {
        return this._base;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: with */
    public DeserializationConfig mo235with(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i |= mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : new DeserializationConfig(this, i, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: without */
    public DeserializationConfig mo254without(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i &= mapperFeature.getMask() ^ (-1);
        }
        return i == this._mapperFeatures ? this : new DeserializationConfig(this, i, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: with */
    public DeserializationConfig mo234with(MapperFeature mapperFeature, boolean z) {
        int mask;
        if (z) {
            mask = this._mapperFeatures | mapperFeature.getMask();
        } else {
            mask = this._mapperFeatures & (mapperFeature.getMask() ^ (-1));
        }
        return mask == this._mapperFeatures ? this : new DeserializationConfig(this, mask, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo241with(ClassIntrospector classIntrospector) {
        return _withBase(this._base.withClassIntrospector(classIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo237with(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo242with(VisibilityChecker<?> visibilityChecker) {
        return _withBase(this._base.withVisibilityChecker(visibilityChecker));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withVisibility */
    public DeserializationConfig mo253withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
        return _withBase(this._base.withVisibility(propertyAccessor, visibility));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo244with(TypeResolverBuilder<?> typeResolverBuilder) {
        return _withBase(this._base.withTypeResolverBuilder(typeResolverBuilder));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo243with(SubtypeResolver subtypeResolver) {
        return this._subtypeResolver == subtypeResolver ? this : new DeserializationConfig(this, subtypeResolver);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo238with(PropertyNamingStrategy propertyNamingStrategy) {
        return _withBase(this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withRootName */
    public DeserializationConfig mo251withRootName(PropertyName propertyName) {
        if (propertyName == null) {
            if (this._rootName == null) {
                return this;
            }
        } else if (propertyName.equals(this._rootName)) {
            return this;
        }
        return new DeserializationConfig(this, propertyName);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo245with(TypeFactory typeFactory) {
        return _withBase(this._base.withTypeFactory(typeFactory));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo246with(DateFormat dateFormat) {
        return _withBase(this._base.withDateFormat(dateFormat));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo240with(HandlerInstantiator handlerInstantiator) {
        return _withBase(this._base.withHandlerInstantiator(handlerInstantiator));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withInsertedAnnotationIntrospector */
    public DeserializationConfig mo250withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withInsertedAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withAppendedAnnotationIntrospector */
    public DeserializationConfig mo249withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAppendedAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withView */
    public DeserializationConfig mo252withView(Class<?> cls) {
        return this._view == cls ? this : new DeserializationConfig(this, cls);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo247with(Locale locale) {
        return _withBase(this._base.with(locale));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo248with(TimeZone timeZone) {
        return _withBase(this._base.with(timeZone));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo236with(Base64Variant base64Variant) {
        return _withBase(this._base.with(base64Variant));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public DeserializationConfig mo239with(ContextAttributes contextAttributes) {
        return contextAttributes == this._attributes ? this : new DeserializationConfig(this, contextAttributes);
    }

    private final DeserializationConfig _withBase(BaseSettings baseSettings) {
        return this._base == baseSettings ? this : new DeserializationConfig(this, baseSettings);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature) {
        int mask = this._deserFeatures | deserializationFeature.getMask();
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int mask = this._deserFeatures | deserializationFeature.getMask();
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            mask |= deserializationFeature2.getMask();
        }
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig withFeatures(DeserializationFeature... deserializationFeatureArr) {
        int i = this._deserFeatures;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            i |= deserializationFeature.getMask();
        }
        return i == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature) {
        int mask = this._deserFeatures & (deserializationFeature.getMask() ^ (-1));
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        int mask = this._deserFeatures & (deserializationFeature.getMask() ^ (-1));
        for (DeserializationFeature deserializationFeature2 : deserializationFeatureArr) {
            mask &= deserializationFeature2.getMask() ^ (-1);
        }
        return mask == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, mask, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        int i = this._deserFeatures;
        for (DeserializationFeature deserializationFeature : deserializationFeatureArr) {
            i &= deserializationFeature.getMask() ^ (-1);
        }
        return i == this._deserFeatures ? this : new DeserializationConfig(this, this._mapperFeatures, i, this._parserFeatures, this._parserFeaturesToChange, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig with(JsonParser.Feature feature) {
        int mask = this._parserFeatures | feature.getMask();
        int mask2 = this._parserFeaturesToChange | feature.getMask();
        return (this._parserFeatures == mask && this._parserFeaturesToChange == mask2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, mask, mask2, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig withFeatures(JsonParser.Feature... featureArr) {
        int i = this._parserFeatures;
        int i2 = this._parserFeaturesToChange;
        for (JsonParser.Feature feature : featureArr) {
            int mask = feature.getMask();
            i |= mask;
            i2 |= mask;
        }
        return (this._parserFeatures == i && this._parserFeaturesToChange == i2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, i, i2, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig without(JsonParser.Feature feature) {
        int mask = this._parserFeatures & (feature.getMask() ^ (-1));
        int mask2 = this._parserFeaturesToChange | feature.getMask();
        return (this._parserFeatures == mask && this._parserFeaturesToChange == mask2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, mask, mask2, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig withoutFeatures(JsonParser.Feature... featureArr) {
        int i = this._parserFeatures;
        int i2 = this._parserFeaturesToChange;
        for (JsonParser.Feature feature : featureArr) {
            int mask = feature.getMask();
            i &= mask ^ (-1);
            i2 |= mask;
        }
        return (this._parserFeatures == i && this._parserFeaturesToChange == i2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, i, i2, this._formatReadFeatures, this._formatReadFeaturesToChange);
    }

    public DeserializationConfig with(FormatFeature formatFeature) {
        int mask = this._formatReadFeatures | formatFeature.getMask();
        int mask2 = this._formatReadFeaturesToChange | formatFeature.getMask();
        return (this._formatReadFeatures == mask && this._formatReadFeaturesToChange == mask2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, mask, mask2);
    }

    public DeserializationConfig withFeatures(FormatFeature... formatFeatureArr) {
        int i = this._formatReadFeatures;
        int i2 = this._formatReadFeaturesToChange;
        for (FormatFeature formatFeature : formatFeatureArr) {
            int mask = formatFeature.getMask();
            i |= mask;
            i2 |= mask;
        }
        return (this._formatReadFeatures == i && this._formatReadFeaturesToChange == i2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, i, i2);
    }

    public DeserializationConfig without(FormatFeature formatFeature) {
        int mask = this._formatReadFeatures & (formatFeature.getMask() ^ (-1));
        int mask2 = this._formatReadFeaturesToChange | formatFeature.getMask();
        return (this._formatReadFeatures == mask && this._formatReadFeaturesToChange == mask2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, mask, mask2);
    }

    public DeserializationConfig withoutFeatures(FormatFeature... formatFeatureArr) {
        int i = this._formatReadFeatures;
        int i2 = this._formatReadFeaturesToChange;
        for (FormatFeature formatFeature : formatFeatureArr) {
            int mask = formatFeature.getMask();
            i &= mask ^ (-1);
            i2 |= mask;
        }
        return (this._formatReadFeatures == i && this._formatReadFeaturesToChange == i2) ? this : new DeserializationConfig(this, this._mapperFeatures, this._deserFeatures, this._parserFeatures, this._parserFeaturesToChange, i, i2);
    }

    public DeserializationConfig with(JsonNodeFactory jsonNodeFactory) {
        return this._nodeFactory == jsonNodeFactory ? this : new DeserializationConfig(this, jsonNodeFactory);
    }

    public DeserializationConfig withHandler(DeserializationProblemHandler deserializationProblemHandler) {
        return LinkedNode.contains(this._problemHandlers, deserializationProblemHandler) ? this : new DeserializationConfig(this, new LinkedNode(deserializationProblemHandler, this._problemHandlers));
    }

    public DeserializationConfig withNoProblemHandlers() {
        return this._problemHandlers == null ? this : new DeserializationConfig(this, (LinkedNode<DeserializationProblemHandler>) null);
    }

    public void initialize(JsonParser jsonParser) {
        if (this._parserFeaturesToChange != 0) {
            jsonParser.overrideStdFeatures(this._parserFeatures, this._parserFeaturesToChange);
        }
        if (this._formatReadFeaturesToChange != 0) {
            jsonParser.overrideFormatFeatures(this._formatReadFeatures, this._formatReadFeaturesToChange);
        }
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public AnnotationIntrospector getAnnotationIntrospector() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS) ? super.getAnnotationIntrospector() : NopAnnotationIntrospector.instance;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().mo336forClassAnnotations(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectDirectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().mo340forDirectClassAnnotations(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion() {
        return EMPTY_INCLUDE;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        JsonInclude.Value include;
        ConfigOverride findConfigOverride = findConfigOverride(cls);
        return (findConfigOverride == null || (include = findConfigOverride.getInclude()) == null) ? EMPTY_INCLUDE : include;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls, JsonInclude.Value value) {
        JsonInclude.Value include;
        ConfigOverride findConfigOverride = findConfigOverride(cls);
        return (findConfigOverride == null || (include = findConfigOverride.getInclude()) == null) ? value : include;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public boolean useRootWrapping() {
        if (this._rootName != null) {
            return !this._rootName.isEmpty();
        }
        return isEnabled(DeserializationFeature.UNWRAP_ROOT_VALUE);
    }

    public final boolean isEnabled(DeserializationFeature deserializationFeature) {
        return (this._deserFeatures & deserializationFeature.getMask()) != 0;
    }

    public final boolean isEnabled(JsonParser.Feature feature, JsonFactory jsonFactory) {
        if ((feature.getMask() & this._parserFeaturesToChange) != 0) {
            return (this._parserFeatures & feature.getMask()) != 0;
        }
        return jsonFactory.isEnabled(feature);
    }

    public final boolean hasDeserializationFeatures(int i) {
        return (this._deserFeatures & i) == i;
    }

    public final boolean hasSomeOfFeatures(int i) {
        return (this._deserFeatures & i) != 0;
    }

    public final int getDeserializationFeatures() {
        return this._deserFeatures;
    }

    public LinkedNode<DeserializationProblemHandler> getProblemHandlers() {
        return this._problemHandlers;
    }

    public final JsonNodeFactory getNodeFactory() {
        return this._nodeFactory;
    }

    public <T extends BeanDescription> T introspect(JavaType javaType) {
        return (T) getClassIntrospector().mo338forDeserialization(this, javaType, this);
    }

    public <T extends BeanDescription> T introspectForCreation(JavaType javaType) {
        return (T) getClassIntrospector().mo337forCreation(this, javaType, this);
    }

    public <T extends BeanDescription> T introspectForBuilder(JavaType javaType) {
        return (T) getClassIntrospector().mo339forDeserializationWithBuilder(this, javaType, this);
    }

    public TypeDeserializer findTypeDeserializer(JavaType javaType) throws JsonMappingException {
        Collection<NamedType> collection = null;
        AnnotatedClass classInfo = introspectClassAnnotations(javaType.getRawClass()).getClassInfo();
        TypeResolverBuilder<?> findTypeResolver = getAnnotationIntrospector().findTypeResolver(this, classInfo, javaType);
        if (findTypeResolver == null) {
            findTypeResolver = getDefaultTyper(javaType);
            if (findTypeResolver == null) {
                return null;
            }
        } else {
            collection = getSubtypeResolver().collectAndResolveSubtypesByTypeId(this, classInfo);
        }
        return findTypeResolver.buildTypeDeserializer(this, javaType, collection);
    }
}
