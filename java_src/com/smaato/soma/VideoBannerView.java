package com.smaato.soma;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes3.dex */
public class VideoBannerView extends BannerView {
    private t m;

    public VideoBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l();
    }

    public VideoBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l();
    }

    public void setVideoListener(t tVar) {
        this.m = tVar;
    }

    private void l() {
        getAdSettings().a(AdDimension.NOT_SET);
    }

    public t getVideoListener() {
        return this.m;
    }
}
