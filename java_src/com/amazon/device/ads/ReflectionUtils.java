package com.amazon.device.ads;
/* loaded from: classes.dex */
class ReflectionUtils {
    public boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }
}
