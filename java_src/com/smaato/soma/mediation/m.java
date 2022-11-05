package com.smaato.soma.mediation;

import java.lang.reflect.Constructor;
/* compiled from: MediationEventInterstitialFactory.java */
/* loaded from: classes3.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static m f5188a = new m();

    public static j a(String str) throws Exception {
        return f5188a.b(str);
    }

    protected j b(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(j.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (j) declaredConstructor.newInstance(new Object[0]);
    }
}
