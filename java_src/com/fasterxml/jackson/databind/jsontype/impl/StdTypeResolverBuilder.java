package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.NoClass;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.jsontype.NamedType;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.Collection;
/* loaded from: classes.dex */
public class StdTypeResolverBuilder implements TypeResolverBuilder<StdTypeResolverBuilder> {
    protected TypeIdResolver _customIdResolver;
    protected Class<?> _defaultImpl;
    protected JsonTypeInfo.Id _idType;
    protected JsonTypeInfo.As _includeAs;
    protected boolean _typeIdVisible = false;
    protected String _typeProperty;

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public /* bridge */ /* synthetic */ StdTypeResolverBuilder defaultImpl(Class cls) {
        return defaultImpl2((Class<?>) cls);
    }

    public static StdTypeResolverBuilder noTypeInfoBuilder() {
        return new StdTypeResolverBuilder().init(JsonTypeInfo.Id.NONE, (TypeIdResolver) null);
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder init(JsonTypeInfo.Id id, TypeIdResolver typeIdResolver) {
        if (id == null) {
            throw new IllegalArgumentException("idType can not be null");
        }
        this._idType = id;
        this._customIdResolver = typeIdResolver;
        this._typeProperty = id.getDefaultPropertyName();
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeSerializer buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection) {
        if (this._idType != JsonTypeInfo.Id.NONE && !javaType.isPrimitive()) {
            TypeIdResolver idResolver = idResolver(serializationConfig, javaType, collection, true, false);
            switch (this._includeAs) {
                case WRAPPER_ARRAY:
                    return new AsArrayTypeSerializer(idResolver, null);
                case PROPERTY:
                    return new AsPropertyTypeSerializer(idResolver, null, this._typeProperty);
                case WRAPPER_OBJECT:
                    return new AsWrapperTypeSerializer(idResolver, null);
                case EXTERNAL_PROPERTY:
                    return new AsExternalTypeSerializer(idResolver, null, this._typeProperty);
                case EXISTING_PROPERTY:
                    return new AsExistingPropertyTypeSerializer(idResolver, null, this._typeProperty);
                default:
                    throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection) {
        JavaType constructType;
        if (this._idType != JsonTypeInfo.Id.NONE && !javaType.isPrimitive()) {
            TypeIdResolver idResolver = idResolver(deserializationConfig, javaType, collection, false, true);
            if (this._defaultImpl == null) {
                constructType = null;
            } else if (this._defaultImpl == Void.class || this._defaultImpl == NoClass.class) {
                constructType = deserializationConfig.getTypeFactory().constructType(this._defaultImpl);
            } else {
                constructType = deserializationConfig.getTypeFactory().constructSpecializedType(javaType, this._defaultImpl);
            }
            switch (this._includeAs) {
                case WRAPPER_ARRAY:
                    return new AsArrayTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, constructType);
                case PROPERTY:
                case EXISTING_PROPERTY:
                    return new AsPropertyTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, constructType, this._includeAs);
                case WRAPPER_OBJECT:
                    return new AsWrapperTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, constructType);
                case EXTERNAL_PROPERTY:
                    return new AsExternalTypeDeserializer(javaType, idResolver, this._typeProperty, this._typeIdVisible, constructType);
                default:
                    throw new IllegalStateException("Do not know how to construct standard type serializer for inclusion type: " + this._includeAs);
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder inclusion(JsonTypeInfo.As as) {
        if (as == null) {
            throw new IllegalArgumentException("includeAs can not be null");
        }
        this._includeAs = as;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder typeProperty(String str) {
        if (str == null || str.length() == 0) {
            str = this._idType.getDefaultPropertyName();
        }
        this._typeProperty = str;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    /* renamed from: defaultImpl  reason: avoid collision after fix types in other method */
    public StdTypeResolverBuilder defaultImpl2(Class<?> cls) {
        this._defaultImpl = cls;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public StdTypeResolverBuilder typeIdVisibility(boolean z) {
        this._typeIdVisible = z;
        return this;
    }

    @Override // com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder
    public Class<?> getDefaultImpl() {
        return this._defaultImpl;
    }

    public String getTypeProperty() {
        return this._typeProperty;
    }

    public boolean isTypeIdVisible() {
        return this._typeIdVisible;
    }

    protected TypeIdResolver idResolver(MapperConfig<?> mapperConfig, JavaType javaType, Collection<NamedType> collection, boolean z, boolean z2) {
        if (this._customIdResolver != null) {
            return this._customIdResolver;
        }
        if (this._idType == null) {
            throw new IllegalStateException("Can not build, 'init()' not yet called");
        }
        switch (this._idType) {
            case CLASS:
                return new ClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            case MINIMAL_CLASS:
                return new MinimalClassNameIdResolver(javaType, mapperConfig.getTypeFactory());
            case NAME:
                return TypeNameIdResolver.construct(mapperConfig, javaType, collection, z, z2);
            case NONE:
                return null;
            default:
                throw new IllegalStateException("Do not know how to construct standard type id resolver for idType: " + this._idType);
        }
    }
}
