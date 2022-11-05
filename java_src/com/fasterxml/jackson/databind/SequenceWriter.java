package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public class SequenceWriter implements Versioned, Closeable, Flushable {
    protected final boolean _cfgCloseCloseable;
    protected final boolean _cfgFlush;
    protected final boolean _closeGenerator;
    protected boolean _closed;
    protected final SerializationConfig _config;
    protected PropertySerializerMap _dynamicSerializers = PropertySerializerMap.emptyForRootValues();
    protected final JsonGenerator _generator;
    protected boolean _openArray;
    protected final DefaultSerializerProvider _provider;
    protected final JsonSerializer<Object> _rootSerializer;
    protected final TypeSerializer _typeSerializer;

    public SequenceWriter(DefaultSerializerProvider defaultSerializerProvider, JsonGenerator jsonGenerator, boolean z, ObjectWriter.Prefetch prefetch) throws IOException {
        this._provider = defaultSerializerProvider;
        this._generator = jsonGenerator;
        this._closeGenerator = z;
        this._rootSerializer = prefetch.getValueSerializer();
        this._typeSerializer = prefetch.getTypeSerializer();
        this._config = defaultSerializerProvider.mo255getConfig();
        this._cfgFlush = this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE);
        this._cfgCloseCloseable = this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE);
    }

    public SequenceWriter init(boolean z) throws IOException {
        if (z) {
            this._generator.writeStartArray();
            this._openArray = true;
        }
        return this;
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    public SequenceWriter write(Object obj) throws IOException {
        Class<?> cls;
        if (obj == null) {
            this._provider.serializeValue(this._generator, null);
            return this;
        } else if (this._cfgCloseCloseable && (obj instanceof Closeable)) {
            return _writeCloseableValue(obj);
        } else {
            JsonSerializer<Object> jsonSerializer = this._rootSerializer;
            if (jsonSerializer == null && (jsonSerializer = this._dynamicSerializers.serializerFor((cls = obj.getClass()))) == null) {
                jsonSerializer = _findAndAddDynamic(cls);
            }
            this._provider.serializeValue(this._generator, obj, null, jsonSerializer);
            if (this._cfgFlush) {
                this._generator.flush();
                return this;
            }
            return this;
        }
    }

    public SequenceWriter write(Object obj, JavaType javaType) throws IOException {
        if (obj == null) {
            this._provider.serializeValue(this._generator, null);
            return this;
        } else if (this._cfgCloseCloseable && (obj instanceof Closeable)) {
            return _writeCloseableValue(obj, javaType);
        } else {
            JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(javaType.getRawClass());
            if (serializerFor == null) {
                serializerFor = _findAndAddDynamic(javaType);
            }
            this._provider.serializeValue(this._generator, obj, javaType, serializerFor);
            if (this._cfgFlush) {
                this._generator.flush();
                return this;
            }
            return this;
        }
    }

    public SequenceWriter writeAll(Object[] objArr) throws IOException {
        for (Object obj : objArr) {
            write(obj);
        }
        return this;
    }

    public <C extends Collection<?>> SequenceWriter writeAll(C c) throws IOException {
        for (Object obj : c) {
            write(obj);
        }
        return this;
    }

    public SequenceWriter writeAll(Iterable<?> iterable) throws IOException {
        Iterator<?> it = iterable.iterator();
        while (it.hasNext()) {
            write(it.next());
        }
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (!this._closed) {
            this._generator.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this._closed) {
            this._closed = true;
            if (this._openArray) {
                this._openArray = false;
                this._generator.writeEndArray();
            }
            if (this._closeGenerator) {
                this._generator.close();
            }
        }
    }

    protected SequenceWriter _writeCloseableValue(Object obj) throws IOException {
        Throwable th;
        Class<?> cls;
        Closeable closeable = null;
        Closeable closeable2 = (Closeable) obj;
        try {
            JsonSerializer<Object> jsonSerializer = this._rootSerializer;
            if (jsonSerializer == null && (jsonSerializer = this._dynamicSerializers.serializerFor((cls = obj.getClass()))) == null) {
                jsonSerializer = _findAndAddDynamic(cls);
            }
            this._provider.serializeValue(this._generator, obj, null, jsonSerializer);
            if (this._cfgFlush) {
                this._generator.flush();
            }
            Closeable closeable3 = null;
            try {
                closeable2.close();
                if (0 != 0) {
                    try {
                        closeable3.close();
                    } catch (IOException e) {
                    }
                }
                return this;
            } catch (Throwable th2) {
                th = th2;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            closeable = closeable2;
            th = th3;
        }
    }

    protected SequenceWriter _writeCloseableValue(Object obj, JavaType javaType) throws IOException {
        Closeable closeable;
        Throwable th;
        Closeable closeable2 = (Closeable) obj;
        try {
            JsonSerializer<Object> serializerFor = this._dynamicSerializers.serializerFor(javaType.getRawClass());
            if (serializerFor == null) {
                serializerFor = _findAndAddDynamic(javaType);
            }
            this._provider.serializeValue(this._generator, obj, javaType, serializerFor);
            if (this._cfgFlush) {
                this._generator.flush();
            }
            closeable = null;
            try {
                closeable2.close();
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e) {
                    }
                }
                return this;
            } catch (Throwable th2) {
                th = th2;
                if (closeable != null) {
                    try {
                        closeable.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            closeable = closeable2;
            th = th3;
        }
    }

    private final JsonSerializer<Object> _findAndAddDynamic(Class<?> cls) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult addSerializer;
        if (this._typeSerializer == null) {
            addSerializer = this._dynamicSerializers.findAndAddRootValueSerializer(cls, this._provider);
        } else {
            addSerializer = this._dynamicSerializers.addSerializer(cls, new TypeWrappedSerializer(this._typeSerializer, this._provider.findValueSerializer(cls, (BeanProperty) null)));
        }
        this._dynamicSerializers = addSerializer.map;
        return addSerializer.serializer;
    }

    private final JsonSerializer<Object> _findAndAddDynamic(JavaType javaType) throws JsonMappingException {
        PropertySerializerMap.SerializerAndMapResult addSerializer;
        if (this._typeSerializer == null) {
            addSerializer = this._dynamicSerializers.findAndAddRootValueSerializer(javaType, this._provider);
        } else {
            addSerializer = this._dynamicSerializers.addSerializer(javaType, new TypeWrappedSerializer(this._typeSerializer, this._provider.findValueSerializer(javaType, (BeanProperty) null)));
        }
        this._dynamicSerializers = addSerializer.map;
        return addSerializer.serializer;
    }
}
