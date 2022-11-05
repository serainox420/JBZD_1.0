package com.amazon.device.ads;

import java.util.Locale;
/* loaded from: classes.dex */
enum ForceOrientation {
    PORTRAIT,
    LANDSCAPE,
    NONE;

    @Override // java.lang.Enum
    public String toString() {
        return name().toLowerCase(Locale.US);
    }
}
