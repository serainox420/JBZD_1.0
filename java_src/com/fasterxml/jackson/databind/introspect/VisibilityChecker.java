package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public interface VisibilityChecker<T extends VisibilityChecker<T>> {
    boolean isCreatorVisible(AnnotatedMember annotatedMember);

    boolean isCreatorVisible(Member member);

    boolean isFieldVisible(AnnotatedField annotatedField);

    boolean isFieldVisible(Field field);

    boolean isGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isGetterVisible(Method method);

    boolean isIsGetterVisible(AnnotatedMethod annotatedMethod);

    boolean isIsGetterVisible(Method method);

    boolean isSetterVisible(AnnotatedMethod annotatedMethod);

    boolean isSetterVisible(Method method);

    /* renamed from: with */
    T mo355with(JsonAutoDetect.Visibility visibility);

    /* renamed from: with */
    T mo356with(JsonAutoDetect jsonAutoDetect);

    /* renamed from: withCreatorVisibility */
    T mo357withCreatorVisibility(JsonAutoDetect.Visibility visibility);

    /* renamed from: withFieldVisibility */
    T mo358withFieldVisibility(JsonAutoDetect.Visibility visibility);

    /* renamed from: withGetterVisibility */
    T mo359withGetterVisibility(JsonAutoDetect.Visibility visibility);

    /* renamed from: withIsGetterVisibility */
    T mo360withIsGetterVisibility(JsonAutoDetect.Visibility visibility);

    /* renamed from: withSetterVisibility */
    T mo361withSetterVisibility(JsonAutoDetect.Visibility visibility);

    /* renamed from: withVisibility */
    T mo362withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility);

    @JsonAutoDetect(creatorVisibility = JsonAutoDetect.Visibility.ANY, fieldVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, getterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, isGetterVisibility = JsonAutoDetect.Visibility.PUBLIC_ONLY, setterVisibility = JsonAutoDetect.Visibility.ANY)
    /* loaded from: classes.dex */
    public static class Std implements VisibilityChecker<Std>, Serializable {
        protected static final Std DEFAULT = new Std((JsonAutoDetect) Std.class.getAnnotation(JsonAutoDetect.class));
        private static final long serialVersionUID = 1;
        protected final JsonAutoDetect.Visibility _creatorMinLevel;
        protected final JsonAutoDetect.Visibility _fieldMinLevel;
        protected final JsonAutoDetect.Visibility _getterMinLevel;
        protected final JsonAutoDetect.Visibility _isGetterMinLevel;
        protected final JsonAutoDetect.Visibility _setterMinLevel;

        public static Std defaultInstance() {
            return DEFAULT;
        }

        public Std(JsonAutoDetect jsonAutoDetect) {
            this._getterMinLevel = jsonAutoDetect.getterVisibility();
            this._isGetterMinLevel = jsonAutoDetect.isGetterVisibility();
            this._setterMinLevel = jsonAutoDetect.setterVisibility();
            this._creatorMinLevel = jsonAutoDetect.creatorVisibility();
            this._fieldMinLevel = jsonAutoDetect.fieldVisibility();
        }

        public Std(JsonAutoDetect.Visibility visibility, JsonAutoDetect.Visibility visibility2, JsonAutoDetect.Visibility visibility3, JsonAutoDetect.Visibility visibility4, JsonAutoDetect.Visibility visibility5) {
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility2;
            this._setterMinLevel = visibility3;
            this._creatorMinLevel = visibility4;
            this._fieldMinLevel = visibility5;
        }

        public Std(JsonAutoDetect.Visibility visibility) {
            if (visibility == JsonAutoDetect.Visibility.DEFAULT) {
                this._getterMinLevel = DEFAULT._getterMinLevel;
                this._isGetterMinLevel = DEFAULT._isGetterMinLevel;
                this._setterMinLevel = DEFAULT._setterMinLevel;
                this._creatorMinLevel = DEFAULT._creatorMinLevel;
                this._fieldMinLevel = DEFAULT._fieldMinLevel;
                return;
            }
            this._getterMinLevel = visibility;
            this._isGetterMinLevel = visibility;
            this._setterMinLevel = visibility;
            this._creatorMinLevel = visibility;
            this._fieldMinLevel = visibility;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: with */
        public Std mo356with(JsonAutoDetect jsonAutoDetect) {
            if (jsonAutoDetect != null) {
                return mo359withGetterVisibility(jsonAutoDetect.getterVisibility()).mo360withIsGetterVisibility(jsonAutoDetect.isGetterVisibility()).mo361withSetterVisibility(jsonAutoDetect.setterVisibility()).mo357withCreatorVisibility(jsonAutoDetect.creatorVisibility()).mo358withFieldVisibility(jsonAutoDetect.fieldVisibility());
            }
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: with */
        public Std mo355with(JsonAutoDetect.Visibility visibility) {
            return visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT : new Std(visibility);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withVisibility */
        public Std mo362withVisibility(PropertyAccessor propertyAccessor, JsonAutoDetect.Visibility visibility) {
            switch (propertyAccessor) {
                case GETTER:
                    return mo359withGetterVisibility(visibility);
                case SETTER:
                    return mo361withSetterVisibility(visibility);
                case CREATOR:
                    return mo357withCreatorVisibility(visibility);
                case FIELD:
                    return mo358withFieldVisibility(visibility);
                case IS_GETTER:
                    return mo360withIsGetterVisibility(visibility);
                case ALL:
                    return mo355with(visibility);
                default:
                    return this;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withGetterVisibility */
        public Std mo359withGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT._getterMinLevel : visibility;
            return this._getterMinLevel == visibility2 ? this : new Std(visibility2, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withIsGetterVisibility */
        public Std mo360withIsGetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT._isGetterMinLevel : visibility;
            return this._isGetterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, visibility2, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withSetterVisibility */
        public Std mo361withSetterVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT._setterMinLevel : visibility;
            return this._setterMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, visibility2, this._creatorMinLevel, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withCreatorVisibility */
        public Std mo357withCreatorVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT._creatorMinLevel : visibility;
            return this._creatorMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, visibility2, this._fieldMinLevel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        /* renamed from: withFieldVisibility */
        public Std mo358withFieldVisibility(JsonAutoDetect.Visibility visibility) {
            JsonAutoDetect.Visibility visibility2 = visibility == JsonAutoDetect.Visibility.DEFAULT ? DEFAULT._fieldMinLevel : visibility;
            return this._fieldMinLevel == visibility2 ? this : new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, visibility2);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(Member member) {
            return this._creatorMinLevel.isVisible(member);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isCreatorVisible(AnnotatedMember annotatedMember) {
            return isCreatorVisible(annotatedMember.mo333getMember());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(Field field) {
            return this._fieldMinLevel.isVisible(field);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isFieldVisible(AnnotatedField annotatedField) {
            return isFieldVisible(annotatedField.mo354getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(Method method) {
            return this._getterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isGetterVisible(AnnotatedMethod annotatedMethod) {
            return isGetterVisible(annotatedMethod.mo354getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(Method method) {
            return this._isGetterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isIsGetterVisible(AnnotatedMethod annotatedMethod) {
            return isIsGetterVisible(annotatedMethod.mo354getAnnotated());
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(Method method) {
            return this._setterMinLevel.isVisible(method);
        }

        @Override // com.fasterxml.jackson.databind.introspect.VisibilityChecker
        public boolean isSetterVisible(AnnotatedMethod annotatedMethod) {
            return isSetterVisible(annotatedMethod.mo354getAnnotated());
        }

        public String toString() {
            return "[Visibility: getter: " + this._getterMinLevel + ", isGetter: " + this._isGetterMinLevel + ", setter: " + this._setterMinLevel + ", creator: " + this._creatorMinLevel + ", field: " + this._fieldMinLevel + "]";
        }
    }
}
