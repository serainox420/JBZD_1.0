package com.intentsoftware.addapptr;

import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2.dex */
public enum BannerSize {
    Banner320x53("320x53", 320, 53),
    Banner768x90("768x90", 768, 90),
    Banner300x250("300x250", 300, 250),
    Banner468x60("468x60", 468, 60),
    MutlipleSizes("Multiple-Sizes", 0, 0),
    Banner320x75("320x75", 320, 75),
    Banner320x100("320x100", 320, 100),
    Banner320x150("320x150", 320, DrawableConstants.CtaButton.WIDTH_DIPS);
    
    private final String configName;
    private final int height;
    private final int width;

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    BannerSize(String str, int i, int i2) {
        this.configName = str;
        this.width = i;
        this.height = i2;
    }

    public static BannerSize fromServerConfigName(String str) {
        BannerSize[] values;
        for (BannerSize bannerSize : values()) {
            if (bannerSize.configName.equals(str)) {
                return bannerSize;
            }
        }
        return null;
    }
}
