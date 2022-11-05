package com.amazon.device.ads;

import com.intentsoftware.addapptr.AATKit;
import com.openx.view.mraid.JSInterface;
/* loaded from: classes.dex */
public class AdSize {
    private int gravity;
    private int height;
    private final MobileAdsLogger logger;
    private int maxWidth;
    private Modality modality;
    private Scaling scaling;
    private SizeType type;
    private int width;
    private static final String LOGTAG = AdSize.class.getSimpleName();
    public static final AdSize SIZE_320x50 = new AdSize(320, 50);
    public static final AdSize SIZE_300x250 = new AdSize(300, 250);
    public static final AdSize SIZE_600x90 = new AdSize((int) AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS, 90);
    public static final AdSize SIZE_728x90 = new AdSize(728, 90);
    public static final AdSize SIZE_1024x50 = new AdSize(1024, 50);
    public static final AdSize SIZE_AUTO = new AdSize(SizeType.AUTO);
    public static final AdSize SIZE_AUTO_NO_SCALE = new AdSize(SizeType.AUTO, Scaling.NO_UPSCALE);
    static final AdSize SIZE_INTERSTITIAL = new AdSize(SizeType.INTERSTITIAL, Modality.MODAL);
    static final AdSize SIZE_MODELESS_INTERSTITIAL = new AdSize(SizeType.INTERSTITIAL);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum Modality {
        MODAL,
        MODELESS
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum Scaling {
        CAN_UPSCALE,
        NO_UPSCALE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum SizeType {
        EXPLICIT,
        AUTO,
        INTERSTITIAL
    }

    public AdSize(int i, int i2) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        initialize(i, i2);
    }

    AdSize(String str, String str2) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        initialize(NumberUtils.parseInt(str, 0), NumberUtils.parseInt(str2, 0));
    }

    AdSize(SizeType sizeType) {
        this.gravity = 17;
        this.type = SizeType.EXPLICIT;
        this.modality = Modality.MODELESS;
        this.scaling = Scaling.CAN_UPSCALE;
        this.logger = new MobileAdsLoggerFactory().createMobileAdsLogger(LOGTAG);
        this.type = sizeType;
    }

    AdSize(SizeType sizeType, Modality modality) {
        this(sizeType);
        this.modality = modality;
    }

    AdSize(SizeType sizeType, Scaling scaling) {
        this(sizeType);
        this.scaling = scaling;
    }

    private AdSize deepClone() {
        AdSize adSize = new AdSize(this.type);
        adSize.width = this.width;
        adSize.height = this.height;
        adSize.gravity = this.gravity;
        adSize.modality = this.modality;
        adSize.scaling = this.scaling;
        adSize.maxWidth = this.maxWidth;
        return adSize;
    }

    private void initialize(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            this.logger.e("The width and height must be positive integers.");
            throw new IllegalArgumentException("The width and height must be positive integers.");
        }
        this.width = i;
        this.height = i2;
        this.type = SizeType.EXPLICIT;
    }

    public AdSize newGravity(int i) {
        AdSize deepClone = deepClone();
        deepClone.gravity = i;
        return deepClone;
    }

    public int getGravity() {
        return this.gravity;
    }

    public String toString() {
        switch (this.type) {
            case EXPLICIT:
                return getAsSizeString(this.width, this.height);
            case AUTO:
                return "auto";
            case INTERSTITIAL:
                return "interstitial";
            default:
                return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof AdSize) {
            AdSize adSize = (AdSize) obj;
            if (!this.type.equals(adSize.type)) {
                return false;
            }
            return (!this.type.equals(SizeType.EXPLICIT) || (this.width == adSize.width && this.height == adSize.height)) && this.gravity == adSize.gravity && this.maxWidth == adSize.maxWidth && this.scaling == adSize.scaling && this.modality == adSize.modality;
        }
        return false;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public boolean isAuto() {
        return this.type == SizeType.AUTO;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isModal() {
        return Modality.MODAL.equals(this.modality);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SizeType getSizeType() {
        return this.type;
    }

    public boolean canUpscale() {
        return Scaling.CAN_UPSCALE.equals(this.scaling);
    }

    public AdSize disableScaling() {
        AdSize deepClone = deepClone();
        deepClone.scaling = Scaling.NO_UPSCALE;
        return deepClone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSize newMaxWidth(int i) {
        AdSize deepClone = deepClone();
        deepClone.maxWidth = i;
        return deepClone;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMaxWidth() {
        return this.maxWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getAsSizeString(int i, int i2) {
        return Integer.toString(i) + JSInterface.JSON_X + Integer.toString(i2);
    }
}
