package com.inmobi.re.controller.util;
/* loaded from: classes2.dex */
public enum NavigationStringEnum {
    NONE("none"),
    CLOSE("close"),
    BACK("back"),
    FORWARD("forward"),
    REFRESH("refresh");
    

    /* renamed from: a  reason: collision with root package name */
    private String f3981a;

    NavigationStringEnum(String str) {
        this.f3981a = str;
    }

    public String getText() {
        return this.f3981a;
    }

    public static NavigationStringEnum fromString(String str) {
        NavigationStringEnum[] values;
        if (str != null) {
            for (NavigationStringEnum navigationStringEnum : values()) {
                if (str.equalsIgnoreCase(navigationStringEnum.f3981a)) {
                    return navigationStringEnum;
                }
            }
        }
        return null;
    }
}
