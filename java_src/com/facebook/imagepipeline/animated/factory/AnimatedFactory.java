package com.facebook.imagepipeline.animated.factory;

import android.content.Context;
import javax.annotation.concurrent.NotThreadSafe;
@NotThreadSafe
/* loaded from: classes.dex */
public interface AnimatedFactory {
    AnimatedDrawableFactory getAnimatedDrawableFactory(Context context);

    AnimatedImageFactory getAnimatedImageFactory();
}
