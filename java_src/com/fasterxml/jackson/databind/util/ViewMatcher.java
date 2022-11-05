package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
/* loaded from: classes.dex */
public class ViewMatcher implements Serializable {
    protected static final ViewMatcher EMPTY = new ViewMatcher();
    private static final long serialVersionUID = 1;

    public boolean isVisibleForView(Class<?> cls) {
        return false;
    }

    public static ViewMatcher construct(Class<?>[] clsArr) {
        if (clsArr == null) {
            return EMPTY;
        }
        switch (clsArr.length) {
            case 0:
                return EMPTY;
            case 1:
                return new Single(clsArr[0]);
            default:
                return new Multi(clsArr);
        }
    }

    /* loaded from: classes.dex */
    private static final class Single extends ViewMatcher {
        private static final long serialVersionUID = 1;
        private final Class<?> _view;

        public Single(Class<?> cls) {
            this._view = cls;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            return cls == this._view || this._view.isAssignableFrom(cls);
        }
    }

    /* loaded from: classes.dex */
    private static final class Multi extends ViewMatcher implements Serializable {
        private static final long serialVersionUID = 1;
        private final Class<?>[] _views;

        public Multi(Class<?>[] clsArr) {
            this._views = clsArr;
        }

        @Override // com.fasterxml.jackson.databind.util.ViewMatcher
        public boolean isVisibleForView(Class<?> cls) {
            int length = this._views.length;
            for (int i = 0; i < length; i++) {
                Class<?> cls2 = this._views[i];
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }
}
