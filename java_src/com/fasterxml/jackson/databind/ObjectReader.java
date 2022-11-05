package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.filter.FilteringParserDelegate;
import com.fasterxml.jackson.core.filter.JsonPointerBasedFilter;
import com.fasterxml.jackson.core.filter.TokenFilter;
import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.cfg.ContextAttributes;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import com.fasterxml.jackson.databind.deser.DataFormatReaders;
import com.fasterxml.jackson.databind.deser.DefaultDeserializationContext;
import com.fasterxml.jackson.databind.deser.DeserializationProblemHandler;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.NullNode;
import com.fasterxml.jackson.databind.node.TreeTraversingParser;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.io.DataInput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class ObjectReader extends ObjectCodec implements Versioned, Serializable {
    private static final JavaType JSON_NODE_TYPE = SimpleType.constructUnsafe(JsonNode.class);
    private static final long serialVersionUID = 1;
    protected final DeserializationConfig _config;
    protected final DefaultDeserializationContext _context;
    protected final DataFormatReaders _dataFormatReaders;
    private final TokenFilter _filter;
    protected final InjectableValues _injectableValues;
    protected final JsonFactory _parserFactory;
    protected final JsonDeserializer<Object> _rootDeserializer;
    protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _rootDeserializers;
    protected final FormatSchema _schema;
    protected final boolean _unwrapRoot;
    protected final Object _valueToUpdate;
    protected final JavaType _valueType;

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig) {
        this(objectMapper, deserializationConfig, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ObjectReader(ObjectMapper objectMapper, DeserializationConfig deserializationConfig, JavaType javaType, Object obj, FormatSchema formatSchema, InjectableValues injectableValues) {
        this._config = deserializationConfig;
        this._context = objectMapper._deserializationContext;
        this._rootDeserializers = objectMapper._rootDeserializers;
        this._parserFactory = objectMapper._jsonFactory;
        this._valueType = javaType;
        this._valueToUpdate = obj;
        if (obj != null && javaType.isArrayType()) {
            throw new IllegalArgumentException("Can not update an array value");
        }
        this._schema = formatSchema;
        this._injectableValues = injectableValues;
        this._unwrapRoot = deserializationConfig.useRootWrapping();
        this._rootDeserializer = _prefetchRootDeserializer(javaType);
        this._dataFormatReaders = null;
        this._filter = null;
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj, FormatSchema formatSchema, InjectableValues injectableValues, DataFormatReaders dataFormatReaders) {
        this._config = deserializationConfig;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = javaType;
        this._rootDeserializer = jsonDeserializer;
        this._valueToUpdate = obj;
        if (obj != null && javaType.isArrayType()) {
            throw new IllegalArgumentException("Can not update an array value");
        }
        this._schema = formatSchema;
        this._injectableValues = injectableValues;
        this._unwrapRoot = deserializationConfig.useRootWrapping();
        this._dataFormatReaders = dataFormatReaders;
        this._filter = objectReader._filter;
    }

    protected ObjectReader(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        this._config = deserializationConfig;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = deserializationConfig.useRootWrapping();
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = objectReader._filter;
    }

    protected ObjectReader(ObjectReader objectReader, JsonFactory jsonFactory) {
        this._config = objectReader._config.mo234with(MapperFeature.SORT_PROPERTIES_ALPHABETICALLY, jsonFactory.requiresPropertyOrdering());
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = jsonFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = objectReader._unwrapRoot;
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = objectReader._filter;
    }

    protected ObjectReader(ObjectReader objectReader, TokenFilter tokenFilter) {
        this._config = objectReader._config;
        this._context = objectReader._context;
        this._rootDeserializers = objectReader._rootDeserializers;
        this._parserFactory = objectReader._parserFactory;
        this._valueType = objectReader._valueType;
        this._rootDeserializer = objectReader._rootDeserializer;
        this._valueToUpdate = objectReader._valueToUpdate;
        this._schema = objectReader._schema;
        this._injectableValues = objectReader._injectableValues;
        this._unwrapRoot = objectReader._unwrapRoot;
        this._dataFormatReaders = objectReader._dataFormatReaders;
        this._filter = tokenFilter;
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.Versioned
    public Version version() {
        return PackageVersion.VERSION;
    }

    protected ObjectReader _new(ObjectReader objectReader, JsonFactory jsonFactory) {
        return new ObjectReader(objectReader, jsonFactory);
    }

    protected ObjectReader _new(ObjectReader objectReader, DeserializationConfig deserializationConfig) {
        return new ObjectReader(objectReader, deserializationConfig);
    }

    protected ObjectReader _new(ObjectReader objectReader, DeserializationConfig deserializationConfig, JavaType javaType, JsonDeserializer<Object> jsonDeserializer, Object obj, FormatSchema formatSchema, InjectableValues injectableValues, DataFormatReaders dataFormatReaders) {
        return new ObjectReader(objectReader, deserializationConfig, javaType, jsonDeserializer, obj, formatSchema, injectableValues, dataFormatReaders);
    }

    protected <T> MappingIterator<T> _newIterator(JsonParser jsonParser, DeserializationContext deserializationContext, JsonDeserializer<?> jsonDeserializer, boolean z) {
        return new MappingIterator<>(this._valueType, jsonParser, deserializationContext, jsonDeserializer, z, this._valueToUpdate);
    }

    protected JsonToken _initForReading(DeserializationContext deserializationContext, JsonParser jsonParser) throws IOException {
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        this._config.initialize(jsonParser);
        JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == null && (currentToken = jsonParser.nextToken()) == null) {
            deserializationContext.reportMissingContent(null, new Object[0]);
        }
        return currentToken;
    }

    protected void _initForMultiRead(DeserializationContext deserializationContext, JsonParser jsonParser) throws IOException {
        if (this._schema != null) {
            jsonParser.setSchema(this._schema);
        }
        this._config.initialize(jsonParser);
    }

    public ObjectReader with(DeserializationFeature deserializationFeature) {
        return _with(this._config.with(deserializationFeature));
    }

    public ObjectReader with(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.with(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader withFeatures(DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.withFeatures(deserializationFeatureArr));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature) {
        return _with(this._config.without(deserializationFeature));
    }

    public ObjectReader without(DeserializationFeature deserializationFeature, DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.without(deserializationFeature, deserializationFeatureArr));
    }

    public ObjectReader withoutFeatures(DeserializationFeature... deserializationFeatureArr) {
        return _with(this._config.withoutFeatures(deserializationFeatureArr));
    }

    public ObjectReader with(JsonParser.Feature feature) {
        return _with(this._config.with(feature));
    }

    public ObjectReader withFeatures(JsonParser.Feature... featureArr) {
        return _with(this._config.withFeatures(featureArr));
    }

    public ObjectReader without(JsonParser.Feature feature) {
        return _with(this._config.without(feature));
    }

    public ObjectReader withoutFeatures(JsonParser.Feature... featureArr) {
        return _with(this._config.withoutFeatures(featureArr));
    }

    public ObjectReader with(FormatFeature formatFeature) {
        return _with(this._config.with(formatFeature));
    }

    public ObjectReader withFeatures(FormatFeature... formatFeatureArr) {
        return _with(this._config.withFeatures(formatFeatureArr));
    }

    public ObjectReader without(FormatFeature formatFeature) {
        return _with(this._config.without(formatFeature));
    }

    public ObjectReader withoutFeatures(FormatFeature... formatFeatureArr) {
        return _with(this._config.withoutFeatures(formatFeatureArr));
    }

    public ObjectReader at(String str) {
        return new ObjectReader(this, new JsonPointerBasedFilter(str));
    }

    public ObjectReader at(JsonPointer jsonPointer) {
        return new ObjectReader(this, new JsonPointerBasedFilter(jsonPointer));
    }

    public ObjectReader with(DeserializationConfig deserializationConfig) {
        return _with(deserializationConfig);
    }

    public ObjectReader with(InjectableValues injectableValues) {
        return this._injectableValues == injectableValues ? this : _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, this._schema, injectableValues, this._dataFormatReaders);
    }

    public ObjectReader with(JsonNodeFactory jsonNodeFactory) {
        return _with(this._config.with(jsonNodeFactory));
    }

    public ObjectReader with(JsonFactory jsonFactory) {
        if (jsonFactory != this._parserFactory) {
            this = _new(this, jsonFactory);
            if (jsonFactory.mo226getCodec() == null) {
                jsonFactory.setCodec(this);
            }
        }
        return this;
    }

    public ObjectReader withRootName(String str) {
        return _with(this._config.withRootName(str));
    }

    public ObjectReader withRootName(PropertyName propertyName) {
        return _with(this._config.mo251withRootName(propertyName));
    }

    public ObjectReader withoutRootName() {
        return _with(this._config.mo251withRootName(PropertyName.NO_NAME));
    }

    public ObjectReader with(FormatSchema formatSchema) {
        if (this._schema != formatSchema) {
            _verifySchemaType(formatSchema);
            return _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, formatSchema, this._injectableValues, this._dataFormatReaders);
        }
        return this;
    }

    public ObjectReader forType(JavaType javaType) {
        if (javaType == null || !javaType.equals(this._valueType)) {
            JsonDeserializer<Object> _prefetchRootDeserializer = _prefetchRootDeserializer(javaType);
            DataFormatReaders dataFormatReaders = this._dataFormatReaders;
            if (dataFormatReaders != null) {
                dataFormatReaders = dataFormatReaders.withType(javaType);
            }
            return _new(this, this._config, javaType, _prefetchRootDeserializer, this._valueToUpdate, this._schema, this._injectableValues, dataFormatReaders);
        }
        return this;
    }

    public ObjectReader forType(Class<?> cls) {
        return forType(this._config.constructType(cls));
    }

    public ObjectReader forType(TypeReference<?> typeReference) {
        return forType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    @Deprecated
    public ObjectReader withType(JavaType javaType) {
        return forType(javaType);
    }

    @Deprecated
    public ObjectReader withType(Class<?> cls) {
        return forType(this._config.constructType(cls));
    }

    @Deprecated
    public ObjectReader withType(Type type) {
        return forType(this._config.getTypeFactory().constructType(type));
    }

    @Deprecated
    public ObjectReader withType(TypeReference<?> typeReference) {
        return forType(this._config.getTypeFactory().constructType(typeReference.getType()));
    }

    public ObjectReader withValueToUpdate(Object obj) {
        JavaType javaType;
        if (obj != this._valueToUpdate) {
            if (obj == null) {
                return _new(this, this._config, this._valueType, this._rootDeserializer, null, this._schema, this._injectableValues, this._dataFormatReaders);
            }
            if (this._valueType == null) {
                javaType = this._config.constructType(obj.getClass());
            } else {
                javaType = this._valueType;
            }
            return _new(this, this._config, javaType, this._rootDeserializer, obj, this._schema, this._injectableValues, this._dataFormatReaders);
        }
        return this;
    }

    public ObjectReader withView(Class<?> cls) {
        return _with(this._config.mo252withView(cls));
    }

    public ObjectReader with(Locale locale) {
        return _with(this._config.mo247with(locale));
    }

    public ObjectReader with(TimeZone timeZone) {
        return _with(this._config.mo248with(timeZone));
    }

    public ObjectReader withHandler(DeserializationProblemHandler deserializationProblemHandler) {
        return _with(this._config.withHandler(deserializationProblemHandler));
    }

    public ObjectReader with(Base64Variant base64Variant) {
        return _with(this._config.mo236with(base64Variant));
    }

    public ObjectReader withFormatDetection(ObjectReader... objectReaderArr) {
        return withFormatDetection(new DataFormatReaders(objectReaderArr));
    }

    public ObjectReader withFormatDetection(DataFormatReaders dataFormatReaders) {
        return _new(this, this._config, this._valueType, this._rootDeserializer, this._valueToUpdate, this._schema, this._injectableValues, dataFormatReaders);
    }

    public ObjectReader with(ContextAttributes contextAttributes) {
        return _with(this._config.mo239with(contextAttributes));
    }

    public ObjectReader withAttributes(Map<?, ?> map) {
        return _with(this._config.withAttributes(map));
    }

    public ObjectReader withAttribute(Object obj, Object obj2) {
        return _with(this._config.withAttribute(obj, obj2));
    }

    public ObjectReader withoutAttribute(Object obj) {
        return _with(this._config.withoutAttribute(obj));
    }

    protected ObjectReader _with(DeserializationConfig deserializationConfig) {
        if (deserializationConfig != this._config) {
            ObjectReader _new = _new(this, deserializationConfig);
            if (this._dataFormatReaders != null) {
                _new = _new.withFormatDetection(this._dataFormatReaders.with(deserializationConfig));
            }
            return _new;
        }
        return this;
    }

    public boolean isEnabled(DeserializationFeature deserializationFeature) {
        return this._config.isEnabled(deserializationFeature);
    }

    public boolean isEnabled(MapperFeature mapperFeature) {
        return this._config.isEnabled(mapperFeature);
    }

    public boolean isEnabled(JsonParser.Feature feature) {
        return this._parserFactory.isEnabled(feature);
    }

    public DeserializationConfig getConfig() {
        return this._config;
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public JsonFactory getFactory() {
        return this._parserFactory;
    }

    public TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }

    public ContextAttributes getAttributes() {
        return this._config.getAttributes();
    }

    public InjectableValues getInjectableValues() {
        return this._injectableValues;
    }

    public <T> T readValue(JsonParser jsonParser) throws IOException {
        return (T) _bind(jsonParser, this._valueToUpdate);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException {
        return (T) forType((Class<?>) cls).readValue(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public <T> T readValue(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException {
        return (T) forType(typeReference).readValue(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public <T> T readValue(JsonParser jsonParser, ResolvedType resolvedType) throws IOException, JsonProcessingException {
        return (T) forType((JavaType) resolvedType).readValue(jsonParser);
    }

    public <T> T readValue(JsonParser jsonParser, JavaType javaType) throws IOException {
        return (T) forType(javaType).readValue(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    /* renamed from: readValues */
    public <T> Iterator<T> mo231readValues(JsonParser jsonParser, Class<T> cls) throws IOException {
        return forType((Class<?>) cls).readValues(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    /* renamed from: readValues */
    public <T> Iterator<T> mo230readValues(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException {
        return forType(typeReference).readValues(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    /* renamed from: readValues */
    public <T> Iterator<T> mo229readValues(JsonParser jsonParser, ResolvedType resolvedType) throws IOException {
        return readValues(jsonParser, (JavaType) resolvedType);
    }

    public <T> Iterator<T> readValues(JsonParser jsonParser, JavaType javaType) throws IOException {
        return forType(javaType).readValues(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.TreeCodec
    /* renamed from: createArrayNode  reason: collision with other method in class */
    public JsonNode mo232createArrayNode() {
        return this._config.getNodeFactory().arrayNode();
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.TreeCodec
    /* renamed from: createObjectNode  reason: collision with other method in class */
    public JsonNode mo233createObjectNode() {
        return this._config.getNodeFactory().objectNode();
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.TreeCodec
    public JsonParser treeAsTokens(TreeNode treeNode) {
        return new TreeTraversingParser((JsonNode) treeNode, this);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.TreeCodec
    public <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException {
        return _bindAsTree(jsonParser);
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec, com.fasterxml.jackson.core.TreeCodec
    public void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) {
        throw new UnsupportedOperationException();
    }

    public <T> T readValue(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? (T) _detectBindAndClose(this._dataFormatReaders.findFormat(inputStream), false) : (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(inputStream), false));
    }

    public <T> T readValue(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        return (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(reader), false));
    }

    public <T> T readValue(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        return (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(str), false));
    }

    public <T> T readValue(byte[] bArr) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? (T) _detectBindAndClose(bArr, 0, bArr.length) : (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(bArr), false));
    }

    public <T> T readValue(byte[] bArr, int i, int i2) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? (T) _detectBindAndClose(bArr, i, i2) : (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(bArr, i, i2), false));
    }

    public <T> T readValue(File file) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? (T) _detectBindAndClose(this._dataFormatReaders.findFormat(_inputStream(file)), true) : (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(file), false));
    }

    public <T> T readValue(URL url) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? (T) _detectBindAndClose(this._dataFormatReaders.findFormat(_inputStream(url)), true) : (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(url), false));
    }

    public <T> T readValue(JsonNode jsonNode) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(jsonNode);
        }
        return (T) _bindAndClose(_considerFilter(treeAsTokens(jsonNode), false));
    }

    public <T> T readValue(DataInput dataInput) throws IOException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(dataInput);
        }
        return (T) _bindAndClose(_considerFilter(this._parserFactory.createParser(dataInput), false));
    }

    public JsonNode readTree(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndCloseAsTree(inputStream) : _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(inputStream), false));
    }

    public JsonNode readTree(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        return _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(reader), false));
    }

    public JsonNode readTree(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        return _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(str), false));
    }

    public JsonNode readTree(DataInput dataInput) throws IOException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(dataInput);
        }
        return _bindAndCloseAsTree(_considerFilter(this._parserFactory.createParser(dataInput), false));
    }

    public <T> MappingIterator<T> readValues(JsonParser jsonParser) throws IOException, JsonProcessingException {
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        return _newIterator(jsonParser, createDeserializationContext, _findRootDeserializer(createDeserializationContext), false);
    }

    public <T> MappingIterator<T> readValues(InputStream inputStream) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(inputStream), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(inputStream), true));
    }

    public <T> MappingIterator<T> readValues(Reader reader) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(reader);
        }
        JsonParser _considerFilter = _considerFilter(this._parserFactory.createParser(reader), true);
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(_considerFilter);
        _initForMultiRead(createDeserializationContext, _considerFilter);
        _considerFilter.nextToken();
        return _newIterator(_considerFilter, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    public <T> MappingIterator<T> readValues(String str) throws IOException, JsonProcessingException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(str);
        }
        JsonParser _considerFilter = _considerFilter(this._parserFactory.createParser(str), true);
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(_considerFilter);
        _initForMultiRead(createDeserializationContext, _considerFilter);
        _considerFilter.nextToken();
        return _newIterator(_considerFilter, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    public <T> MappingIterator<T> readValues(byte[] bArr, int i, int i2) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(bArr, i, i2), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(bArr, i, i2), true));
    }

    public final <T> MappingIterator<T> readValues(byte[] bArr) throws IOException, JsonProcessingException {
        return readValues(bArr, 0, bArr.length);
    }

    public <T> MappingIterator<T> readValues(File file) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(_inputStream(file)), false) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(file), true));
    }

    public <T> MappingIterator<T> readValues(URL url) throws IOException, JsonProcessingException {
        return this._dataFormatReaders != null ? _detectBindAndReadValues(this._dataFormatReaders.findFormat(_inputStream(url)), true) : _bindAndReadValues(_considerFilter(this._parserFactory.createParser(url), true));
    }

    public <T> MappingIterator<T> readValues(DataInput dataInput) throws IOException {
        if (this._dataFormatReaders != null) {
            _reportUndetectableSource(dataInput);
        }
        return _bindAndReadValues(_considerFilter(this._parserFactory.createParser(dataInput), true));
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public <T> T treeToValue(TreeNode treeNode, Class<T> cls) throws JsonProcessingException {
        try {
            return (T) readValue(treeAsTokens(treeNode), cls);
        } catch (JsonProcessingException e) {
            throw e;
        } catch (IOException e2) {
            throw new IllegalArgumentException(e2.getMessage(), e2);
        }
    }

    @Override // com.fasterxml.jackson.core.ObjectCodec
    public void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException, JsonProcessingException {
        throw new UnsupportedOperationException("Not implemented for ObjectReader");
    }

    protected Object _bind(JsonParser jsonParser, Object obj) throws IOException {
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        JsonToken _initForReading = _initForReading(createDeserializationContext, jsonParser);
        if (_initForReading == JsonToken.VALUE_NULL) {
            if (obj == null) {
                obj = _findRootDeserializer(createDeserializationContext).mo289getNullValue(createDeserializationContext);
            }
        } else if (_initForReading != JsonToken.END_ARRAY && _initForReading != JsonToken.END_OBJECT) {
            JsonDeserializer<Object> _findRootDeserializer = _findRootDeserializer(createDeserializationContext);
            if (this._unwrapRoot) {
                obj = _unwrapAndDeserialize(jsonParser, createDeserializationContext, this._valueType, _findRootDeserializer);
            } else if (obj == null) {
                obj = _findRootDeserializer.mo573deserialize(jsonParser, createDeserializationContext);
            } else {
                _findRootDeserializer.deserialize(jsonParser, createDeserializationContext, obj);
            }
        }
        jsonParser.clearCurrentToken();
        return obj;
    }

    protected JsonParser _considerFilter(JsonParser jsonParser, boolean z) {
        return (this._filter == null || FilteringParserDelegate.class.isInstance(jsonParser)) ? jsonParser : new FilteringParserDelegate(jsonParser, this._filter, false, z);
    }

    protected Object _bindAndClose(JsonParser jsonParser) throws IOException {
        Object obj;
        Throwable th = null;
        try {
            DefaultDeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
            JsonToken _initForReading = _initForReading(createDeserializationContext, jsonParser);
            if (_initForReading == JsonToken.VALUE_NULL) {
                if (this._valueToUpdate == null) {
                    obj = _findRootDeserializer(createDeserializationContext).mo289getNullValue(createDeserializationContext);
                } else {
                    obj = this._valueToUpdate;
                }
            } else if (_initForReading == JsonToken.END_ARRAY || _initForReading == JsonToken.END_OBJECT) {
                obj = this._valueToUpdate;
            } else {
                JsonDeserializer<Object> _findRootDeserializer = _findRootDeserializer(createDeserializationContext);
                if (this._unwrapRoot) {
                    obj = _unwrapAndDeserialize(jsonParser, createDeserializationContext, this._valueType, _findRootDeserializer);
                } else if (this._valueToUpdate == null) {
                    obj = _findRootDeserializer.mo573deserialize(jsonParser, createDeserializationContext);
                } else {
                    _findRootDeserializer.deserialize(jsonParser, createDeserializationContext, this._valueToUpdate);
                    obj = this._valueToUpdate;
                }
            }
            if (jsonParser != null) {
                if (0 != 0) {
                    try {
                        jsonParser.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                } else {
                    jsonParser.close();
                }
            }
            return obj;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                if (jsonParser != null) {
                    if (th3 != null) {
                        try {
                            jsonParser.close();
                        } catch (Throwable th5) {
                            th3.addSuppressed(th5);
                        }
                    } else {
                        jsonParser.close();
                    }
                }
                throw th4;
            }
        }
    }

    protected JsonNode _bindAndCloseAsTree(JsonParser jsonParser) throws IOException {
        Throwable th = null;
        try {
            JsonNode _bindAsTree = _bindAsTree(jsonParser);
            if (jsonParser != null) {
                if (0 != 0) {
                    try {
                        jsonParser.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                } else {
                    jsonParser.close();
                }
            }
            return _bindAsTree;
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                if (jsonParser != null) {
                    if (th3 != null) {
                        try {
                            jsonParser.close();
                        } catch (Throwable th5) {
                            th3.addSuppressed(th5);
                        }
                    } else {
                        jsonParser.close();
                    }
                }
                throw th4;
            }
        }
    }

    protected JsonNode _bindAsTree(JsonParser jsonParser) throws IOException {
        JsonNode jsonNode;
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        JsonToken _initForReading = _initForReading(createDeserializationContext, jsonParser);
        if (_initForReading == JsonToken.VALUE_NULL || _initForReading == JsonToken.END_ARRAY || _initForReading == JsonToken.END_OBJECT) {
            jsonNode = NullNode.instance;
        } else {
            JsonDeserializer<Object> _findTreeDeserializer = _findTreeDeserializer(createDeserializationContext);
            if (this._unwrapRoot) {
                jsonNode = (JsonNode) _unwrapAndDeserialize(jsonParser, createDeserializationContext, JSON_NODE_TYPE, _findTreeDeserializer);
            } else {
                jsonNode = (JsonNode) _findTreeDeserializer.mo573deserialize(jsonParser, createDeserializationContext);
            }
        }
        jsonParser.clearCurrentToken();
        return jsonNode;
    }

    protected <T> MappingIterator<T> _bindAndReadValues(JsonParser jsonParser) throws IOException {
        DefaultDeserializationContext createDeserializationContext = createDeserializationContext(jsonParser);
        _initForMultiRead(createDeserializationContext, jsonParser);
        jsonParser.nextToken();
        return _newIterator(jsonParser, createDeserializationContext, _findRootDeserializer(createDeserializationContext), true);
    }

    protected Object _unwrapAndDeserialize(JsonParser jsonParser, DeserializationContext deserializationContext, JavaType javaType, JsonDeserializer<Object> jsonDeserializer) throws IOException {
        Object obj;
        String simpleName = this._config.findRootName(javaType).getSimpleName();
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            deserializationContext.reportWrongTokenException(jsonParser, JsonToken.START_OBJECT, "Current token not START_OBJECT (needed to unwrap root name '%s'), but %s", simpleName, jsonParser.getCurrentToken());
        }
        if (jsonParser.nextToken() != JsonToken.FIELD_NAME) {
            deserializationContext.reportWrongTokenException(jsonParser, JsonToken.FIELD_NAME, "Current token not FIELD_NAME (to contain expected root name '%s'), but %s", simpleName, jsonParser.getCurrentToken());
        }
        Object currentName = jsonParser.getCurrentName();
        if (!simpleName.equals(currentName)) {
            deserializationContext.reportMappingException("Root name '%s' does not match expected ('%s') for type %s", currentName, simpleName, javaType);
        }
        jsonParser.nextToken();
        if (this._valueToUpdate == null) {
            obj = jsonDeserializer.mo573deserialize(jsonParser, deserializationContext);
        } else {
            jsonDeserializer.deserialize(jsonParser, deserializationContext, this._valueToUpdate);
            obj = this._valueToUpdate;
        }
        if (jsonParser.nextToken() != JsonToken.END_OBJECT) {
            deserializationContext.reportWrongTokenException(jsonParser, JsonToken.END_OBJECT, "Current token not END_OBJECT (to match wrapper object with root name '%s'), but %s", simpleName, jsonParser.getCurrentToken());
        }
        return obj;
    }

    protected Object _detectBindAndClose(byte[] bArr, int i, int i2) throws IOException {
        DataFormatReaders.Match findFormat = this._dataFormatReaders.findFormat(bArr, i, i2);
        if (!findFormat.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, findFormat);
        }
        return findFormat.getReader()._bindAndClose(findFormat.createParserWithMatch());
    }

    protected Object _detectBindAndClose(DataFormatReaders.Match match, boolean z) throws IOException {
        if (!match.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, match);
        }
        JsonParser createParserWithMatch = match.createParserWithMatch();
        if (z) {
            createParserWithMatch.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        }
        return match.getReader()._bindAndClose(createParserWithMatch);
    }

    protected <T> MappingIterator<T> _detectBindAndReadValues(DataFormatReaders.Match match, boolean z) throws IOException, JsonProcessingException {
        if (!match.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, match);
        }
        JsonParser createParserWithMatch = match.createParserWithMatch();
        if (z) {
            createParserWithMatch.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        }
        return match.getReader()._bindAndReadValues(createParserWithMatch);
    }

    protected JsonNode _detectBindAndCloseAsTree(InputStream inputStream) throws IOException {
        DataFormatReaders.Match findFormat = this._dataFormatReaders.findFormat(inputStream);
        if (!findFormat.hasMatch()) {
            _reportUnkownFormat(this._dataFormatReaders, findFormat);
        }
        JsonParser createParserWithMatch = findFormat.createParserWithMatch();
        createParserWithMatch.enable(JsonParser.Feature.AUTO_CLOSE_SOURCE);
        return findFormat.getReader()._bindAndCloseAsTree(createParserWithMatch);
    }

    protected void _reportUnkownFormat(DataFormatReaders dataFormatReaders, DataFormatReaders.Match match) throws JsonProcessingException {
        throw new JsonParseException((JsonParser) null, "Can not detect format from input, does not look like any of detectable formats " + dataFormatReaders.toString());
    }

    protected void _verifySchemaType(FormatSchema formatSchema) {
        if (formatSchema != null && !this._parserFactory.canUseSchema(formatSchema)) {
            throw new IllegalArgumentException("Can not use FormatSchema of type " + formatSchema.getClass().getName() + " for format " + this._parserFactory.getFormatName());
        }
    }

    protected DefaultDeserializationContext createDeserializationContext(JsonParser jsonParser) {
        return this._context.createInstance(this._config, jsonParser, this._injectableValues);
    }

    protected void _reportUndetectableSource(Object obj) throws JsonProcessingException {
        throw new JsonParseException((JsonParser) null, "Can not use source of type " + obj.getClass().getName() + " with format auto-detection: must be byte- not char-based");
    }

    protected InputStream _inputStream(URL url) throws IOException {
        return url.openStream();
    }

    protected InputStream _inputStream(File file) throws IOException {
        return new FileInputStream(file);
    }

    protected JsonDeserializer<Object> _findRootDeserializer(DeserializationContext deserializationContext) throws JsonMappingException {
        if (this._rootDeserializer != null) {
            return this._rootDeserializer;
        }
        JavaType javaType = this._valueType;
        if (javaType == null) {
            deserializationContext.reportMappingException("No value type configured for ObjectReader", new Object[0]);
        }
        JsonDeserializer<Object> jsonDeserializer = this._rootDeserializers.get(javaType);
        if (jsonDeserializer == null) {
            JsonDeserializer<Object> findRootValueDeserializer = deserializationContext.findRootValueDeserializer(javaType);
            if (findRootValueDeserializer == null) {
                deserializationContext.reportMappingException("Can not find a deserializer for type %s", javaType);
            }
            this._rootDeserializers.put(javaType, findRootValueDeserializer);
            return findRootValueDeserializer;
        }
        return jsonDeserializer;
    }

    protected JsonDeserializer<Object> _findTreeDeserializer(DeserializationContext deserializationContext) throws JsonMappingException {
        JsonDeserializer<Object> jsonDeserializer = this._rootDeserializers.get(JSON_NODE_TYPE);
        if (jsonDeserializer == null) {
            jsonDeserializer = deserializationContext.findRootValueDeserializer(JSON_NODE_TYPE);
            if (jsonDeserializer == null) {
                deserializationContext.reportMappingException("Can not find a deserializer for type %s", JSON_NODE_TYPE);
            }
            this._rootDeserializers.put(JSON_NODE_TYPE, jsonDeserializer);
        }
        return jsonDeserializer;
    }

    protected JsonDeserializer<Object> _prefetchRootDeserializer(JavaType javaType) {
        JsonDeserializer<Object> jsonDeserializer = null;
        if (javaType != null && this._config.isEnabled(DeserializationFeature.EAGER_DESERIALIZER_FETCH) && (jsonDeserializer = this._rootDeserializers.get(javaType)) == null) {
            try {
                jsonDeserializer = createDeserializationContext(null).findRootValueDeserializer(javaType);
                if (jsonDeserializer != null) {
                    this._rootDeserializers.put(javaType, jsonDeserializer);
                }
            } catch (JsonProcessingException e) {
            }
        }
        return jsonDeserializer;
    }
}
