package com.google.android.gms.internal;

import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.games.GamesStatusCodes;
/* loaded from: classes2.dex */
public final class zzadj extends CommonStatusCodes {
    public static String getStatusCodeString(int i) {
        switch (i) {
            case -6508:
                return "SUCCESS_CACHE_STALE";
            case -6506:
                return "SUCCESS_CACHE";
            case -6505:
                return "SUCCESS_FRESH";
            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_PARTICIPANT_STATE /* 6500 */:
                return "NOT_AUTHORIZED_TO_FETCH";
            case GamesStatusCodes.STATUS_MATCH_ERROR_INACTIVE_MATCH /* 6501 */:
                return "ANOTHER_FETCH_INFLIGHT";
            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_STATE /* 6502 */:
                return "FETCH_THROTTLED";
            case GamesStatusCodes.STATUS_MATCH_ERROR_OUT_OF_DATE_VERSION /* 6503 */:
                return "NOT_AVAILABLE";
            case GamesStatusCodes.STATUS_MATCH_ERROR_INVALID_MATCH_RESULTS /* 6504 */:
                return "FAILURE_CACHE";
            case GamesStatusCodes.STATUS_MATCH_ERROR_LOCALLY_MODIFIED /* 6507 */:
                return "FETCH_THROTTLED_STALE";
            default:
                return CommonStatusCodes.getStatusCodeString(i);
        }
    }
}
