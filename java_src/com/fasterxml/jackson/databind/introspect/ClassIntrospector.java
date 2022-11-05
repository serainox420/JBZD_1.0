package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
/* loaded from: classes.dex */
public abstract class ClassIntrospector {

    /* loaded from: classes.dex */
    public interface MixInResolver {
        /* renamed from: copy */
        MixInResolver mo353copy();

        Class<?> findMixInClassFor(Class<?> cls);
    }

    /* renamed from: forClassAnnotations */
    public abstract BeanDescription mo336forClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, MixInResolver mixInResolver);

    /* renamed from: forCreation */
    public abstract BeanDescription mo337forCreation(DeserializationConfig deserializationConfig, JavaType javaType, MixInResolver mixInResolver);

    /* renamed from: forDeserialization */
    public abstract BeanDescription mo338forDeserialization(DeserializationConfig deserializationConfig, JavaType javaType, MixInResolver mixInResolver);

    /* renamed from: forDeserializationWithBuilder */
    public abstract BeanDescription mo339forDeserializationWithBuilder(DeserializationConfig deserializationConfig, JavaType javaType, MixInResolver mixInResolver);

    /* renamed from: forDirectClassAnnotations */
    public abstract BeanDescription mo340forDirectClassAnnotations(MapperConfig<?> mapperConfig, JavaType javaType, MixInResolver mixInResolver);

    /* renamed from: forSerialization */
    public abstract BeanDescription mo341forSerialization(SerializationConfig serializationConfig, JavaType javaType, MixInResolver mixInResolver);
}
