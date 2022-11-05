package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.BeanDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
/* loaded from: classes.dex */
public class ThrowableDeserializer extends BeanDeserializer {
    protected static final String PROP_NAME_MESSAGE = "message";
    private static final long serialVersionUID = 1;

    public ThrowableDeserializer(BeanDeserializer beanDeserializer) {
        super(beanDeserializer);
        this._vanillaProcessing = false;
    }

    protected ThrowableDeserializer(BeanDeserializer beanDeserializer, NameTransformer nameTransformer) {
        super(beanDeserializer, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase, com.fasterxml.jackson.databind.JsonDeserializer
    public JsonDeserializer<Object> unwrappingDeserializer(NameTransformer nameTransformer) {
        return getClass() != ThrowableDeserializer.class ? this : new ThrowableDeserializer(this, nameTransformer);
    }

    @Override // com.fasterxml.jackson.databind.deser.BeanDeserializer, com.fasterxml.jackson.databind.deser.BeanDeserializerBase
    public Object deserializeFromObject(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Object createUsingDefault;
        int i;
        Object[] objArr;
        Object obj;
        if (this._propertyBasedCreator != null) {
            return _deserializeUsingPropertyBased(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return this._valueInstantiator.createUsingDelegate(deserializationContext, this._delegateDeserializer.mo573deserialize(jsonParser, deserializationContext));
        }
        if (this._beanType.isAbstract()) {
            return deserializationContext.handleMissingInstantiator(handledType(), jsonParser, "abstract type (need to add/enable type information?)", new Object[0]);
        }
        boolean canCreateFromString = this._valueInstantiator.canCreateFromString();
        boolean canCreateUsingDefault = this._valueInstantiator.canCreateUsingDefault();
        if (!canCreateFromString && !canCreateUsingDefault) {
            return deserializationContext.handleMissingInstantiator(handledType(), jsonParser, "Throwable needs a default contructor, a single-String-arg constructor; or explicit @JsonCreator", new Object[0]);
        }
        int i2 = 0;
        Object[] objArr2 = null;
        Object obj2 = null;
        while (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            String currentName = jsonParser.getCurrentName();
            SettableBeanProperty find = this._beanProperties.find(currentName);
            jsonParser.nextToken();
            if (find != null) {
                if (obj2 != null) {
                    find.deserializeAndSet(jsonParser, deserializationContext, obj2);
                    i = i2;
                    objArr = objArr2;
                    obj = obj2;
                } else {
                    if (objArr2 == null) {
                        int size = this._beanProperties.size();
                        objArr2 = new Object[size + size];
                    }
                    int i3 = i2 + 1;
                    objArr2[i2] = find;
                    i = i3 + 1;
                    objArr2[i3] = find.deserialize(jsonParser, deserializationContext);
                    objArr = objArr2;
                    obj = obj2;
                }
            } else if ("message".equals(currentName) && canCreateFromString) {
                obj2 = this._valueInstantiator.createFromString(deserializationContext, jsonParser.getText());
                if (objArr2 != null) {
                    for (int i4 = 0; i4 < i2; i4 += 2) {
                        ((SettableBeanProperty) objArr2[i4]).set(obj2, objArr2[i4 + 1]);
                    }
                    i = i2;
                    obj = obj2;
                    objArr = null;
                }
                i = i2;
                objArr = objArr2;
                obj = obj2;
            } else if (this._ignorableProps != null && this._ignorableProps.contains(currentName)) {
                jsonParser.skipChildren();
                i = i2;
                objArr = objArr2;
                obj = obj2;
            } else if (this._anySetter != null) {
                this._anySetter.deserializeAndSet(jsonParser, deserializationContext, obj2, currentName);
                i = i2;
                objArr = objArr2;
                obj = obj2;
            } else {
                handleUnknownProperty(jsonParser, deserializationContext, obj2, currentName);
                i = i2;
                objArr = objArr2;
                obj = obj2;
            }
            jsonParser.nextToken();
            obj2 = obj;
            objArr2 = objArr;
            i2 = i;
        }
        if (obj2 == null) {
            if (canCreateFromString) {
                createUsingDefault = this._valueInstantiator.createFromString(deserializationContext, null);
            } else {
                createUsingDefault = this._valueInstantiator.createUsingDefault(deserializationContext);
            }
            if (objArr2 != null) {
                for (int i5 = 0; i5 < i2; i5 += 2) {
                    ((SettableBeanProperty) objArr2[i5]).set(createUsingDefault, objArr2[i5 + 1]);
                }
                return createUsingDefault;
            }
            return createUsingDefault;
        }
        return obj2;
    }
}
