package com.mopub.mobileads;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.resource.RadialCountdownDrawable;
/* loaded from: classes.dex */
public class VastVideoRadialCountdownWidget extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private RadialCountdownDrawable f4482a;
    private int b;

    public VastVideoRadialCountdownWidget(Context context) {
        super(context);
        setId((int) Utils.generateUniqueId());
        int dipsToIntPixels = Dips.dipsToIntPixels(45.0f, context);
        int dipsToIntPixels2 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels3 = Dips.dipsToIntPixels(16.0f, context);
        int dipsToIntPixels4 = Dips.dipsToIntPixels(5.0f, context);
        this.f4482a = new RadialCountdownDrawable(context);
        setImageDrawable(this.f4482a);
        setPadding(dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4, dipsToIntPixels4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dipsToIntPixels, dipsToIntPixels);
        layoutParams.setMargins(0, dipsToIntPixels2, dipsToIntPixels3, 0);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f4482a.setInitialCountdown(i);
        setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2) {
        if (i2 >= this.b) {
            if (i - i2 < 0) {
                setVisibility(8);
                return;
            }
            this.f4482a.updateCountdownProgress(i2);
            this.b = i2;
        }
    }

    @VisibleForTesting
    @Deprecated
    RadialCountdownDrawable getImageViewDrawable() {
        return this.f4482a;
    }

    @VisibleForTesting
    @Deprecated
    void setImageViewDrawable(RadialCountdownDrawable radialCountdownDrawable) {
        this.f4482a = radialCountdownDrawable;
    }
}
