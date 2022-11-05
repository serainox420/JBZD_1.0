package com.inmobi.re.controller.util;
/* loaded from: classes2.dex */
public enum TransitionStringEnum {
    DEFAULT("default"),
    DISSOLVE("dissolve"),
    FADE("fade"),
    ROLL("roll"),
    SLIDE("slide"),
    ZOOM("zoom"),
    NONE("none");
    

    /* renamed from: a  reason: collision with root package name */
    private String f3982a;

    TransitionStringEnum(String str) {
        this.f3982a = str;
    }

    public String getText() {
        return this.f3982a;
    }

    public static TransitionStringEnum fromString(String str) {
        TransitionStringEnum[] values;
        if (str != null) {
            for (TransitionStringEnum transitionStringEnum : values()) {
                if (str.equalsIgnoreCase(transitionStringEnum.f3982a)) {
                    return transitionStringEnum;
                }
            }
        }
        return null;
    }
}
