package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public abstract class MapperConfig<T extends MapperConfig<T>> implements ClassIntrospector.MixInResolver, Serializable {
    private static final long serialVersionUID = 1;
    protected final BaseSettings _base;
    protected final int _mapperFeatures;
    protected static final JsonInclude.Value EMPTY_INCLUDE = JsonInclude.Value.empty();
    protected static final JsonFormat.Value EMPTY_FORMAT = JsonFormat.Value.empty();

    public abstract ConfigOverride findConfigOverride(Class<?> cls);

    public abstract PropertyName findRootName(JavaType javaType);

    public abstract PropertyName findRootName(Class<?> cls);

    public abstract Class<?> getActiveView();

    public abstract ContextAttributes getAttributes();

    public abstract JsonFormat.Value getDefaultPropertyFormat(Class<?> cls);

    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls);

    public abstract JsonIgnoreProperties.Value getDefaultPropertyIgnorals(Class<?> cls, AnnotatedClass annotatedClass);

    public abstract JsonInclude.Value getDefaultPropertyInclusion();

    public abstract JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls);

    public abstract JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls, JsonInclude.Value value);

    public abstract SubtypeResolver getSubtypeResolver();

    public abstract BeanDescription introspectClassAnnotations(JavaType javaType);

    public abstract BeanDescription introspectDirectClassAnnotations(JavaType javaType);

    public abstract boolean useRootWrapping();

    /* renamed from: with */
    public abstract T mo234with(MapperFeature mapperFeature, boolean z);

    /* renamed from: with */
    public abstract T mo235with(MapperFeature... mapperFeatureArr);

    /* renamed from: without */
    public abstract T mo254without(MapperFeature... mapperFeatureArr);

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(BaseSettings baseSettings, int i) {
        this._base = baseSettings;
        this._mapperFeatures = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig, int i) {
        this._base = mapperConfig._base;
        this._mapperFeatures = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig, BaseSettings baseSettings) {
        this._base = baseSettings;
        this._mapperFeatures = mapperConfig._mapperFeatures;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public MapperConfig(MapperConfig<T> mapperConfig) {
        this._base = mapperConfig._base;
        this._mapperFeatures = mapperConfig._mapperFeatures;
    }

    public static <F extends Enum<F> & ConfigFeature> int collectFeatureDefaults(Class<F> cls) {
        Enum[] enumArr = (Enum[]) cls.getEnumConstants();
        int length = enumArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Enum r2 = enumArr[i];
            i++;
            i2 = ((ConfigFeature) r2).enabledByDefault() ? ((ConfigFeature) r2).getMask() | i2 : i2;
        }
        return i2;
    }

    public final boolean isEnabled(MapperFeature mapperFeature) {
        return (this._mapperFeatures & mapperFeature.getMask()) != 0;
    }

    public final boolean hasMapperFeatures(int i) {
        return (this._mapperFeatures & i) == i;
    }

    public final boolean isAnnotationProcessingEnabled() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS);
    }

    public final boolean canOverrideAccessModifiers() {
        return isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS);
    }

    public final boolean shouldSortPropertiesAlphabetically() {
        return isEnabled(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY);
    }

    public SerializableString compileString(String str) {
        return new SerializedString(str);
    }

    public ClassIntrospector getClassIntrospector() {
        return this._base.getClassIntrospector();
    }

    public AnnotationIntrospector getAnnotationIntrospector() {
        return this._base.getAnnotationIntrospector();
    }

    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        return this._base.getVisibilityChecker();
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        return this._base.getPropertyNamingStrategy();
    }

    public final HandlerInstantiator getHandlerInstantiator() {
        return this._base.getHandlerInstantiator();
    }

    public final TypeResolverBuilder<?> getDefaultTyper(JavaType javaType) {
        return this._base.getTypeResolverBuilder();
    }

    public final TypeFactory getTypeFactory() {
        return this._base.getTypeFactory();
    }

    public final JavaType constructType(Class<?> cls) {
        return getTypeFactory().constructType(cls);
    }

    public final JavaType constructType(TypeReference<?> typeReference) {
        return getTypeFactory().constructType(typeReference.getType());
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        return getTypeFactory().constructSpecializedType(javaType, cls);
    }

    public BeanDescription introspectClassAnnotations(Class<?> cls) {
        return introspectClassAnnotations(constructType(cls));
    }

    public BeanDescription introspectDirectClassAnnotations(Class<?> cls) {
        return introspectDirectClassAnnotations(constructType(cls));
    }

    public final DateFormat getDateFormat() {
        return this._base.getDateFormat();
    }

    public final Locale getLocale() {
        return this._base.getLocale();
    }

    public final TimeZone getTimeZone() {
        return this._base.getTimeZone();
    }

    public Base64Variant getBase64Variant() {
        return this._base.getBase64Variant();
    }

    public TypeResolverBuilder<?> typeResolverBuilderInstance(Annotated annotated, Class<? extends TypeResolverBuilder<?>> cls) {
        TypeResolverBuilder<?> typeResolverBuilderInstance;
        HandlerInstantiator handlerInstantiator = getHandlerInstantiator();
        return (handlerInstantiator == null || (typeResolverBuilderInstance = handlerInstantiator.typeResolverBuilderInstance(this, annotated, cls)) == null) ? (TypeResolverBuilder) ClassUtil.createInstance(cls, canOverrideAccessModifiers()) : typeResolverBuilderInstance;
    }

    public TypeIdResolver typeIdResolverInstance(Annotated annotated, Class<? extends TypeIdResolver> cls) {
        TypeIdResolver typeIdResolverInstance;
        HandlerInstantiator handlerInstantiator = getHandlerInstantiator();
        return (handlerInstantiator == null || (typeIdResolverInstance = handlerInstantiator.typeIdResolverInstance(this, annotated, cls)) == null) ? (TypeIdResolver) ClassUtil.createInstance(cls, canOverrideAccessModifiers()) : typeIdResolverInstance;
    }
}
