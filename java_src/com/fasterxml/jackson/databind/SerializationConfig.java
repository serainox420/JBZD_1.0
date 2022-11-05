package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.Instantiatable;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.ConfigOverride;
import com.fasterxml.jackson.databind.cfg.ConfigOverrides;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class SerializationConfig extends MapperConfigBase<SerializationFeature, SerializationConfig> implements Serializable {
    private static final long serialVersionUID = 1;
    protected final PrettyPrinter _defaultPrettyPrinter;
    protected final FilterProvider _filterProvider;
    protected final int _formatWriteFeatures;
    protected final int _formatWriteFeaturesToChange;
    protected final int _generatorFeatures;
    protected final int _generatorFeaturesToChange;
    protected final int _serFeatures;
    protected final JsonInclude.Value _serializationInclusion;
    protected static final PrettyPrinter DEFAULT_PRETTY_PRINTER = new DefaultPrettyPrinter();
    protected static final JsonInclude.Value DEFAULT_INCLUSION = JsonInclude.Value.empty();

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ SerializationConfig mo242with(VisibilityChecker visibilityChecker) {
        return mo242with((VisibilityChecker<?>) visibilityChecker);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ SerializationConfig mo244with(TypeResolverBuilder typeResolverBuilder) {
        return mo244with((TypeResolverBuilder<?>) typeResolverBuilder);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withView  reason: collision with other method in class */
    public /* bridge */ /* synthetic */ SerializationConfig mo252withView(Class cls) {
        return mo252withView((Class<?>) cls);
    }

    public SerializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, configOverrides);
        this._serFeatures = collectFeatureDefaults(SerializationFeature.class);
        this._filterProvider = null;
        this._defaultPrettyPrinter = DEFAULT_PRETTY_PRINTER;
        this._generatorFeatures = 0;
        this._generatorFeaturesToChange = 0;
        this._formatWriteFeatures = 0;
        this._formatWriteFeaturesToChange = 0;
        this._serializationInclusion = DEFAULT_INCLUSION;
    }

    @Deprecated
    public SerializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup) {
        this(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup, null);
    }

    private SerializationConfig(SerializationConfig serializationConfig, SubtypeResolver subtypeResolver) {
        super(serializationConfig, subtypeResolver);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    private SerializationConfig(SerializationConfig serializationConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        super(serializationConfig, i);
        this._serFeatures = i2;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = i3;
        this._generatorFeaturesToChange = i4;
        this._formatWriteFeatures = i5;
        this._formatWriteFeaturesToChange = i6;
    }

    private SerializationConfig(SerializationConfig serializationConfig, BaseSettings baseSettings) {
        super(serializationConfig, baseSettings);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    private SerializationConfig(SerializationConfig serializationConfig, FilterProvider filterProvider) {
        super(serializationConfig);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    private SerializationConfig(SerializationConfig serializationConfig, Class<?> cls) {
        super(serializationConfig, cls);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    private SerializationConfig(SerializationConfig serializationConfig, JsonInclude.Value value) {
        super(serializationConfig);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = value;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    private SerializationConfig(SerializationConfig serializationConfig, PropertyName propertyName) {
        super(serializationConfig, propertyName);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    protected SerializationConfig(SerializationConfig serializationConfig, ContextAttributes contextAttributes) {
        super(serializationConfig, contextAttributes);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SerializationConfig(SerializationConfig serializationConfig, SimpleMixInResolver simpleMixInResolver) {
        super(serializationConfig, simpleMixInResolver);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    protected SerializationConfig(SerializationConfig serializationConfig, PrettyPrinter prettyPrinter) {
        super(serializationConfig);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = prettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SerializationConfig(SerializationConfig serializationConfig, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup, ConfigOverrides configOverrides) {
        super(serializationConfig, simpleMixInResolver, rootNameLookup, configOverrides);
        this._serFeatures = serializationConfig._serFeatures;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = serializationConfig._generatorFeatures;
        this._generatorFeaturesToChange = serializationConfig._generatorFeaturesToChange;
        this._formatWriteFeatures = serializationConfig._formatWriteFeatures;
        this._formatWriteFeaturesToChange = serializationConfig._formatWriteFeaturesToChange;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: with */
    public SerializationConfig mo235with(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i |= mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : new SerializationConfig(this, i, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: without */
    public SerializationConfig mo254without(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i &= mapperFeature.getMask() ^ (-1);
        }
        return i == this._mapperFeatures ? this : new SerializationConfig(this, i, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    /* renamed from: with */
    public SerializationConfig mo234with(MapperFeature mapperFeature, boolean z) {
        int mask;
        if (z) {
            mask = this._mapperFeatures | mapperFeature.getMask();
        } else {
            mask = this._mapperFeatures & (mapperFeature.getMask() ^ (-1));
        }
        return mask == this._mapperFeatures ? this : new SerializationConfig(this, mask, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo237with(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withAppendedAnnotationIntrospector */
    public SerializationConfig mo249withAppendedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withAppendedAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withInsertedAnnotationIntrospector */
    public SerializationConfig mo250withInsertedAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return _withBase(this._base.withInsertedAnnotationIntrospector(annotationIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo241with(ClassIntrospector classIntrospector) {
        return _withBase(this._base.withClassIntrospector(classIntrospector));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo246with(DateFormat dateFormat) {
        SerializationConfig serializationConfig = new SerializationConfig(this, this._base.withDateFormat(dateFormat));
        if (dateFormat == null) {
            return serializationConfig.with(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        return serializationConfig.without(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo240with(HandlerInstantiator handlerInstantiator) {
        return _withBase(this._base.withHandlerInstantiator(handlerInstantiator));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo238with(PropertyNamingStrategy propertyNamingStrategy) {
        return _withBase(this._base.withPropertyNamingStrategy(propertyNamingStrategy));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withRootName */
    public SerializationConfig mo251withRootName(PropertyName propertyName) {
        if (propertyName == null) {
            if (this._rootName == null) {
                return this;
            }
        } else if (propertyName.equals(this._rootName)) {
            return this;
        }
        return new SerializationConfig(this, propertyName);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo243with(SubtypeResolver subtypeResolver) {
        return subtypeResolver == this._subtypeResolver ? this : new SerializationConfig(this, subtypeResolver);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo245with(TypeFactory typeFactory) {
        return _withBase(this._base.withTypeFactory(typeFactory));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo244with(TypeResolverBuilder<?> typeResolverBuilder) {
        return _withBase(this._base.withTypeResolverBuilder(typeResolverBuilder));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withView */
    public SerializationConfig mo252withView(Class<?> cls) {
        return this._view == cls ? this : new SerializationConfig(this, cls);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo242with(VisibilityChecker<?> visibilityChecker) {
        return _withBase(this._base.withVisibilityChecker(visibilityChecker));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: withVisibility */
    public SerializationConfig mo253withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
        return _withBase(this._base.withVisibility(propertyAccessor, visibility));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo247with(Locale locale) {
        return _withBase(this._base.with(locale));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo248with(TimeZone timeZone) {
        return _withBase(this._base.with(timeZone));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo236with(Base64Variant base64Variant) {
        return _withBase(this._base.with(base64Variant));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.databind.cfg.MapperConfigBase
    /* renamed from: with */
    public SerializationConfig mo239with(ContextAttributes contextAttributes) {
        return contextAttributes == this._attributes ? this : new SerializationConfig(this, contextAttributes);
    }

    private final SerializationConfig _withBase(BaseSettings baseSettings) {
        return this._base == baseSettings ? this : new SerializationConfig(this, baseSettings);
    }

    public SerializationConfig with(SerializationFeature serializationFeature) {
        int mask = this._serFeatures | serializationFeature.getMask();
        return mask == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, mask, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig with(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        int mask = this._serFeatures | serializationFeature.getMask();
        for (SerializationFeature serializationFeature2 : serializationFeatureArr) {
            mask |= serializationFeature2.getMask();
        }
        return mask == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, mask, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig withFeatures(SerializationFeature... serializationFeatureArr) {
        int i = this._serFeatures;
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            i |= serializationFeature.getMask();
        }
        return i == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, i, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig without(SerializationFeature serializationFeature) {
        int mask = this._serFeatures & (serializationFeature.getMask() ^ (-1));
        return mask == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, mask, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig without(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        int mask = this._serFeatures & (serializationFeature.getMask() ^ (-1));
        for (SerializationFeature serializationFeature2 : serializationFeatureArr) {
            mask &= serializationFeature2.getMask() ^ (-1);
        }
        return mask == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, mask, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig withoutFeatures(SerializationFeature... serializationFeatureArr) {
        int i = this._serFeatures;
        for (SerializationFeature serializationFeature : serializationFeatureArr) {
            i &= serializationFeature.getMask() ^ (-1);
        }
        return i == this._serFeatures ? this : new SerializationConfig(this, this._mapperFeatures, i, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig with(JsonGenerator.Feature feature) {
        int mask = this._generatorFeatures | feature.getMask();
        int mask2 = this._generatorFeaturesToChange | feature.getMask();
        return (this._generatorFeatures == mask && this._generatorFeaturesToChange == mask2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, mask, mask2, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig withFeatures(JsonGenerator.Feature... featureArr) {
        int i = this._generatorFeatures;
        int i2 = this._generatorFeaturesToChange;
        for (JsonGenerator.Feature feature : featureArr) {
            int mask = feature.getMask();
            i |= mask;
            i2 |= mask;
        }
        return (this._generatorFeatures == i && this._generatorFeaturesToChange == i2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, i, i2, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig without(JsonGenerator.Feature feature) {
        int mask = this._generatorFeatures & (feature.getMask() ^ (-1));
        int mask2 = this._generatorFeaturesToChange | feature.getMask();
        return (this._generatorFeatures == mask && this._generatorFeaturesToChange == mask2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, mask, mask2, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig withoutFeatures(JsonGenerator.Feature... featureArr) {
        int i = this._generatorFeatures;
        int i2 = this._generatorFeaturesToChange;
        for (JsonGenerator.Feature feature : featureArr) {
            int mask = feature.getMask();
            i &= mask ^ (-1);
            i2 |= mask;
        }
        return (this._generatorFeatures == i && this._generatorFeaturesToChange == i2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, i, i2, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig with(FormatFeature formatFeature) {
        int mask = this._formatWriteFeatures | formatFeature.getMask();
        int mask2 = this._formatWriteFeaturesToChange | formatFeature.getMask();
        return (this._formatWriteFeatures == mask && this._formatWriteFeaturesToChange == mask2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, mask, mask2);
    }

    public SerializationConfig withFeatures(FormatFeature... formatFeatureArr) {
        int i = this._formatWriteFeatures;
        int i2 = this._formatWriteFeaturesToChange;
        for (FormatFeature formatFeature : formatFeatureArr) {
            int mask = formatFeature.getMask();
            i |= mask;
            i2 |= mask;
        }
        return (this._formatWriteFeatures == i && this._formatWriteFeaturesToChange == i2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, i, i2);
    }

    public SerializationConfig without(FormatFeature formatFeature) {
        int mask = this._formatWriteFeatures & (formatFeature.getMask() ^ (-1));
        int mask2 = this._formatWriteFeaturesToChange | formatFeature.getMask();
        return (this._formatWriteFeatures == mask && this._formatWriteFeaturesToChange == mask2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, mask, mask2);
    }

    public SerializationConfig withoutFeatures(FormatFeature... formatFeatureArr) {
        int i = this._formatWriteFeatures;
        int i2 = this._formatWriteFeaturesToChange;
        for (FormatFeature formatFeature : formatFeatureArr) {
            int mask = formatFeature.getMask();
            i &= mask ^ (-1);
            i2 |= mask;
        }
        return (this._formatWriteFeatures == i && this._formatWriteFeaturesToChange == i2) ? this : new SerializationConfig(this, this._mapperFeatures, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, i, i2);
    }

    public SerializationConfig withFilters(FilterProvider filterProvider) {
        return filterProvider == this._filterProvider ? this : new SerializationConfig(this, filterProvider);
    }

    @Deprecated
    public SerializationConfig withSerializationInclusion(JsonInclude.Include include) {
        return withPropertyInclusion(DEFAULT_INCLUSION.withValueInclusion(include));
    }

    public SerializationConfig withPropertyInclusion(JsonInclude.Value value) {
        return this._serializationInclusion.equals(value) ? this : new SerializationConfig(this, value);
    }

    public SerializationConfig withDefaultPrettyPrinter(PrettyPrinter prettyPrinter) {
        return this._defaultPrettyPrinter == prettyPrinter ? this : new SerializationConfig(this, prettyPrinter);
    }

    public PrettyPrinter constructDefaultPrettyPrinter() {
        PrettyPrinter prettyPrinter = this._defaultPrettyPrinter;
        if (prettyPrinter instanceof Instantiatable) {
            return (PrettyPrinter) ((Instantiatable) prettyPrinter).mo192createInstance();
        }
        return prettyPrinter;
    }

    public void initialize(JsonGenerator jsonGenerator) {
        PrettyPrinter constructDefaultPrettyPrinter;
        if (SerializationFeature.INDENT_OUTPUT.enabledIn(this._serFeatures) && jsonGenerator.getPrettyPrinter() == null && (constructDefaultPrettyPrinter = constructDefaultPrettyPrinter()) != null) {
            jsonGenerator.setPrettyPrinter(constructDefaultPrettyPrinter);
        }
        boolean enabledIn = SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN.enabledIn(this._serFeatures);
        int i = this._generatorFeaturesToChange;
        if (i != 0 || enabledIn) {
            int i2 = this._generatorFeatures;
            if (enabledIn) {
                int mask = JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN.getMask();
                i2 |= mask;
                i |= mask;
            }
            jsonGenerator.overrideStdFeatures(i2, i);
        }
        if (this._formatWriteFeaturesToChange != 0) {
            jsonGenerator.overrideFormatFeatures(this._formatWriteFeatures, this._formatWriteFeaturesToChange);
        }
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public AnnotationIntrospector getAnnotationIntrospector() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS) ? super.getAnnotationIntrospector() : AnnotationIntrospector.nopInstance();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().mo336forClassAnnotations(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectDirectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().mo340forDirectClassAnnotations(this, javaType, this);
    }

    @Deprecated
    public JsonInclude.Include getSerializationInclusion() {
        JsonInclude.Include valueInclusion = this._serializationInclusion.getValueInclusion();
        return valueInclusion == JsonInclude.Include.USE_DEFAULTS ? JsonInclude.Include.ALWAYS : valueInclusion;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion() {
        return this._serializationInclusion;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        JsonInclude.Value include;
        ConfigOverride findConfigOverride = findConfigOverride(cls);
        return (findConfigOverride == null || (include = findConfigOverride.getInclude()) == null) ? this._serializationInclusion : include;
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
        return isEnabled(SerializationFeature.WRAP_ROOT_VALUE);
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return (this._serFeatures & serializationFeature.getMask()) != 0;
    }

    public final boolean isEnabled(JsonGenerator.Feature feature, JsonFactory jsonFactory) {
        if ((feature.getMask() & this._generatorFeaturesToChange) != 0) {
            return (this._generatorFeatures & feature.getMask()) != 0;
        }
        return jsonFactory.isEnabled(feature);
    }

    public final boolean hasSerializationFeatures(int i) {
        return (this._serFeatures & i) == i;
    }

    public final int getSerializationFeatures() {
        return this._serFeatures;
    }

    public FilterProvider getFilterProvider() {
        return this._filterProvider;
    }

    public PrettyPrinter getDefaultPrettyPrinter() {
        return this._defaultPrettyPrinter;
    }

    public <T extends BeanDescription> T introspect(JavaType javaType) {
        return (T) getClassIntrospector().mo341forSerialization(this, javaType, this);
    }

    public String toString() {
        return "[SerializationConfig: flags=0x" + Integer.toHexString(this._serFeatures) + "]";
    }
}
