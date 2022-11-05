package com.google.android.gms.games.internal.constants;
/* loaded from: classes2.dex */
public final class LeaderboardCollection {
    private LeaderboardCollection() {
    }

    public static String zziL(int i) {
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "PUBLIC";
            case 1:
                return "SOCIAL";
            case 2:
                return "SOCIAL_1P";
            default:
                throw new IllegalArgumentException(new StringBuilder(43).append("Unknown leaderboard collection: ").append(i).toString());
        }
    }
}
