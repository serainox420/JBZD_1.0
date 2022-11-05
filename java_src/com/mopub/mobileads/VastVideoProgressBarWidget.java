package com.mopub.mobileads;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.ProgressBarDrawable;
/* loaded from: classes.dex */
public class VastVideoProgressBarWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private ProgressBarDrawable f4481a;
    private final int b;

    public VastVideoProgressBarWidget(Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        this.f4481a = new ProgressBarDrawable(context);
        setImageDrawable(this.f4481a);
        this.b = Dips.dipsToIntPixels(4.0f, context);
    }

    public void setAnchorId(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.b);
        layoutParams.addRule(8, i);
        setLayoutParams(layoutParams);
    }

    public void calibrateAndMakeVisible(int i, int i2) {
        this.f4481a.setDurationAndSkipOffset(i, i2);
        setVisibility(0);
    }

    public void updateProgress(int i) {
        this.f4481a.setProgress(i);
    }

    public void reset() {
        this.f4481a.reset();
        this.f4481a.setProgress(0);
    }

    @VisibleForTesting
    @Deprecated
    ProgressBarDrawable getImageViewDrawable() {
        return this.f4481a;
    }

    @VisibleForTesting
    @Deprecated
    void setImageViewDrawable(ProgressBarDrawable progressBarDrawable) {
        this.f4481a = progressBarDrawable;
    }
}
