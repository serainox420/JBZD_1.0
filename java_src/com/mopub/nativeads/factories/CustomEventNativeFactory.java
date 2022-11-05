package com.mopub.nativeads.factories;

import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public class CustomEventNativeFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static CustomEventNativeFactory f4632a = new CustomEventNativeFactory();

    public static CustomEventNative create(String str) throws Exception {
        if (str != null) {
            return f4632a.a(Class.forName(str).asSubclass(CustomEventNative.class));
        }
        return new MoPubCustomEventNative();
    }

    @Deprecated
    public static void setInstance(CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f4632a = customEventNativeFactory;
    }

    protected CustomEventNative a(Class<? extends CustomEventNative> cls) throws Exception {
        Preconditions.checkNotNull(cls);
        Constructor<? extends CustomEventNative> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return declaredConstructor.newInstance(new Object[0]);
    }
}
