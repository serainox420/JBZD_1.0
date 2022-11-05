package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableAnyProperty;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.PropertyValue;
import java.io.IOException;
import java.util.BitSet;
/* loaded from: classes.dex */
public class PropertyValueBuffer {
    protected PropertyValue _buffered;
    protected final DeserializationContext _context;
    protected final Object[] _creatorParameters;
    protected Object _idValue;
    protected final ObjectIdReader _objectIdReader;
    protected int _paramsNeeded;
    protected int _paramsSeen;
    protected final BitSet _paramsSeenBig;
    protected final JsonParser _parser;

    public PropertyValueBuffer(JsonParser jsonParser, DeserializationContext deserializationContext, int i, ObjectIdReader objectIdReader) {
        this._parser = jsonParser;
        this._context = deserializationContext;
        this._paramsNeeded = i;
        this._objectIdReader = objectIdReader;
        this._creatorParameters = new Object[i];
        if (i < 32) {
            this._paramsSeenBig = null;
        } else {
            this._paramsSeenBig = new BitSet();
        }
    }

    public final boolean hasParameter(SettableBeanProperty settableBeanProperty) {
        if (this._paramsSeenBig == null) {
            return ((this._paramsSeen >> settableBeanProperty.getCreatorIndex()) & 1) == 1;
        }
        return this._paramsSeenBig.get(settableBeanProperty.getCreatorIndex());
    }

    public Object getParameter(SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        Object _findMissing;
        if (hasParameter(settableBeanProperty)) {
            _findMissing = this._creatorParameters[settableBeanProperty.getCreatorIndex()];
        } else {
            Object[] objArr = this._creatorParameters;
            int creatorIndex = settableBeanProperty.getCreatorIndex();
            _findMissing = _findMissing(settableBeanProperty);
            objArr[creatorIndex] = _findMissing;
        }
        if (_findMissing != null || !this._context.isEnabled(DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES)) {
            return _findMissing;
        }
        throw this._context.mappingException("Null value for creator property '%s'; DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
    }

    public Object[] getParameters(SettableBeanProperty[] settableBeanPropertyArr) throws JsonMappingException {
        if (this._paramsNeeded > 0) {
            if (this._paramsSeenBig == null) {
                int i = this._paramsSeen;
                int length = this._creatorParameters.length;
                int i2 = i;
                int i3 = 0;
                while (i3 < length) {
                    if ((i2 & 1) == 0) {
                        this._creatorParameters[i3] = _findMissing(settableBeanPropertyArr[i3]);
                    }
                    i3++;
                    i2 >>= 1;
                }
            } else {
                int length2 = this._creatorParameters.length;
                int i4 = 0;
                while (true) {
                    int nextClearBit = this._paramsSeenBig.nextClearBit(i4);
                    if (nextClearBit >= length2) {
                        break;
                    }
                    this._creatorParameters[nextClearBit] = _findMissing(settableBeanPropertyArr[nextClearBit]);
                    i4 = nextClearBit + 1;
                }
            }
        }
        if (this._context.isEnabled(DeserializationFeature.FAIL_ON_NULL_CREATOR_PROPERTIES)) {
            for (int i5 = 0; i5 < settableBeanPropertyArr.length; i5++) {
                if (this._creatorParameters[i5] == null) {
                    this._context.reportMappingException("Null value for creator property '%s'; DeserializationFeature.FAIL_ON_NULL_FOR_CREATOR_PARAMETERS enabled", settableBeanPropertyArr[i5].getName(), Integer.valueOf(settableBeanPropertyArr[i5].getCreatorIndex()));
                }
            }
        }
        return this._creatorParameters;
    }

    protected Object _findMissing(SettableBeanProperty settableBeanProperty) throws JsonMappingException {
        if (settableBeanProperty.getInjectableValueId() != null) {
            return this._context.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
        }
        if (settableBeanProperty.isRequired()) {
            this._context.reportMappingException("Missing required creator property '%s' (index %d)", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        }
        if (this._context.isEnabled(DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES)) {
            this._context.reportMappingException("Missing creator property '%s' (index %d); DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES enabled", settableBeanProperty.getName(), Integer.valueOf(settableBeanProperty.getCreatorIndex()));
        }
        return settableBeanProperty.getValueDeserializer().mo289getNullValue(this._context);
    }

    public boolean readIdProperty(String str) throws IOException {
        if (this._objectIdReader == null || !str.equals(this._objectIdReader.propertyName.getSimpleName())) {
            return false;
        }
        this._idValue = this._objectIdReader.readObjectReference(this._parser, this._context);
        return true;
    }

    public Object handleIdValue(DeserializationContext deserializationContext, Object obj) throws IOException {
        if (this._objectIdReader != null) {
            if (this._idValue != null) {
                deserializationContext.findObjectId(this._idValue, this._objectIdReader.generator, this._objectIdReader.resolver).bindItem(obj);
                SettableBeanProperty settableBeanProperty = this._objectIdReader.idProperty;
                if (settableBeanProperty != null) {
                    return settableBeanProperty.setAndReturn(obj, this._idValue);
                }
                return obj;
            }
            deserializationContext.reportUnresolvedObjectId(this._objectIdReader, obj);
            return obj;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PropertyValue buffered() {
        return this._buffered;
    }

    public boolean isComplete() {
        return this._paramsNeeded <= 0;
    }

    public boolean assignParameter(SettableBeanProperty settableBeanProperty, Object obj) {
        int creatorIndex = settableBeanProperty.getCreatorIndex();
        this._creatorParameters[creatorIndex] = obj;
        if (this._paramsSeenBig == null) {
            int i = this._paramsSeen;
            int i2 = (1 << creatorIndex) | i;
            if (i == i2) {
                return false;
            }
            this._paramsSeen = i2;
            int i3 = this._paramsNeeded - 1;
            this._paramsNeeded = i3;
            if (i3 > 0) {
                return false;
            }
            return this._objectIdReader == null || this._idValue != null;
        } else if (this._paramsSeenBig.get(creatorIndex)) {
            return false;
        } else {
            this._paramsSeenBig.set(creatorIndex);
            int i4 = this._paramsNeeded - 1;
            this._paramsNeeded = i4;
            if (i4 <= 0) {
            }
            return false;
        }
    }

    public void bufferProperty(SettableBeanProperty settableBeanProperty, Object obj) {
        this._buffered = new PropertyValue.Regular(this._buffered, obj, settableBeanProperty);
    }

    public void bufferAnyProperty(SettableAnyProperty settableAnyProperty, String str, Object obj) {
        this._buffered = new PropertyValue.Any(this._buffered, obj, settableAnyProperty, str);
    }

    public void bufferMapProperty(Object obj, Object obj2) {
        this._buffered = new PropertyValue.Map(this._buffered, obj2, obj);
    }
}
