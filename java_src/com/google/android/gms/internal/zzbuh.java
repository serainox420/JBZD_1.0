package com.google.android.gms.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public final class zzbuh {
    private final Field zzcoS;

    public zzbuh(Field field) {
        zzbvi.zzw(field);
        this.zzcoS = field;
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return (T) this.zzcoS.getAnnotation(cls);
    }
}
