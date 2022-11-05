package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.cfg.HandlerInstantiator;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Type;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public abstract class DatabindContext {
    public abstract boolean canOverrideAccessModifiers();

    public abstract Class<?> getActiveView();

    public abstract AnnotationIntrospector getAnnotationIntrospector();

    public abstract Object getAttribute(Object obj);

    /* renamed from: getConfig */
    public abstract MapperConfig<?> mo255getConfig();

    public abstract JsonFormat.Value getDefaultPropertyFormat(Class<?> cls);

    public abstract Locale getLocale();

    public abstract TimeZone getTimeZone();

    public abstract TypeFactory getTypeFactory();

    public abstract boolean isEnabled(MapperFeature mapperFeature);

    /* renamed from: setAttribute */
    public abstract DatabindContext mo256setAttribute(Object obj, Object obj2);

    public JavaType constructType(Type type) {
        return getTypeFactory().constructType(type);
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) {
        return javaType.getRawClass() == cls ? javaType : mo255getConfig().constructSpecializedType(javaType, cls);
    }

    public ObjectIdGenerator<?> objectIdGeneratorInstance(Annotated annotated, ObjectIdInfo objectIdInfo) throws JsonMappingException {
        Class<? extends ObjectIdGenerator<?>> generatorType = objectIdInfo.getGeneratorType();
        MapperConfig<?> mo255getConfig = mo255getConfig();
        HandlerInstantiator handlerInstantiator = mo255getConfig.getHandlerInstantiator();
        ObjectIdGenerator<?> objectIdGeneratorInstance = handlerInstantiator == null ? null : handlerInstantiator.objectIdGeneratorInstance(mo255getConfig, annotated, generatorType);
        if (objectIdGeneratorInstance == null) {
            objectIdGeneratorInstance = (ObjectIdGenerator) ClassUtil.createInstance(generatorType, mo255getConfig.canOverrideAccessModifiers());
        }
        return objectIdGeneratorInstance.forScope(objectIdInfo.getScope());
    }

    public ObjectIdResolver objectIdResolverInstance(Annotated annotated, ObjectIdInfo objectIdInfo) {
        Class<? extends ObjectIdResolver> resolverType = objectIdInfo.getResolverType();
        MapperConfig<?> mo255getConfig = mo255getConfig();
        HandlerInstantiator handlerInstantiator = mo255getConfig.getHandlerInstantiator();
        ObjectIdResolver resolverIdGeneratorInstance = handlerInstantiator == null ? null : handlerInstantiator.resolverIdGeneratorInstance(mo255getConfig, annotated, resolverType);
        if (resolverIdGeneratorInstance == null) {
            return (ObjectIdResolver) ClassUtil.createInstance(resolverType, mo255getConfig.canOverrideAccessModifiers());
        }
        return resolverIdGeneratorInstance;
    }

    public Converter<Object, Object> converterInstance(Annotated annotated, Object obj) throws JsonMappingException {
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
        MapperConfig<?> mo255getConfig = mo255getConfig();
        HandlerInstantiator handlerInstantiator = mo255getConfig.getHandlerInstantiator();
        if (handlerInstantiator != null) {
            converter = handlerInstantiator.converterInstance(mo255getConfig, annotated, cls);
        }
        if (converter == null) {
            converter = (Converter) ClassUtil.createInstance(cls, mo255getConfig.canOverrideAccessModifiers());
        }
        return converter;
    }
}
