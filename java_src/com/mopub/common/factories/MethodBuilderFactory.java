package com.mopub.common.factories;

import com.mopub.common.util.Reflection;
/* loaded from: classes.dex */
public class MethodBuilderFactory {

    /* renamed from: a  reason: collision with root package name */
    protected static MethodBuilderFactory f4383a = new MethodBuilderFactory();

    @Deprecated
    public static void setInstance(MethodBuilderFactory methodBuilderFactory) {
        f4383a = methodBuilderFactory;
    }

    public static Reflection.MethodBuilder create(Object obj, String str) {
        return f4383a.a(obj, str);
    }

    protected Reflection.MethodBuilder a(Object obj, String str) {
        return new Reflection.MethodBuilder(obj, str);
    }
}
