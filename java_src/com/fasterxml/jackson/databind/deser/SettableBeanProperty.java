package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.deser.impl.FailingDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ConcreteBeanPropertyBase;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ViewMatcher;
import java.io.IOException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
/* loaded from: classes.dex */
public abstract class SettableBeanProperty extends ConcreteBeanPropertyBase implements Serializable {
    protected static final JsonDeserializer<Object> MISSING_VALUE_DESERIALIZER = new FailingDeserializer("No _valueDeserializer assigned");
    protected final transient Annotations _contextAnnotations;
    protected String _managedReferenceName;
    protected ObjectIdInfo _objectIdInfo;
    protected final PropertyName _propName;
    protected int _propertyIndex;
    protected final JavaType _type;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final TypeDeserializer _valueTypeDeserializer;
    protected ViewMatcher _viewMatcher;
    protected final PropertyName _wrapperName;

    public abstract void deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException;

    public abstract Object deserializeSetAndReturn(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException;

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract <A extends Annotation> A getAnnotation(Class<A> cls);

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public abstract AnnotatedMember getMember();

    public abstract void set(Object obj, Object obj2) throws IOException;

    public abstract Object setAndReturn(Object obj, Object obj2) throws IOException;

    /* renamed from: withName */
    public abstract SettableBeanProperty mo272withName(PropertyName propertyName);

    /* renamed from: withValueDeserializer */
    public abstract SettableBeanProperty mo273withValueDeserializer(JsonDeserializer<?> jsonDeserializer);

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(BeanPropertyDefinition beanPropertyDefinition, JavaType javaType, TypeDeserializer typeDeserializer, Annotations annotations) {
        this(beanPropertyDefinition.getFullName(), javaType, beanPropertyDefinition.getWrapperName(), typeDeserializer, annotations, beanPropertyDefinition.getMetadata());
    }

    @Deprecated
    protected SettableBeanProperty(String str, JavaType javaType, PropertyName propertyName, TypeDeserializer typeDeserializer, Annotations annotations, boolean z) {
        this(new PropertyName(str), javaType, propertyName, typeDeserializer, annotations, PropertyMetadata.construct(z, null, null, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(PropertyName propertyName, JavaType javaType, PropertyName propertyName2, TypeDeserializer typeDeserializer, Annotations annotations, PropertyMetadata propertyMetadata) {
        super(propertyMetadata);
        this._propertyIndex = -1;
        if (propertyName == null) {
            this._propName = PropertyName.NO_NAME;
        } else {
            this._propName = propertyName.internSimpleName();
        }
        this._type = javaType;
        this._wrapperName = propertyName2;
        this._contextAnnotations = annotations;
        this._viewMatcher = null;
        this._valueTypeDeserializer = typeDeserializer != null ? typeDeserializer.forProperty(this) : typeDeserializer;
        this._valueDeserializer = MISSING_VALUE_DESERIALIZER;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(PropertyName propertyName, JavaType javaType, PropertyMetadata propertyMetadata, JsonDeserializer<Object> jsonDeserializer) {
        super(propertyMetadata);
        this._propertyIndex = -1;
        if (propertyName == null) {
            this._propName = PropertyName.NO_NAME;
        } else {
            this._propName = propertyName.internSimpleName();
        }
        this._type = javaType;
        this._wrapperName = null;
        this._contextAnnotations = null;
        this._viewMatcher = null;
        this._valueTypeDeserializer = null;
        this._valueDeserializer = jsonDeserializer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty) {
        super(settableBeanProperty);
        this._propertyIndex = -1;
        this._propName = settableBeanProperty._propName;
        this._type = settableBeanProperty._type;
        this._wrapperName = settableBeanProperty._wrapperName;
        this._contextAnnotations = settableBeanProperty._contextAnnotations;
        this._valueDeserializer = settableBeanProperty._valueDeserializer;
        this._valueTypeDeserializer = settableBeanProperty._valueTypeDeserializer;
        this._managedReferenceName = settableBeanProperty._managedReferenceName;
        this._propertyIndex = settableBeanProperty._propertyIndex;
        this._viewMatcher = settableBeanProperty._viewMatcher;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty, JsonDeserializer<?> jsonDeserializer) {
        super(settableBeanProperty);
        this._propertyIndex = -1;
        this._propName = settableBeanProperty._propName;
        this._type = settableBeanProperty._type;
        this._wrapperName = settableBeanProperty._wrapperName;
        this._contextAnnotations = settableBeanProperty._contextAnnotations;
        this._valueTypeDeserializer = settableBeanProperty._valueTypeDeserializer;
        this._managedReferenceName = settableBeanProperty._managedReferenceName;
        this._propertyIndex = settableBeanProperty._propertyIndex;
        if (jsonDeserializer == null) {
            this._valueDeserializer = MISSING_VALUE_DESERIALIZER;
        } else {
            this._valueDeserializer = jsonDeserializer;
        }
        this._viewMatcher = settableBeanProperty._viewMatcher;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SettableBeanProperty(SettableBeanProperty settableBeanProperty, PropertyName propertyName) {
        super(settableBeanProperty);
        this._propertyIndex = -1;
        this._propName = propertyName;
        this._type = settableBeanProperty._type;
        this._wrapperName = settableBeanProperty._wrapperName;
        this._contextAnnotations = settableBeanProperty._contextAnnotations;
        this._valueDeserializer = settableBeanProperty._valueDeserializer;
        this._valueTypeDeserializer = settableBeanProperty._valueTypeDeserializer;
        this._managedReferenceName = settableBeanProperty._managedReferenceName;
        this._propertyIndex = settableBeanProperty._propertyIndex;
        this._viewMatcher = settableBeanProperty._viewMatcher;
    }

    public SettableBeanProperty withSimpleName(String str) {
        PropertyName propertyName = this._propName == null ? new PropertyName(str) : this._propName.withSimpleName(str);
        return propertyName == this._propName ? this : mo272withName(propertyName);
    }

    @Deprecated
    public SettableBeanProperty withName(String str) {
        return mo272withName(new PropertyName(str));
    }

    public void setManagedReferenceName(String str) {
        this._managedReferenceName = str;
    }

    public void setObjectIdInfo(ObjectIdInfo objectIdInfo) {
        this._objectIdInfo = objectIdInfo;
    }

    public void setViews(Class<?>[] clsArr) {
        if (clsArr == null) {
            this._viewMatcher = null;
        } else {
            this._viewMatcher = ViewMatcher.construct(clsArr);
        }
    }

    public void assignIndex(int i) {
        if (this._propertyIndex != -1) {
            throw new IllegalStateException("Property '" + getName() + "' already had index (" + this._propertyIndex + "), trying to assign " + i);
        }
        this._propertyIndex = i;
    }

    public void fixAccess(DeserializationConfig deserializationConfig) {
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty, com.fasterxml.jackson.databind.util.Named
    public final String getName() {
        return this._propName.getSimpleName();
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getFullName() {
        return this._propName;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public JavaType getType() {
        return this._type;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public PropertyName getWrapperName() {
        return this._wrapperName;
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public <A extends Annotation> A getContextAnnotation(Class<A> cls) {
        return (A) this._contextAnnotations.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.BeanProperty
    public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
        if (isRequired()) {
            jsonObjectFormatVisitor.property(this);
        } else {
            jsonObjectFormatVisitor.optionalProperty(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Class<?> getDeclaringClass() {
        return getMember().getDeclaringClass();
    }

    public String getManagedReferenceName() {
        return this._managedReferenceName;
    }

    public ObjectIdInfo getObjectIdInfo() {
        return this._objectIdInfo;
    }

    public boolean hasValueDeserializer() {
        return (this._valueDeserializer == null || this._valueDeserializer == MISSING_VALUE_DESERIALIZER) ? false : true;
    }

    public boolean hasValueTypeDeserializer() {
        return this._valueTypeDeserializer != null;
    }

    public JsonDeserializer<Object> getValueDeserializer() {
        JsonDeserializer<Object> jsonDeserializer = this._valueDeserializer;
        if (jsonDeserializer == MISSING_VALUE_DESERIALIZER) {
            return null;
        }
        return jsonDeserializer;
    }

    public TypeDeserializer getValueTypeDeserializer() {
        return this._valueTypeDeserializer;
    }

    public boolean visibleInView(Class<?> cls) {
        return this._viewMatcher == null || this._viewMatcher.isVisibleForView(cls);
    }

    public boolean hasViews() {
        return this._viewMatcher != null;
    }

    public int getPropertyIndex() {
        return this._propertyIndex;
    }

    public int getCreatorIndex() {
        throw new IllegalStateException(String.format("Internal error: no creator index for property '%s' (of type %s)", getName(), getClass().getName()));
    }

    public Object getInjectableValueId() {
        return null;
    }

    public final Object deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            return this._valueDeserializer.mo289getNullValue(deserializationContext);
        }
        if (this._valueTypeDeserializer != null) {
            return this._valueDeserializer.mo321deserializeWithType(jsonParser, deserializationContext, this._valueTypeDeserializer);
        }
        return this._valueDeserializer.mo573deserialize(jsonParser, deserializationContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _throwAsIOE(JsonParser jsonParser, Exception exc, Object obj) throws IOException {
        if (exc instanceof IllegalArgumentException) {
            String name = obj == null ? "[NULL]" : obj.getClass().getName();
            StringBuilder append = new StringBuilder("Problem deserializing property '").append(getName());
            append.append("' (expected type: ").append(getType());
            append.append("; actual type: ").append(name).append(")");
            String message = exc.getMessage();
            if (message != null) {
                append.append(", problem: ").append(message);
            } else {
                append.append(" (no error message provided)");
            }
            throw JsonMappingException.from(jsonParser, append.toString(), exc);
        }
        _throwAsIOE(jsonParser, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IOException _throwAsIOE(JsonParser jsonParser, Exception exc) throws IOException {
        if (exc instanceof IOException) {
            throw ((IOException) exc);
        }
        boolean z = exc instanceof RuntimeException;
        Exception exc2 = exc;
        if (z) {
            throw ((RuntimeException) exc);
        }
        while (exc2.getCause() != null) {
            exc2 = exc2.getCause();
        }
        throw JsonMappingException.from(jsonParser, exc2.getMessage(), exc2);
    }

    @Deprecated
    protected IOException _throwAsIOE(Exception exc) throws IOException {
        return _throwAsIOE((JsonParser) null, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _throwAsIOE(Exception exc, Object obj) throws IOException {
        _throwAsIOE(null, exc, obj);
    }

    public String toString() {
        return "[property '" + getName() + "']";
    }
}
