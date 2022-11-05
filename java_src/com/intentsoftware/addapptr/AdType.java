package com.intentsoftware.addapptr;

import java.util.Locale;
/* loaded from: classes.dex */
public enum AdType {
    FULLSCREEN,
    BANNER,
    NATIVE,
    NATIVE_BANNER,
    NATIVE_INTERSTITIAL;

    public String getReportPrefix() {
        try {
            i iVar = (i) getClass().getField(name()).getAnnotation(i.class);
            if (iVar != null) {
                return iVar.reportPrefix();
            }
            throw new RuntimeException(String.format(Locale.US, "%s ad size is missing AdTypeInfo annotation.", name()));
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(String.format(Locale.US, "%s is missing %s field.", getClass().getName(), name()));
        }
    }
}
