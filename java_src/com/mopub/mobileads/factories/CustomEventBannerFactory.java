package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventBanner;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public class CustomEventBannerFactory {

    /* renamed from: a  reason: collision with root package name */
    private static CustomEventBannerFactory f4515a = new CustomEventBannerFactory();

    public static CustomEventBanner create(String str) throws Exception {
        return f4515a.a(str);
    }

    @Deprecated
    public static void setInstance(CustomEventBannerFactory customEventBannerFactory) {
        f4515a = customEventBannerFactory;
    }

    protected CustomEventBanner a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventBanner.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventBanner) declaredConstructor.newInstance(new Object[0]);
    }
}
