package com.intentsoftware.addapptr;
/* loaded from: classes.dex */
public enum PlacementSize {
    Banner320x53(BannerSize.Banner320x53),
    Banner768x90(BannerSize.Banner768x90),
    Banner300x250(BannerSize.Banner300x250),
    Fullscreen(null),
    Banner468x60(BannerSize.Banner468x60),
    Native(null),
    MultiSizeBanner(BannerSize.MutlipleSizes);
    
    private final BannerSize bannerSize;

    PlacementSize(BannerSize bannerSize) {
        this.bannerSize = bannerSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isBanner() {
        return this.bannerSize != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BannerSize getBannerSize() {
        return this.bannerSize;
    }
}
