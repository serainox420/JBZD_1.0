package com.google.android.gms.games.internal.constants;
/* loaded from: classes2.dex */
public final class MatchResult {
    public static boolean isValid(int i) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return true;
            default:
                return false;
        }
    }
}
