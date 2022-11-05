package com.moat.analytics.mobile.aol;

import java.util.Map;
/* loaded from: classes3.dex */
public interface NativeDisplayTracker {
    void stopTracking();

    boolean track(Map<String, String> map);
}
