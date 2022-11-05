package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.SegmentedStringWriter;
import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.Instantiatable;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.DefaultSerializerProvider;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.SerializerFactory;
import com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.Writer;
import java.text.DateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public class ObjectWriter implements Versioned, Serializable {
    protected static final PrettyPrinter NULL_PRETTY_PRINTER = new MinimalPrettyPrinter();
    private static final long serialVersionUID = 1;
    protected final SerializationConfig _config;
    protected final JsonFactory _generatorFactory;
    protected final GeneratorSettings _generatorSettings;
    protected final Prefetch _prefetch;
    protected final SerializerFactory _serializerFactory;
    protected final DefaultSerializerProvider _serializerProvider;

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, JavaType javaType, PrettyPrinter prettyPrinter) {
        this._config = serializationConfig;
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        this._generatorSettings = prettyPrinter == null ? GeneratorSettings.empty : new GeneratorSettings(prettyPrinter, null, null, null);
        if (javaType == null || javaType.hasRawClass(Object.class)) {
            this._prefetch = Prefetch.empty;
        } else {
            this._prefetch = Prefetch.empty.forRootType(this, javaType.mo471withStaticTyping());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig) {
        this._config = serializationConfig;
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        this._generatorSettings = GeneratorSettings.empty;
        this._prefetch = Prefetch.empty;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectWriter(ObjectMapper objectMapper, SerializationConfig serializationConfig, FormatSchema formatSchema) {
        this._config = serializationConfig;
        this._serializerProvider = objectMapper._serializerProvider;
        this._serializerFactory = objectMapper._serializerFactory;
        this._generatorFactory = objectMapper._jsonFactory;
        this._generatorSettings = formatSchema == null ? GeneratorSettings.empty : new GeneratorSettings(null, formatSchema, null, null);
        this._prefetch = Prefetch.empty;
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig, GeneratorSettings generatorSettings, Prefetch prefetch) {
        this._config = serializationConfig;
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = objectWriter._generatorFactory;
        this._generatorSettings = generatorSettings;
        this._prefetch = prefetch;
    }

    protected ObjectWriter(ObjectWriter objectWriter, SerializationConfig serializationConfig) {
        this._config = serializationConfig;
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = objectWriter._generatorFactory;
        this._generatorSettings = objectWriter._generatorSettings;
        this._prefetch = objectWriter._prefetch;
    }

    protected ObjectWriter(ObjectWriter objectWriter, JsonFactory jsonFactory) {
        this._config = objectWriter._config.mo234with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this._serializerProvider = objectWriter._serializerProvider;
        this._serializerFactory = objectWriter._serializerFactory;
        this._generatorFactory = jsonFactory;
        this._generatorSettings = objectWriter._generatorSettings;
        this._prefetch = objectWriter._prefetch;
    }

    @Override // com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    protected ObjectWriter _new(ObjectWriter objectWriter, JsonFactory jsonFactory) {
        return new ObjectWriter(objectWriter, jsonFactory);
    }

    protected ObjectWriter _new(ObjectWriter objectWriter, SerializationConfig serializationConfig) {
        return new ObjectWriter(objectWriter, serializationConfig);
    }

    protected ObjectWriter _new(GeneratorSettings generatorSettings, Prefetch prefetch) {
        return new ObjectWriter(this, this._config, generatorSettings, prefetch);
    }

    protected SequenceWriter _newSequenceWriter(boolean z, JsonGenerator jsonGenerator, boolean z2) throws IOException {
        _configureGenerator(jsonGenerator);
        return new SequenceWriter(_serializerProvider(), jsonGenerator, z2, this._prefetch).init(z);
    }

    public ObjectWriter with(SerializationFeature serializationFeature) {
        SerializationConfig with = this._config.with(serializationFeature);
        return with == this._config ? this : _new(this, with);
    }

    public ObjectWriter with(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        SerializationConfig with = this._config.with(serializationFeature, serializationFeatureArr);
        return with == this._config ? this : _new(this, with);
    }

    public ObjectWriter withFeatures(SerializationFeature... serializationFeatureArr) {
        SerializationConfig withFeatures = this._config.withFeatures(serializationFeatureArr);
        return withFeatures == this._config ? this : _new(this, withFeatures);
    }

    public ObjectWriter without(SerializationFeature serializationFeature) {
        SerializationConfig without = this._config.without(serializationFeature);
        return without == this._config ? this : _new(this, without);
    }

    public ObjectWriter without(SerializationFeature serializationFeature, SerializationFeature... serializationFeatureArr) {
        SerializationConfig without = this._config.without(serializationFeature, serializationFeatureArr);
        return without == this._config ? this : _new(this, without);
    }

    public ObjectWriter withoutFeatures(SerializationFeature... serializationFeatureArr) {
        SerializationConfig withoutFeatures = this._config.withoutFeatures(serializationFeatureArr);
        return withoutFeatures == this._config ? this : _new(this, withoutFeatures);
    }

    public ObjectWriter with(JsonGenerator.Feature feature) {
        SerializationConfig with = this._config.with(feature);
        return with == this._config ? this : _new(this, with);
    }

    public ObjectWriter withFeatures(JsonGenerator.Feature... featureArr) {
        SerializationConfig withFeatures = this._config.withFeatures(featureArr);
        return withFeatures == this._config ? this : _new(this, withFeatures);
    }

    public ObjectWriter without(JsonGenerator.Feature feature) {
        SerializationConfig without = this._config.without(feature);
        return without == this._config ? this : _new(this, without);
    }

    public ObjectWriter withoutFeatures(JsonGenerator.Feature... featureArr) {
        SerializationConfig withoutFeatures = this._config.withoutFeatures(featureArr);
        return withoutFeatures == this._config ? this : _new(this, withoutFeatures);
    }

    public ObjectWriter with(FormatFeature formatFeature) {
        SerializationConfig with = this._config.with(formatFeature);
        return with == this._config ? this : _new(this, with);
    }

    public ObjectWriter withFeatures(FormatFeature... formatFeatureArr) {
        SerializationConfig withFeatures = this._config.withFeatures(formatFeatureArr);
        return withFeatures == this._config ? this : _new(this, withFeatures);
    }

    public ObjectWriter without(FormatFeature formatFeature) {
        SerializationConfig without = this._config.without(formatFeature);
        return without == this._config ? this : _new(this, without);
    }

    public ObjectWriter withoutFeatures(FormatFeature... formatFeatureArr) {
        SerializationConfig withoutFeatures = this._config.withoutFeatures(formatFeatureArr);
        return withoutFeatures == this._config ? this : _new(this, withoutFeatures);
    }

    public ObjectWriter forType(JavaType javaType) {
        Prefetch forRootType = this._prefetch.forRootType(this, javaType);
        return forRootType == this._prefetch ? this : _new(this._generatorSettings, forRootType);
    }

    public ObjectWriter forType(Class<?> cls) {
        return cls == Object.class ? forType((JavaType) null) : forType(this._config.constructType(cls));
    }

    public ObjectWriter forType(TypeReference<?> typeReference) {
        return forType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    @Deprecated
    public ObjectWriter withType(JavaType javaType) {
        return forType(javaType);
    }

    @Deprecated
    public ObjectWriter withType(Class<?> cls) {
        return forType(cls);
    }

    @Deprecated
    public ObjectWriter withType(TypeReference<?> typeReference) {
        return forType(typeReference);
    }

    public ObjectWriter with(DateFormat dateFormat) {
        SerializationConfig mo246with = this._config.mo246with(dateFormat);
        return mo246with == this._config ? this : _new(this, mo246with);
    }

    public ObjectWriter withDefaultPrettyPrinter() {
        return with(this._config.getDefaultPrettyPrinter());
    }

    public ObjectWriter with(FilterProvider filterProvider) {
        return filterProvider == this._config.getFilterProvider() ? this : _new(this, this._config.withFilters(filterProvider));
    }

    public ObjectWriter with(PrettyPrinter prettyPrinter) {
        GeneratorSettings with = this._generatorSettings.with(prettyPrinter);
        return with == this._generatorSettings ? this : _new(with, this._prefetch);
    }

    public ObjectWriter withRootName(String str) {
        SerializationConfig withRootName = this._config.withRootName(str);
        return withRootName == this._config ? this : _new(this, withRootName);
    }

    public ObjectWriter withRootName(PropertyName propertyName) {
        SerializationConfig mo251withRootName = this._config.mo251withRootName(propertyName);
        return mo251withRootName == this._config ? this : _new(this, mo251withRootName);
    }

    public ObjectWriter withoutRootName() {
        SerializationConfig mo251withRootName = this._config.mo251withRootName(PropertyName.NO_NAME);
        return mo251withRootName == this._config ? this : _new(this, mo251withRootName);
    }

    public ObjectWriter with(FormatSchema formatSchema) {
        GeneratorSettings with = this._generatorSettings.with(formatSchema);
        if (with != this._generatorSettings) {
            _verifySchemaType(formatSchema);
            return _new(with, this._prefetch);
        }
        return this;
    }

    @Deprecated
    public ObjectWriter withSchema(FormatSchema formatSchema) {
        return with(formatSchema);
    }

    public ObjectWriter withView(Class<?> cls) {
        SerializationConfig mo252withView = this._config.mo252withView(cls);
        return mo252withView == this._config ? this : _new(this, mo252withView);
    }

    public ObjectWriter with(Locale locale) {
        SerializationConfig mo247with = this._config.mo247with(locale);
        return mo247with == this._config ? this : _new(this, mo247with);
    }

    public ObjectWriter with(TimeZone timeZone) {
        SerializationConfig mo248with = this._config.mo248with(timeZone);
        return mo248with == this._config ? this : _new(this, mo248with);
    }

    public ObjectWriter with(Base64Variant base64Variant) {
        SerializationConfig mo236with = this._config.mo236with(base64Variant);
        return mo236with == this._config ? this : _new(this, mo236with);
    }

    public ObjectWriter with(CharacterEscapes characterEscapes) {
        GeneratorSettings with = this._generatorSettings.with(characterEscapes);
        return with == this._generatorSettings ? this : _new(with, this._prefetch);
    }

    public ObjectWriter with(JsonFactory jsonFactory) {
        return jsonFactory == this._generatorFactory ? this : _new(this, jsonFactory);
    }

    public ObjectWriter with(ContextAttributes contextAttributes) {
        SerializationConfig mo239with = this._config.mo239with(contextAttributes);
        return mo239with == this._config ? this : _new(this, mo239with);
    }

    public ObjectWriter withAttributes(Map<?, ?> map) {
        SerializationConfig withAttributes = this._config.withAttributes(map);
        return withAttributes == this._config ? this : _new(this, withAttributes);
    }

    public ObjectWriter withAttribute(Object obj, Object obj2) {
        SerializationConfig withAttribute = this._config.withAttribute(obj, obj2);
        return withAttribute == this._config ? this : _new(this, withAttribute);
    }

    public ObjectWriter withoutAttribute(Object obj) {
        SerializationConfig withoutAttribute = this._config.withoutAttribute(obj);
        return withoutAttribute == this._config ? this : _new(this, withoutAttribute);
    }

    public ObjectWriter withRootValueSeparator(String str) {
        GeneratorSettings withRootValueSeparator = this._generatorSettings.withRootValueSeparator(str);
        return withRootValueSeparator == this._generatorSettings ? this : _new(withRootValueSeparator, this._prefetch);
    }

    public ObjectWriter withRootValueSeparator(SerializableString serializableString) {
        GeneratorSettings withRootValueSeparator = this._generatorSettings.withRootValueSeparator(serializableString);
        return withRootValueSeparator == this._generatorSettings ? this : _new(withRootValueSeparator, this._prefetch);
    }

    public SequenceWriter writeValues(File file) throws IOException {
        return _newSequenceWriter(false, this._generatorFactory.createGenerator(file, JsonEncoding.UTF8), true);
    }

    public SequenceWriter writeValues(JsonGenerator jsonGenerator) throws IOException {
        _configureGenerator(jsonGenerator);
        return _newSequenceWriter(false, jsonGenerator, false);
    }

    public SequenceWriter writeValues(Writer writer) throws IOException {
        return _newSequenceWriter(false, this._generatorFactory.createGenerator(writer), true);
    }

    public SequenceWriter writeValues(OutputStream outputStream) throws IOException {
        return _newSequenceWriter(false, this._generatorFactory.createGenerator(outputStream, JsonEncoding.UTF8), true);
    }

    public SequenceWriter writeValues(DataOutput dataOutput) throws IOException {
        return _newSequenceWriter(false, this._generatorFactory.createGenerator(dataOutput), true);
    }

    public SequenceWriter writeValuesAsArray(File file) throws IOException {
        return _newSequenceWriter(true, this._generatorFactory.createGenerator(file, JsonEncoding.UTF8), true);
    }

    public SequenceWriter writeValuesAsArray(JsonGenerator jsonGenerator) throws IOException {
        return _newSequenceWriter(true, jsonGenerator, false);
    }

    public SequenceWriter writeValuesAsArray(Writer writer) throws IOException {
        return _newSequenceWriter(true, this._generatorFactory.createGenerator(writer), true);
    }

    public SequenceWriter writeValuesAsArray(OutputStream outputStream) throws IOException {
        return _newSequenceWriter(true, this._generatorFactory.createGenerator(outputStream, JsonEncoding.UTF8), true);
    }

    public SequenceWriter writeValuesAsArray(DataOutput dataOutput) throws IOException {
        return _newSequenceWriter(true, this._generatorFactory.createGenerator(dataOutput), true);
    }

    public boolean isEnabled(SerializationFeature serializationFeature) {
        return this._config.isEnabled(serializationFeature);
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    @Deprecated
    public boolean isEnabled(JsonParser.Feature feature) {
        return this._generatorFactory.isEnabled(feature);
    }

    public boolean isEnabled(JsonGenerator.Feature feature) {
        return this._generatorFactory.isEnabled(feature);
    }

    public SerializationConfig getConfig() {
        return this._config;
    }

    public JsonFactory getFactory() {
        return this._generatorFactory;
    }

    public TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public boolean hasPrefetchedSerializer() {
        return this._prefetch.hasSerializer();
    }

    public ContextAttributes getAttributes() {
        return this._config.getAttributes();
    }

    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        _configureGenerator(jsonGenerator);
        if (this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            Closeable closeable = (Closeable) obj;
            try {
                this._prefetch.serialize(jsonGenerator, obj, _serializerProvider());
                if (this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
                    jsonGenerator.flush();
                }
                closeable.close();
                return;
            } catch (Exception e) {
                ClassUtil.closeOnFailAndThrowAsIAE(null, closeable, e);
                return;
            }
        }
        this._prefetch.serialize(jsonGenerator, obj, _serializerProvider());
        if (this._config.isEnabled(SerializationFeature.FLUSH_AFTER_WRITE_VALUE)) {
            jsonGenerator.flush();
        }
    }

    public void writeValue(File file, Object obj) throws IOException, JsonGenerationException, JsonMappingException {
        _configAndWriteValue(this._generatorFactory.createGenerator(file, JsonEncoding.UTF8), obj);
    }

    public void writeValue(OutputStream outputStream, Object obj) throws IOException, JsonGenerationException, JsonMappingException {
        _configAndWriteValue(this._generatorFactory.createGenerator(outputStream, JsonEncoding.UTF8), obj);
    }

    public void writeValue(Writer writer, Object obj) throws IOException, JsonGenerationException, JsonMappingException {
        _configAndWriteValue(this._generatorFactory.createGenerator(writer), obj);
    }

    public void writeValue(DataOutput dataOutput, Object obj) throws IOException {
        _configAndWriteValue(this._generatorFactory.createGenerator(dataOutput), obj);
    }

    public String writeValueAsString(Object obj) throws JsonProcessingException {
        SegmentedStringWriter segmentedStringWriter = new SegmentedStringWriter(this._generatorFactory._getBufferRecycler());
        try {
            _configAndWriteValue(this._generatorFactory.createGenerator(segmentedStringWriter), obj);
            return segmentedStringWriter.getAndClear();
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw JsonMappingException.fromUnexpectedIOE(e2);
        }
    }

    public byte[] writeValueAsBytes(Object obj) throws JsonProcessingException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder(this._generatorFactory._getBufferRecycler());
        try {
            _configAndWriteValue(this._generatorFactory.createGenerator(byteArrayBuilder, JsonEncoding.UTF8), obj);
            byte[] byteArray = byteArrayBuilder.toByteArray();
            byteArrayBuilder.release();
            return byteArray;
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw JsonMappingException.fromUnexpectedIOE(e2);
        }
    }

    public void acceptJsonFormatVisitor(JavaType javaType, JsonFormatVisitorWrapper jsonFormatVisitorWrapper) throws JsonMappingException {
        if (javaType == null) {
            throw new IllegalArgumentException("type must be provided");
        }
        _serializerProvider().acceptJsonFormatVisitor(javaType, jsonFormatVisitorWrapper);
    }

    public void acceptJsonFormatVisitor(Class<?> cls, JsonFormatVisitorWrapper jsonFormatVisitorWrapper) throws JsonMappingException {
        acceptJsonFormatVisitor(this._config.constructType(cls), jsonFormatVisitorWrapper);
    }

    public boolean canSerialize(Class<?> cls) {
        return _serializerProvider().hasSerializerFor(cls, null);
    }

    public boolean canSerialize(Class<?> cls, AtomicReference<Throwable> atomicReference) {
        return _serializerProvider().hasSerializerFor(cls, atomicReference);
    }

    protected DefaultSerializerProvider _serializerProvider() {
        return this._serializerProvider.mo420createInstance(this._config, this._serializerFactory);
    }

    protected void _verifySchemaType(FormatSchema formatSchema) {
        if (formatSchema != null && !this._generatorFactory.canUseSchema(formatSchema)) {
            throw new IllegalArgumentException("Can not use FormatSchema of type " + formatSchema.getClass().getName() + " for format " + this._generatorFactory.getFormatName());
        }
    }

    protected final void _configAndWriteValue(JsonGenerator jsonGenerator, Object obj) throws IOException {
        _configureGenerator(jsonGenerator);
        if (this._config.isEnabled(SerializationFeature.CLOSE_CLOSEABLE) && (obj instanceof Closeable)) {
            _writeCloseable(jsonGenerator, obj);
            return;
        }
        try {
            this._prefetch.serialize(jsonGenerator, obj, _serializerProvider());
            jsonGenerator.close();
        } catch (Exception e) {
            ClassUtil.closeOnFailAndThrowAsIAE(jsonGenerator, e);
        }
    }

    private final void _writeCloseable(JsonGenerator jsonGenerator, Object obj) throws IOException {
        Closeable closeable;
        Exception e;
        Closeable closeable2 = (Closeable) obj;
        try {
            this._prefetch.serialize(jsonGenerator, obj, _serializerProvider());
            closeable = null;
            try {
                closeable2.close();
                jsonGenerator.close();
            } catch (Exception e2) {
                e = e2;
                ClassUtil.closeOnFailAndThrowAsIAE(jsonGenerator, closeable, e);
            }
        } catch (Exception e3) {
            closeable = closeable2;
            e = e3;
        }
    }

    protected final void _configureGenerator(JsonGenerator jsonGenerator) {
        this._config.initialize(jsonGenerator);
        this._generatorSettings.initialize(jsonGenerator);
    }

    /* loaded from: classes.dex */
    public static final class GeneratorSettings implements Serializable {
        public static final GeneratorSettings empty = new GeneratorSettings(null, null, null, null);
        private static final long serialVersionUID = 1;
        public final CharacterEscapes characterEscapes;
        public final PrettyPrinter prettyPrinter;
        public final SerializableString rootValueSeparator;
        public final FormatSchema schema;

        public GeneratorSettings(PrettyPrinter prettyPrinter, FormatSchema formatSchema, CharacterEscapes characterEscapes, SerializableString serializableString) {
            this.prettyPrinter = prettyPrinter;
            this.schema = formatSchema;
            this.characterEscapes = characterEscapes;
            this.rootValueSeparator = serializableString;
        }

        public GeneratorSettings with(PrettyPrinter prettyPrinter) {
            if (prettyPrinter == null) {
                prettyPrinter = ObjectWriter.NULL_PRETTY_PRINTER;
            }
            return prettyPrinter == this.prettyPrinter ? this : new GeneratorSettings(prettyPrinter, this.schema, this.characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings with(FormatSchema formatSchema) {
            return this.schema == formatSchema ? this : new GeneratorSettings(this.prettyPrinter, formatSchema, this.characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings with(CharacterEscapes characterEscapes) {
            return this.characterEscapes == characterEscapes ? this : new GeneratorSettings(this.prettyPrinter, this.schema, characterEscapes, this.rootValueSeparator);
        }

        public GeneratorSettings withRootValueSeparator(String str) {
            if (str == null) {
                if (this.rootValueSeparator == null) {
                    return this;
                }
            } else if (str.equals(this.rootValueSeparator)) {
                return this;
            }
            return new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, str == null ? null : new SerializedString(str));
        }

        public GeneratorSettings withRootValueSeparator(SerializableString serializableString) {
            if (serializableString == null) {
                if (this.rootValueSeparator == null) {
                    return this;
                }
            } else if (this.rootValueSeparator != null && serializableString.getValue().equals(this.rootValueSeparator.getValue())) {
                return this;
            }
            return new GeneratorSettings(this.prettyPrinter, this.schema, this.characterEscapes, serializableString);
        }

        public void initialize(JsonGenerator jsonGenerator) {
            PrettyPrinter prettyPrinter = this.prettyPrinter;
            if (this.prettyPrinter != null) {
                if (prettyPrinter == ObjectWriter.NULL_PRETTY_PRINTER) {
                    jsonGenerator.setPrettyPrinter(null);
                } else {
                    if (prettyPrinter instanceof Instantiatable) {
                        prettyPrinter = (PrettyPrinter) ((Instantiatable) prettyPrinter).mo192createInstance();
                    }
                    jsonGenerator.setPrettyPrinter(prettyPrinter);
                }
            }
            if (this.characterEscapes != null) {
                jsonGenerator.setCharacterEscapes(this.characterEscapes);
            }
            if (this.schema != null) {
                jsonGenerator.setSchema(this.schema);
            }
            if (this.rootValueSeparator != null) {
                jsonGenerator.setRootValueSeparator(this.rootValueSeparator);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class Prefetch implements Serializable {
        public static final Prefetch empty = new Prefetch(null, null, null);
        private static final long serialVersionUID = 1;
        private final JavaType rootType;
        private final TypeSerializer typeSerializer;
        private final JsonSerializer<Object> valueSerializer;

        private Prefetch(JavaType javaType, JsonSerializer<Object> jsonSerializer, TypeSerializer typeSerializer) {
            this.rootType = javaType;
            this.valueSerializer = jsonSerializer;
            this.typeSerializer = typeSerializer;
        }

        public Prefetch forRootType(ObjectWriter objectWriter, JavaType javaType) {
            boolean z = true;
            if (javaType != null && !javaType.isJavaLangObject()) {
                z = false;
            }
            if (z) {
                if (this.rootType != null && this.valueSerializer != null) {
                    return new Prefetch(null, null, this.typeSerializer);
                }
                return this;
            } else if (!javaType.equals(this.rootType)) {
                if (objectWriter.isEnabled(SerializationFeature.EAGER_SERIALIZER_FETCH)) {
                    try {
                        JsonSerializer<Object> findTypedValueSerializer = objectWriter._serializerProvider().findTypedValueSerializer(javaType, true, (BeanProperty) null);
                        if (findTypedValueSerializer instanceof TypeWrappedSerializer) {
                            this = new Prefetch(javaType, null, ((TypeWrappedSerializer) findTypedValueSerializer).typeSerializer());
                        } else {
                            this = new Prefetch(javaType, findTypedValueSerializer, null);
                        }
                        return this;
                    } catch (JsonProcessingException e) {
                    }
                }
                return new Prefetch(javaType, null, this.typeSerializer);
            } else {
                return this;
            }
        }

        public final JsonSerializer<Object> getValueSerializer() {
            return this.valueSerializer;
        }

        public final TypeSerializer getTypeSerializer() {
            return this.typeSerializer;
        }

        public boolean hasSerializer() {
            return (this.valueSerializer == null && this.typeSerializer == null) ? false : true;
        }

        public void serialize(JsonGenerator jsonGenerator, Object obj, DefaultSerializerProvider defaultSerializerProvider) throws IOException {
            if (this.typeSerializer != null) {
                defaultSerializerProvider.serializePolymorphic(jsonGenerator, obj, this.rootType, this.valueSerializer, this.typeSerializer);
            } else if (this.valueSerializer != null) {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj, this.rootType, this.valueSerializer);
            } else if (this.rootType != null) {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj, this.rootType);
            } else {
                defaultSerializerProvider.serializeValue(jsonGenerator, obj);
            }
        }
    }
}
