package com.google.android.exoplayer2.source.a;

import android.util.Log;
import com.google.android.exoplayer2.upstream.HttpDataSource;
/* compiled from: ChunkedTrackBlacklistUtil.java */
/* loaded from: classes2.dex */
public final class h {
    public static boolean a(com.google.android.exoplayer2.b.f fVar, int i, Exception exc) {
        return a(fVar, i, exc, 60000L);
    }

    public static boolean a(com.google.android.exoplayer2.b.f fVar, int i, Exception exc, long j) {
        if (a(exc)) {
            boolean a2 = fVar.a(i, j);
            int i2 = ((HttpDataSource.InvalidResponseCodeException) exc).responseCode;
            if (a2) {
                Log.w("ChunkedTrackBlacklist", "Blacklisted: duration=" + j + ", responseCode=" + i2 + ", format=" + fVar.a(i));
                return a2;
            }
            Log.w("ChunkedTrackBlacklist", "Blacklisting failed (cannot blacklist last enabled track): responseCode=" + i2 + ", format=" + fVar.a(i));
            return a2;
        }
        return false;
    }

    public static boolean a(Exception exc) {
        if (exc instanceof HttpDataSource.InvalidResponseCodeException) {
            int i = ((HttpDataSource.InvalidResponseCodeException) exc).responseCode;
            return i == 404 || i == 410;
        }
        return false;
    }
}
