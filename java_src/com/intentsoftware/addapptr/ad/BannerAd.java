package com.intentsoftware.addapptr.ad;

import android.view.View;
/* loaded from: classes2.dex */
public abstract class BannerAd extends com.intentsoftware.addapptr.ad.a {
    public abstract View getBannerView();

    /* loaded from: classes2.dex */
    public class a {
        final int height;
        final boolean inPixels;
        final int width;

        public a(int i, int i2, boolean z) {
            this.width = i;
            this.height = i2;
            this.inPixels = z;
        }

        public int getWidth() {
            return this.width;
        }

        public int getHeight() {
            return this.height;
        }

        public boolean areDimensionsInPixels() {
            return this.inPixels;
        }
    }

    public a getCustomSize() {
        return null;
    }
}
