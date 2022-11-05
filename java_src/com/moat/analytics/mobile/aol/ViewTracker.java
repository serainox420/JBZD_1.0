package com.moat.analytics.mobile.aol;

import android.graphics.Rect;
import android.view.View;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
/* loaded from: classes3.dex */
interface ViewTracker {
    void changeTargetView(View view);

    Rect getAdViewRect() throws MoatException;

    void stopTracking();

    boolean track() throws MoatException;
}
