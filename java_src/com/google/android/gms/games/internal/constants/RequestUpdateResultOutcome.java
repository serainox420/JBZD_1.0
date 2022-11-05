package com.google.android.gms.games.internal.constants;
/* loaded from: classes2.dex */
public final class RequestUpdateResultOutcome {
    private RequestUpdateResultOutcome() {
    }

    public static boolean isValid(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
                return true;
            default:
                return false;
        }
    }
}
