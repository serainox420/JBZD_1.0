package com.revmob;
/* loaded from: classes3.dex */
public enum RevMobParallaxMode {
    DEFAULT("enabled"),
    DISABLED("disabled");
    
    private String value;

    RevMobParallaxMode(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
