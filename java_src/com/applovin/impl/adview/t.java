package com.applovin.impl.adview;

import android.content.res.Resources;
/* loaded from: classes.dex */
class t {
    public static float a(Resources resources, float f) {
        return (resources.getDisplayMetrics().density * f) + 0.5f;
    }

    public static float b(Resources resources, float f) {
        return resources.getDisplayMetrics().scaledDensity * f;
    }
}
