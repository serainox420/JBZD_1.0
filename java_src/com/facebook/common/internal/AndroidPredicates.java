package com.facebook.common.internal;

import com.android.internal.util.Predicate;
/* loaded from: classes.dex */
public class AndroidPredicates {
    private AndroidPredicates() {
    }

    public static <T> Predicate<T> True() {
        return new Predicate<T>() { // from class: com.facebook.common.internal.AndroidPredicates.1
            public boolean apply(T t) {
                return true;
            }
        };
    }

    public static <T> Predicate<T> False() {
        return new Predicate<T>() { // from class: com.facebook.common.internal.AndroidPredicates.2
            public boolean apply(T t) {
                return false;
            }
        };
    }
}
