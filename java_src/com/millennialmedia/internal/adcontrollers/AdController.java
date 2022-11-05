package com.millennialmedia.internal.adcontrollers;

import com.millennialmedia.MMLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class AdController {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4128a = AdController.class.getSimpleName();
    private static List<AdController> b = new ArrayList();

    public abstract boolean canHandleContent(String str);

    public static void registerPackagedControllers() {
        registerController(new LightboxController());
        registerController(new VASTVideoController());
        registerController(new NativeController());
        registerController(new WebController());
    }

    public static void registerController(AdController adController) {
        if (adController == null) {
            throw new IllegalArgumentException("Unable to register ad controller, specified controller cannot be null");
        }
        if (b.contains(adController)) {
            MMLog.w(f4128a, "Ad controller <" + adController.getClass() + "> already registered");
            return;
        }
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4128a, "Registering ad controller <" + adController.getClass() + ">");
        }
        b.add(adController);
    }

    public static Class<?> getControllerClassForContent(String str) {
        Class<?> cls;
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4128a, "Attempting to get controller class for ad content.\n" + str);
        }
        Iterator<AdController> it = b.iterator();
        while (true) {
            if (!it.hasNext()) {
                cls = null;
                break;
            }
            AdController next = it.next();
            if (next.canHandleContent(str)) {
                cls = next.getClass();
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(f4128a, "Found controller class <" + cls.getName() + "> for ad content");
                }
            }
        }
        if (cls == null) {
            MMLog.e(f4128a, "Unable to find AdController for content <" + str + ">");
        }
        return cls;
    }
}
