package com.pubmatic.sdk.common.pubmatic;

import com.facebook.imageutils.JfifUtil;
import com.google.android.gms.identity.intents.AddressConstants;
import com.intentsoftware.addapptr.AATKit;
/* loaded from: classes3.dex */
public final class PUBAdSize {
    private int adHeight;
    private int adWidth;
    public static final PUBAdSize PUBBANNER_SIZE_320x50 = new PUBAdSize(320, 50);
    public static final PUBAdSize PUBBANNER_SIZE_300x50 = new PUBAdSize(300, 50);
    public static final PUBAdSize PUBBANNER_SIZE_300x250 = new PUBAdSize(300, 250);
    public static final PUBAdSize PUBBANNER_SIZE_38x38 = new PUBAdSize(38, 38);
    public static final PUBAdSize PUBBANNER_SIZE_320x416 = new PUBAdSize(320, 416);
    public static final PUBAdSize PUBBANNER_SIZE_320x100 = new PUBAdSize(320, 100);
    public static final PUBAdSize PUBBANNER_SIZE_320x53 = new PUBAdSize(320, 53);
    public static final PUBAdSize PUBBANNER_SIZE_480x32 = new PUBAdSize(480, 32);
    public static final PUBAdSize PUBBANNER_SIZE_768x66 = new PUBAdSize(768, 66);
    public static final PUBAdSize PUBBANNER_SIZE_768x90 = new PUBAdSize(768, 90);
    public static final PUBAdSize PUBBANNER_SIZE_728x90 = new PUBAdSize(728, 90);
    public static final PUBAdSize PUBBANNER_SIZE_1024x90 = new PUBAdSize(1024, 90);
    public static final PUBAdSize PUBBANNER_SIZE_1024x66 = new PUBAdSize(1024, 66);
    public static final PUBAdSize PUBBANNER_SIZE_160x600 = new PUBAdSize(160, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS);
    public static final PUBAdSize PUBBANNER_SIZE_120x60 = new PUBAdSize(120, 60);
    public static final PUBAdSize PUBBANNER_SIZE_555x206 = new PUBAdSize(AddressConstants.ErrorCodes.ERROR_CODE_NO_APPLICABLE_ADDRESSES, 206);
    public static final PUBAdSize PUBBANNER_SIZE_500x500 = new PUBAdSize(500, 500);
    public static final PUBAdSize PUBBANNER_SIZE_250x250 = new PUBAdSize(250, 250);
    public static final PUBAdSize PUBBANNER_SIZE_216x36 = new PUBAdSize(JfifUtil.MARKER_SOI, 36);
    public static final PUBAdSize PUBBANNER_SIZE_210x175 = new PUBAdSize(210, 175);
    public static final PUBAdSize PUBBANNER_SIZE_200x120 = new PUBAdSize(200, 120);
    public static final PUBAdSize PUBBANNER_SIZE_185x30 = new PUBAdSize(185, 30);
    public static final PUBAdSize PUBBANNER_SIZE_168x28 = new PUBAdSize(168, 28);
    public static final PUBAdSize PUBBANNER_SIZE_120x20 = new PUBAdSize(120, 20);

    private PUBAdSize() {
    }

    private PUBAdSize(int i, int i2) {
        this.adWidth = i;
        this.adHeight = i2;
    }

    public int getAdWidth() {
        return this.adWidth;
    }

    public int getAdHeight() {
        return this.adHeight;
    }
}
