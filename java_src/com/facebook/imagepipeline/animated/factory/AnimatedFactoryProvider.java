package com.facebook.imagepipeline.animated.factory;

import com.facebook.imagepipeline.bitmaps.PlatformBitmapFactory;
import com.facebook.imagepipeline.core.ExecutorSupplier;
/* loaded from: classes.dex */
public class AnimatedFactoryProvider {
    private static AnimatedFactory sImpl = null;
    private static boolean sImplLoaded;

    public static AnimatedFactory getAnimatedFactory(PlatformBitmapFactory platformBitmapFactory, ExecutorSupplier executorSupplier) {
        if (!sImplLoaded) {
            try {
                sImpl = (AnimatedFactory) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImplSupport").getConstructor(PlatformBitmapFactory.class, ExecutorSupplier.class).newInstance(platformBitmapFactory, executorSupplier);
            } catch (Throwable th) {
            }
            if (sImpl != null) {
                sImplLoaded = true;
                return sImpl;
            }
            try {
                sImpl = (AnimatedFactory) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl").getConstructor(PlatformBitmapFactory.class, ExecutorSupplier.class).newInstance(platformBitmapFactory, executorSupplier);
            } catch (Throwable th2) {
            }
            sImplLoaded = true;
        }
        return sImpl;
    }
}
