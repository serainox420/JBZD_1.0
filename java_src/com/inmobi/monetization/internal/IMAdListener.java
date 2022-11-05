package com.inmobi.monetization.internal;

import java.util.Map;
/* loaded from: classes2.dex */
public interface IMAdListener {
    void onAdInteraction(Map<String, String> map);

    void onAdRequestFailed(AdErrorCode adErrorCode);

    void onAdRequestSucceeded();

    void onDismissAdScreen();

    void onIncentCompleted(Map<Object, Object> map);

    void onLeaveApplication();

    void onShowAdScreen();
}
