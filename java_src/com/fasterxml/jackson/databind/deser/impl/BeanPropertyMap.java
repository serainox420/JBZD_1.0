package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class BeanPropertyMap implements Serializable, Iterable<SettableBeanProperty> {
    private static final long serialVersionUID = 2;
    protected final boolean _caseInsensitive;
    private Object[] _hashArea;
    private int _hashMask;
    private SettableBeanProperty[] _propsInOrder;
    private int _size;
    private int _spillCount;

    public BeanPropertyMap(boolean z, Collection<SettableBeanProperty> collection) {
        this._caseInsensitive = z;
        this._propsInOrder = (SettableBeanProperty[]) collection.toArray(new SettableBeanProperty[collection.size()]);
        init(collection);
    }

    protected BeanPropertyMap(BeanPropertyMap beanPropertyMap, boolean z) {
        this._caseInsensitive = z;
        this._propsInOrder = (SettableBeanProperty[]) Arrays.copyOf(beanPropertyMap._propsInOrder, beanPropertyMap._propsInOrder.length);
        init(Arrays.asList(this._propsInOrder));
    }

    public BeanPropertyMap withCaseInsensitivity(boolean z) {
        return this._caseInsensitive == z ? this : new BeanPropertyMap(this, z);
    }

    protected void init(Collection<SettableBeanProperty> collection) {
        this._size = collection.size();
        int findSize = findSize(this._size);
        this._hashMask = findSize - 1;
        Object[] objArr = new Object[((findSize >> 1) + findSize) * 2];
        int i = 0;
        for (SettableBeanProperty settableBeanProperty : collection) {
            if (settableBeanProperty != null) {
                String propertyName = getPropertyName(settableBeanProperty);
                int _hashCode = _hashCode(propertyName);
                int i2 = _hashCode << 1;
                if (objArr[i2] != null) {
                    i2 = ((_hashCode >> 1) + findSize) << 1;
                    if (objArr[i2] != null) {
                        i2 = (((findSize >> 1) + findSize) << 1) + i;
                        i += 2;
                        if (i2 >= objArr.length) {
                            objArr = Arrays.copyOf(objArr, objArr.length + 4);
                        }
                    }
                }
                objArr[i2] = propertyName;
                objArr[i2 + 1] = settableBeanProperty;
            }
        }
        this._hashArea = objArr;
        this._spillCount = i;
    }

    private static final int findSize(int i) {
        if (i <= 5) {
            return 8;
        }
        if (i <= 12) {
            return 16;
        }
        int i2 = 32;
        while (i2 < i + (i >> 2)) {
            i2 += i2;
        }
        return i2;
    }

    public static BeanPropertyMap construct(Collection<SettableBeanProperty> collection, boolean z) {
        return new BeanPropertyMap(z, collection);
    }

    public BeanPropertyMap withProperty(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int length = this._hashArea.length;
        int i = 1;
        while (true) {
            if (i < length) {
                SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
                if (settableBeanProperty2 == null || !settableBeanProperty2.getName().equals(propertyName)) {
                    i += 2;
                } else {
                    this._hashArea[i] = settableBeanProperty;
                    this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = settableBeanProperty;
                    break;
                }
            } else {
                int _hashCode = _hashCode(propertyName);
                int i2 = this._hashMask + 1;
                int i3 = _hashCode << 1;
                if (this._hashArea[i3] != null) {
                    i3 = ((_hashCode >> 1) + i2) << 1;
                    if (this._hashArea[i3] != null) {
                        i3 = (((i2 >> 1) + i2) << 1) + this._spillCount;
                        this._spillCount += 2;
                        if (i3 >= this._hashArea.length) {
                            this._hashArea = Arrays.copyOf(this._hashArea, this._hashArea.length + 4);
                        }
                    }
                }
                this._hashArea[i3] = propertyName;
                this._hashArea[i3 + 1] = settableBeanProperty;
                int length2 = this._propsInOrder.length;
                this._propsInOrder = (SettableBeanProperty[]) Arrays.copyOf(this._propsInOrder, length2 + 1);
                this._propsInOrder[length2] = settableBeanProperty;
            }
        }
        return this;
    }

    public BeanPropertyMap assignIndexes() {
        int i;
        int i2 = 0;
        int length = this._hashArea.length;
        int i3 = 1;
        while (i3 < length) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i3];
            if (settableBeanProperty != null) {
                settableBeanProperty.assignIndex(i2);
                i = i2 + 1;
            } else {
                i = i2;
            }
            i3 += 2;
            i2 = i;
        }
        return this;
    }

    public BeanPropertyMap renameAll(NameTransformer nameTransformer) {
        if (nameTransformer != null && nameTransformer != NameTransformer.NOP) {
            int length = this._propsInOrder.length;
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                SettableBeanProperty settableBeanProperty = this._propsInOrder[i];
                if (settableBeanProperty == null) {
                    arrayList.add(settableBeanProperty);
                } else {
                    arrayList.add(_rename(settableBeanProperty, nameTransformer));
                }
            }
            return new BeanPropertyMap(this._caseInsensitive, arrayList);
        }
        return this;
    }

    public BeanPropertyMap withoutProperties(Collection<String> collection) {
        if (!collection.isEmpty()) {
            int length = this._propsInOrder.length;
            ArrayList arrayList = new ArrayList(length);
            for (int i = 0; i < length; i++) {
                SettableBeanProperty settableBeanProperty = this._propsInOrder[i];
                if (settableBeanProperty != null && !collection.contains(settableBeanProperty.getName())) {
                    arrayList.add(settableBeanProperty);
                }
            }
            return new BeanPropertyMap(this._caseInsensitive, arrayList);
        }
        return this;
    }

    public void replace(SettableBeanProperty settableBeanProperty) {
        String propertyName = getPropertyName(settableBeanProperty);
        int _findIndexInHash = _findIndexInHash(propertyName);
        if (_findIndexInHash >= 0) {
            this._hashArea[_findIndexInHash] = settableBeanProperty;
            this._propsInOrder[_findFromOrdered((SettableBeanProperty) this._hashArea[_findIndexInHash])] = settableBeanProperty;
            return;
        }
        throw new NoSuchElementException("No entry '" + propertyName + "' found, can't replace");
    }

    private List<SettableBeanProperty> properties() {
        ArrayList arrayList = new ArrayList(this._size);
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty != null) {
                arrayList.add(settableBeanProperty);
            }
        }
        return arrayList;
    }

    @Override // java.lang.Iterable
    public Iterator<SettableBeanProperty> iterator() {
        return properties().iterator();
    }

    public SettableBeanProperty[] getPropertiesInInsertionOrder() {
        return this._propsInOrder;
    }

    protected final String getPropertyName(SettableBeanProperty settableBeanProperty) {
        return this._caseInsensitive ? settableBeanProperty.getName().toLowerCase() : settableBeanProperty.getName();
    }

    public SettableBeanProperty find(int i) {
        int length = this._hashArea.length;
        for (int i2 = 1; i2 < length; i2 += 2) {
            SettableBeanProperty settableBeanProperty = (SettableBeanProperty) this._hashArea[i2];
            if (settableBeanProperty != null && i == settableBeanProperty.getPropertyIndex()) {
                return settableBeanProperty;
            }
        }
        return null;
    }

    public SettableBeanProperty find(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Can not pass null property name");
        }
        if (this._caseInsensitive) {
            str = str.toLowerCase();
        }
        int hashCode = str.hashCode() & this._hashMask;
        int i = hashCode << 1;
        Object obj = this._hashArea[i];
        return (obj == str || str.equals(obj)) ? (SettableBeanProperty) this._hashArea[i + 1] : _find2(str, hashCode, obj);
    }

    private final SettableBeanProperty _find2(String str, int i, Object obj) {
        if (obj == null) {
            return null;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((i >> 1) + i2) << 1;
        Object obj2 = this._hashArea[i3];
        if (str.equals(obj2)) {
            return (SettableBeanProperty) this._hashArea[i3 + 1];
        }
        if (obj2 == null) {
            return null;
        }
        int i4 = (i2 + (i2 >> 1)) << 1;
        int i5 = this._spillCount + i4;
        while (i4 < i5) {
            Object obj3 = this._hashArea[i4];
            if (obj3 != str && !str.equals(obj3)) {
                i4 += 2;
            } else {
                return (SettableBeanProperty) this._hashArea[i4 + 1];
            }
        }
        return null;
    }

    public int size() {
        return this._size;
    }

    public void remove(SettableBeanProperty settableBeanProperty) {
        ArrayList arrayList = new ArrayList(this._size);
        String propertyName = getPropertyName(settableBeanProperty);
        boolean z = false;
        int length = this._hashArea.length;
        for (int i = 1; i < length; i += 2) {
            SettableBeanProperty settableBeanProperty2 = (SettableBeanProperty) this._hashArea[i];
            if (settableBeanProperty2 != null) {
                if (!z && (z = propertyName.equals(this._hashArea[i - 1]))) {
                    this._propsInOrder[_findFromOrdered(settableBeanProperty2)] = null;
                } else {
                    arrayList.add(settableBeanProperty2);
                }
            }
        }
        if (!z) {
            throw new NoSuchElementException("No entry '" + settableBeanProperty.getName() + "' found, can't remove");
        }
        init(arrayList);
    }

    public boolean findDeserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, String str) throws IOException {
        SettableBeanProperty find = find(str);
        if (find == null) {
            return false;
        }
        try {
            find.deserializeAndSet(jsonParser, deserializationContext, obj);
        } catch (Exception e) {
            wrapAndThrow(e, obj, str, deserializationContext);
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Properties=[");
        Iterator<SettableBeanProperty> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            SettableBeanProperty next = it.next();
            int i2 = i + 1;
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(next.getName());
            sb.append('(');
            sb.append(next.getType());
            sb.append(')');
            i = i2;
        }
        sb.append(']');
        return sb.toString();
    }

    protected SettableBeanProperty _rename(SettableBeanProperty settableBeanProperty, NameTransformer nameTransformer) {
        JsonDeserializer<Object> unwrappingDeserializer;
        if (settableBeanProperty != null) {
            SettableBeanProperty withSimpleName = settableBeanProperty.withSimpleName(nameTransformer.transform(settableBeanProperty.getName()));
            JsonDeserializer<Object> valueDeserializer = withSimpleName.getValueDeserializer();
            if (valueDeserializer != null && (unwrappingDeserializer = valueDeserializer.unwrappingDeserializer(nameTransformer)) != valueDeserializer) {
                withSimpleName = withSimpleName.mo273withValueDeserializer(unwrappingDeserializer);
            }
            return withSimpleName;
        }
        return settableBeanProperty;
    }

    protected void wrapAndThrow(Throwable th, Object obj, String str, DeserializationContext deserializationContext) throws IOException {
        Throwable th2 = th;
        while ((th2 instanceof InvocationTargetException) && th2.getCause() != null) {
            th2 = th2.getCause();
        }
        if (th2 instanceof Error) {
            throw ((Error) th2);
        }
        boolean z = deserializationContext == null || deserializationContext.isEnabled(DeserializationFeature.WRAP_EXCEPTIONS);
        if (th2 instanceof IOException) {
            if (!z || !(th2 instanceof JsonProcessingException)) {
                throw ((IOException) th2);
            }
        } else if (!z && (th2 instanceof RuntimeException)) {
            throw ((RuntimeException) th2);
        }
        throw JsonMappingException.wrapWithPath(th2, obj, str);
    }

    private final int _findIndexInHash(String str) {
        int _hashCode = _hashCode(str);
        int i = _hashCode << 1;
        if (str.equals(this._hashArea[i])) {
            return i + 1;
        }
        int i2 = this._hashMask + 1;
        int i3 = ((_hashCode >> 1) + i2) << 1;
        if (str.equals(this._hashArea[i3])) {
            return i3 + 1;
        }
        int i4 = ((i2 >> 1) + i2) << 1;
        int i5 = this._spillCount + i4;
        while (i4 < i5) {
            if (!str.equals(this._hashArea[i4])) {
                i4 += 2;
            } else {
                return i4 + 1;
            }
        }
        return -1;
    }

    private final int _findFromOrdered(SettableBeanProperty settableBeanProperty) {
        int length = this._propsInOrder.length;
        for (int i = 0; i < length; i++) {
            if (this._propsInOrder[i] == settableBeanProperty) {
                return i;
            }
        }
        throw new IllegalStateException("Illegal state: property '" + settableBeanProperty.getName() + "' missing from _propsInOrder");
    }

    private final int _hashCode(String str) {
        return str.hashCode() & this._hashMask;
    }
}
