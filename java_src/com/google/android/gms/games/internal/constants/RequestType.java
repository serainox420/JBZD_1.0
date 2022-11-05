package com.google.android.gms.games.internal.constants;

import com.google.android.gms.games.internal.GamesLog;
/* loaded from: classes2.dex */
public final class RequestType {
    private RequestType() {
    }

    public static String zziL(int i) {
        switch (i) {
            case 1:
                return "GIFT";
            case 2:
                return "WISH";
            default:
                GamesLog.zzG("RequestType", new StringBuilder(33).append("Unknown request type: ").append(i).toString());
                return "UNKNOWN_TYPE";
        }
    }
}
