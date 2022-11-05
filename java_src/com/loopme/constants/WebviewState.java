package com.loopme.constants;
/* loaded from: classes2.dex */
public class WebviewState {
    public static final int CLOSED = 3;
    public static final int HIDDEN = 2;
    public static final int VISIBLE = 1;

    private WebviewState() {
    }

    public static String toString(int i) {
        switch (i) {
            case 1:
                return "VISIBLE";
            case 2:
                return "HIDDEN";
            case 3:
                return "CLOSED";
            default:
                return "UNKNOWN";
        }
    }
}
