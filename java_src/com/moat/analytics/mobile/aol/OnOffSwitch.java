package com.moat.analytics.mobile.aol;

import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface OnOffSwitch {

    /* loaded from: classes3.dex */
    public interface MoatOnOrOffListener {
        long getTimeRegistered();

        void onMoatOff() throws MoatException;

        void onMoatOn() throws MoatException;

        boolean wasTriggered();
    }

    /* loaded from: classes3.dex */
    public enum OnOrOff {
        OFF,
        ON
    }

    OnOrOff getStatus();

    int getVWIntervalMillis();

    boolean isDebugActive();

    void register(MoatOnOrOffListener moatOnOrOffListener) throws MoatException;

    void setDebugLogging(boolean z);
}
