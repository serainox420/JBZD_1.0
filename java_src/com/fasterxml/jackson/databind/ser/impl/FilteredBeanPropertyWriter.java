package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.io.Serializable;
/* loaded from: classes.dex */
public abstract class FilteredBeanPropertyWriter {
    public static BeanPropertyWriter constructViewBased(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
        return clsArr.length == 1 ? new SingleView(beanPropertyWriter, clsArr[0]) : new MultiView(beanPropertyWriter, clsArr);
    }

    /* loaded from: classes.dex */
    private static final class SingleView extends BeanPropertyWriter implements Serializable {
        private static final long serialVersionUID = 1;
        protected final BeanPropertyWriter _delegate;
        protected final Class<?> _view;

        protected SingleView(BeanPropertyWriter beanPropertyWriter, Class<?> cls) {
            super(beanPropertyWriter);
            this._delegate = beanPropertyWriter;
            this._view = cls;
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        /* renamed from: rename  reason: collision with other method in class */
        public SingleView mo425rename(NameTransformer nameTransformer) {
            return new SingleView(this._delegate.mo425rename(nameTransformer), this._view);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignSerializer(JsonSerializer<Object> jsonSerializer) {
            this._delegate.assignSerializer(jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignNullSerializer(JsonSerializer<Object> jsonSerializer) {
            this._delegate.assignNullSerializer(jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView == null || this._view.isAssignableFrom(activeView)) {
                this._delegate.serializeAsField(obj, jsonGenerator, serializerProvider);
            } else {
                this._delegate.serializeAsOmittedField(obj, jsonGenerator, serializerProvider);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView == null || this._view.isAssignableFrom(activeView)) {
                this._delegate.serializeAsElement(obj, jsonGenerator, serializerProvider);
            } else {
                this._delegate.serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
            }
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView == null || this._view.isAssignableFrom(activeView)) {
                super.depositSchemaProperty(jsonObjectFormatVisitor, serializerProvider);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class MultiView extends BeanPropertyWriter implements Serializable {
        private static final long serialVersionUID = 1;
        protected final BeanPropertyWriter _delegate;
        protected final Class<?>[] _views;

        protected MultiView(BeanPropertyWriter beanPropertyWriter, Class<?>[] clsArr) {
            super(beanPropertyWriter);
            this._delegate = beanPropertyWriter;
            this._views = clsArr;
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        /* renamed from: rename  reason: collision with other method in class */
        public MultiView mo425rename(NameTransformer nameTransformer) {
            return new MultiView(this._delegate.mo425rename(nameTransformer), this._views);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignSerializer(JsonSerializer<Object> jsonSerializer) {
            this._delegate.assignSerializer(jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter
        public void assignNullSerializer(JsonSerializer<Object> jsonSerializer) {
            this._delegate.assignNullSerializer(jsonSerializer);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsField(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView != null) {
                int i = 0;
                int length = this._views.length;
                while (i < length && !this._views[i].isAssignableFrom(activeView)) {
                    i++;
                }
                if (i == length) {
                    this._delegate.serializeAsOmittedField(obj, jsonGenerator, serializerProvider);
                    return;
                }
            }
            this._delegate.serializeAsField(obj, jsonGenerator, serializerProvider);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter
        public void serializeAsElement(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws Exception {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView != null) {
                int i = 0;
                int length = this._views.length;
                while (i < length && !this._views[i].isAssignableFrom(activeView)) {
                    i++;
                }
                if (i == length) {
                    this._delegate.serializeAsPlaceholder(obj, jsonGenerator, serializerProvider);
                    return;
                }
            }
            this._delegate.serializeAsElement(obj, jsonGenerator, serializerProvider);
        }

        @Override // com.fasterxml.jackson.databind.ser.BeanPropertyWriter, com.fasterxml.jackson.databind.ser.PropertyWriter, com.fasterxml.jackson.databind.BeanProperty
        public void depositSchemaProperty(JsonObjectFormatVisitor jsonObjectFormatVisitor, SerializerProvider serializerProvider) throws JsonMappingException {
            Class<?> activeView = serializerProvider.getActiveView();
            if (activeView != null) {
                int i = 0;
                int length = this._views.length;
                while (i < length && !this._views[i].isAssignableFrom(activeView)) {
                    i++;
                }
                if (i == length) {
                    return;
                }
            }
            super.depositSchemaProperty(jsonObjectFormatVisitor, serializerProvider);
        }
    }
}
