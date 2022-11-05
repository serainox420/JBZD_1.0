package com.mopub.nativeads;

import android.view.View;
/* loaded from: classes3.dex */
public interface ImpressionInterface {
    int getImpressionMinPercentageViewed();

    int getImpressionMinTimeViewed();

    boolean isImpressionRecorded();

    void recordImpression(View view);

    void setImpressionRecorded();
}
