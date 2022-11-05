package com.amazon.device.ads;

import android.content.Context;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdControllerFactory {
    private static AdController cachedAdController = null;
    private static AdControlAccessor cachedAdControlAccessor = null;

    public static void cacheAdController(AdController adController) {
        cachedAdController = adController;
    }

    public static void cacheAdControlAccessor(AdControlAccessor adControlAccessor) {
        cachedAdControlAccessor = adControlAccessor;
    }

    public static AdController getCachedAdController() {
        return cachedAdController;
    }

    public static AdControlAccessor getCachedAdControlAccessor() {
        return cachedAdControlAccessor;
    }

    public static AdController removeCachedAdController() {
        AdController adController = cachedAdController;
        cachedAdController = null;
        return adController;
    }

    public static AdControlAccessor removeCachedAdControlAccessor() {
        AdControlAccessor adControlAccessor = cachedAdControlAccessor;
        cachedAdControlAccessor = null;
        return adControlAccessor;
    }

    public AdController buildAdController(Context context, AdSize adSize) {
        try {
            return new AdController(context, adSize);
        } catch (IllegalStateException e) {
            return null;
        }
    }
}
