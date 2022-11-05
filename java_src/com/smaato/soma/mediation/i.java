package com.smaato.soma.mediation;

import java.lang.reflect.Constructor;
/* compiled from: MediationEventBannerFactory.java */
/* loaded from: classes3.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f5184a = new i();

    public static f a(String str) throws Exception {
        return f5184a.b(str);
    }

    protected f b(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(f.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (f) declaredConstructor.newInstance(new Object[0]);
    }
}
