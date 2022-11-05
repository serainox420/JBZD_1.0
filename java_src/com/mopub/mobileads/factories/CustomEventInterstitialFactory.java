package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;
/* loaded from: classes.dex */
public class CustomEventInterstitialFactory {

    /* renamed from: a  reason: collision with root package name */
    private static CustomEventInterstitialFactory f4517a = new CustomEventInterstitialFactory();

    public static CustomEventInterstitial create(String str) throws Exception {
        return f4517a.a(str);
    }

    @Deprecated
    public static void setInstance(CustomEventInterstitialFactory customEventInterstitialFactory) {
        f4517a = customEventInterstitialFactory;
    }

    protected CustomEventInterstitial a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial) declaredConstructor.newInstance(new Object[0]);
    }
}
