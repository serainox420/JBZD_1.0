package com.loopme.common;

import android.text.TextUtils;
import android.util.Log;
import com.loopme.debugging.LiveDebug;
/* loaded from: classes2.dex */
public class Logging {
    private static final String PREFIX = "Debug.LoopMe.";

    private Logging() {
    }

    public static void out(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            String str3 = PREFIX + str;
            if (StaticParams.DEBUG_MODE) {
                Log.i(str3, str2);
            }
            LiveDebug.handle(str3, str2);
        }
    }
}
