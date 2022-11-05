package com.millennialmedia.internal.adadapters;

import com.millennialmedia.InlineAd;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.NativeAd;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.adcontrollers.AdController;
import com.millennialmedia.internal.adcontrollers.LightboxController;
import com.millennialmedia.internal.adcontrollers.NativeController;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
import com.millennialmedia.internal.adcontrollers.WebController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class AdAdapter {
    private static final String c = AdAdapter.class.getSimpleName();
    private static List<AdapterRegistration> d = new ArrayList();
    private static List<MediatedAdapterRegistration> e = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    protected String f4116a;
    protected AdMetadata b = new AdMetadata();
    public int requestTimeout = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class AdapterRegistration {

        /* renamed from: a  reason: collision with root package name */
        Class<?> f4117a;
        Class<?> b;
        Class<?> c;

        AdapterRegistration(Class<?> cls, Class<?> cls2, Class<?> cls3) {
            this.f4117a = cls;
            this.b = cls2;
            this.c = cls3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class MediatedAdapterRegistration {

        /* renamed from: a  reason: collision with root package name */
        String f4118a;
        Class<?> b;
        Class<?> c;

        MediatedAdapterRegistration(String str, Class<?> cls, Class<?> cls2) {
            this.f4118a = str;
            this.b = cls;
            this.c = cls2;
        }
    }

    public static void registerPackagedAdapters() {
        registerAdapter(InlineAd.class, InlineLightboxAdapter.class, LightboxController.class);
        registerAdapter(InterstitialAd.class, InterstitialVASTVideoAdapter.class, VASTVideoController.class);
        registerAdapter(InlineAd.class, InlineWebAdapter.class, WebController.class);
        registerAdapter(InterstitialAd.class, InterstitialWebAdapter.class, WebController.class);
        registerAdapter(NativeAd.class, NativeNativeAdapter.class, NativeController.class);
    }

    public static void registerAdapter(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        if (!AdPlacement.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unable to register ad adapter, specified placement class is not an instance of AdPlacement");
        }
        if (!AdAdapter.class.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException("Unable to register ad adapter, specified adapter class is not an instance of AdAdapter");
        }
        if (!AdController.class.isAssignableFrom(cls3)) {
            throw new IllegalArgumentException("Unable to register ad adapter, specified controller class is not an instance of AdController");
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(c, "Registering ad adapter <" + cls2 + "> for ad placement <" + cls + "> and ad controller <" + cls3 + ">");
        }
        Iterator<AdapterRegistration> it = d.iterator();
        while (it.hasNext()) {
            AdapterRegistration next = it.next();
            if (next.f4117a == cls && next.b == cls2 && next.c == cls3) {
                it.remove();
            }
        }
        d.add(new AdapterRegistration(cls, cls2, cls3));
    }

    public static void registerMediatedAdapter(String str, Class<?> cls, Class<?> cls2) {
        if (str == null) {
            throw new IllegalArgumentException("Unable to register mediation ad adapter, specified mediation ID cannot be null");
        }
        if (!AdPlacement.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unable to register mediation ad adapter, specified placement class is not an instance of AdPlacement");
        }
        if (!AdAdapter.class.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException("Unable to register mediated ad adapter, specified adapter class is not an instance of AdAdapter");
        }
        if (!MediatedAdAdapter.class.isAssignableFrom(cls2)) {
            throw new IllegalArgumentException("Unable to register mediated ad adapter, specified adapter class does not implement MediatedAdAdapter");
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(c, "Registering ad adapter <" + cls2 + "> for mediation id <" + str + "> and ad placement <" + cls + ">");
        }
        Iterator<MediatedAdapterRegistration> it = e.iterator();
        while (it.hasNext()) {
            MediatedAdapterRegistration next = it.next();
            if (next.f4118a.equalsIgnoreCase(str) && next.b == cls && next.c == cls2) {
                it.remove();
            }
        }
        e.add(new MediatedAdapterRegistration(str, cls, cls2));
    }

    public static AdAdapter getAdapterInstance(Class<?> cls, Class<?> cls2) {
        Class<?> cls3;
        Iterator<AdapterRegistration> it = d.iterator();
        while (true) {
            if (!it.hasNext()) {
                cls3 = null;
                break;
            }
            AdapterRegistration next = it.next();
            boolean equals = next.f4117a.equals(cls);
            boolean equals2 = next.c.equals(cls2);
            if (equals && equals2) {
                cls3 = next.b;
                break;
            }
        }
        try {
            if (cls3 == null) {
                throw new Exception("Unable to find adapter class");
            }
            return (AdAdapter) cls3.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            MMLog.e(c, "Unable to create ad adapter instance for the placement type <" + cls + "> and ad controller type <" + cls2 + ">", e2);
            return null;
        }
    }

    public static AdAdapter getMediatedAdapterInstance(String str, Class<?> cls) {
        Class<?> cls2;
        Iterator<MediatedAdapterRegistration> it = e.iterator();
        while (true) {
            if (!it.hasNext()) {
                cls2 = null;
                break;
            }
            MediatedAdapterRegistration next = it.next();
            if (next.b.equals(cls) && next.f4118a.equals(str)) {
                cls2 = next.c;
                break;
            }
        }
        try {
            if (cls2 == null) {
                throw new Exception("Unable to find ad mediation adapter class");
            }
            return (AdAdapter) cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e2) {
            MMLog.e(c, "Unable to create ad mediation adapter instance for the placement type <" + cls + "> and mediation ID <" + str + ">", e2);
            return null;
        }
    }

    public void setContent(String str) {
        this.f4116a = str;
    }

    public void setAdMetadata(AdMetadata adMetadata) {
        this.b.addAll(adMetadata);
    }
}
