package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class EnumValues implements Serializable {
    private static final long serialVersionUID = 1;
    private transient EnumMap<?, SerializableString> _asMap;
    private final Class<Enum<?>> _enumClass;
    private final SerializableString[] _textual;
    private final Enum<?>[] _values;

    private EnumValues(Class<Enum<?>> cls, SerializableString[] serializableStringArr) {
        this._enumClass = cls;
        this._values = cls.getEnumConstants();
        this._textual = serializableStringArr;
    }

    public static EnumValues construct(SerializationConfig serializationConfig, Class<Enum<?>> cls) {
        return serializationConfig.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING) ? constructFromToString(serializationConfig, cls) : constructFromName(serializationConfig, cls);
    }

    public static EnumValues constructFromName(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Class<? extends Enum<?>> findEnumType = ClassUtil.findEnumType(cls);
        Enum<?>[] enumArr = (Enum[]) findEnumType.getEnumConstants();
        if (enumArr == null) {
            throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
        }
        String[] findEnumValues = mapperConfig.getAnnotationIntrospector().findEnumValues(findEnumType, enumArr, new String[enumArr.length]);
        SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
        int length = enumArr.length;
        for (int i = 0; i < length; i++) {
            Enum<?> r6 = enumArr[i];
            String str = findEnumValues[i];
            if (str == null) {
                str = r6.name();
            }
            serializableStringArr[r6.ordinal()] = mapperConfig.compileString(str);
        }
        return new EnumValues(cls, serializableStringArr);
    }

    public static EnumValues constructFromToString(MapperConfig<?> mapperConfig, Class<Enum<?>> cls) {
        Enum[] enumArr = (Enum[]) ClassUtil.findEnumType(cls).getEnumConstants();
        if (enumArr != null) {
            SerializableString[] serializableStringArr = new SerializableString[enumArr.length];
            for (Enum r4 : enumArr) {
                serializableStringArr[r4.ordinal()] = mapperConfig.compileString(r4.toString());
            }
            return new EnumValues(cls, serializableStringArr);
        }
        throw new IllegalArgumentException("Can not determine enum constants for Class " + cls.getName());
    }

    public SerializableString serializedValueFor(Enum<?> r3) {
        return this._textual[r3.ordinal()];
    }

    public Collection<SerializableString> values() {
        return Arrays.asList(this._textual);
    }

    public List<Enum<?>> enums() {
        return Arrays.asList(this._values);
    }

    public EnumMap<?, SerializableString> internalMap() {
        Enum<?>[] enumArr;
        EnumMap<?, SerializableString> enumMap = this._asMap;
        if (enumMap == null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Enum<?> r4 : this._values) {
                linkedHashMap.put(r4, this._textual[r4.ordinal()]);
            }
            return new EnumMap<>(linkedHashMap);
        }
        return enumMap;
    }

    public Class<Enum<?>> getEnumClass() {
        return this._enumClass;
    }
}
