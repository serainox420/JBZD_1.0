package com.amazon.device.ads;

import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes.dex */
public class AdProperties {
    public static final int CAN_EXPAND1 = 1003;
    public static final int CAN_EXPAND2 = 1004;
    public static final int CAN_PLAY_AUDIO1 = 1001;
    public static final int CAN_PLAY_AUDIO2 = 1002;
    public static final int CAN_PLAY_VIDEO = 1014;
    public static final int HTML = 1007;
    public static final int INTERSTITIAL = 1008;
    private static final String LOGTAG = AdProperties.class.getSimpleName();
    public static final int MRAID1 = 1016;
    public static final int MRAID2 = 1017;
    public static final int REQUIRES_TRANSPARENCY = 1031;
    public static final int VIDEO_INTERSTITIAL = 1030;
    private AdType adType_;
    private boolean canExpand_;
    private boolean canPlayAudio_;
    private boolean canPlayVideo_;
    private final MobileAdsLogger logger;

    /* loaded from: classes.dex */
    public enum AdType {
        IMAGE_BANNER("Image Banner"),
        MRAID_1("MRAID 1.0"),
        MRAID_2("MRAID 2.0"),
        INTERSTITIAL("Interstitial", "i"),
        MODELESS_INTERSTITIAL("Modeless Interstitial", "mi");
        
        private final String adTypeMetricTag;
        private final String type;

        AdType(String str) {
            this(str, null);
        }

        AdType(String str, String str2) {
            this.type = str;
            this.adTypeMetricTag = str2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAdTypeMetricTag() {
            return this.adTypeMetricTag;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.type;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdProperties(JSONArray jSONArray) {
        this(jSONArray, new MobileAdsLoggerFactory());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x002b -> B:9:0x0023). Please submit an issue!!! */
    AdProperties(JSONArray jSONArray, MobileAdsLoggerFactory mobileAdsLoggerFactory) {
        this.canExpand_ = false;
        this.canPlayAudio_ = false;
        this.canPlayVideo_ = false;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        if (jSONArray != null) {
            int i = 0;
            while (i < jSONArray.length()) {
                try {
                    switch (jSONArray.getInt(i)) {
                        case 1001:
                        case 1002:
                            this.canPlayAudio_ = true;
                            continue;
                        case 1003:
                        case 1004:
                            this.canExpand_ = true;
                            continue;
                        case 1007:
                            this.adType_ = AdType.IMAGE_BANNER;
                            continue;
                        case 1008:
                            this.adType_ = AdType.INTERSTITIAL;
                            continue;
                        case 1014:
                            this.canPlayVideo_ = true;
                            continue;
                        case 1016:
                            this.adType_ = AdType.MRAID_1;
                            continue;
                        case 1017:
                            this.adType_ = AdType.MRAID_2;
                            continue;
                    }
                } catch (JSONException e) {
                    this.logger.w("Unable to parse creative type: %s", e.getMessage());
                }
                i++;
            }
        }
    }

    void setAdType(AdType adType) {
        this.adType_ = adType;
    }

    public AdType getAdType() {
        return this.adType_;
    }

    void setCanExpand(boolean z) {
        this.canExpand_ = z;
    }

    public boolean canExpand() {
        return this.canExpand_;
    }

    void setCanPlayAudio(boolean z) {
        this.canPlayAudio_ = z;
    }

    public boolean canPlayAudio() {
        return this.canPlayAudio_;
    }

    void setCanPlayVideo(boolean z) {
        this.canPlayVideo_ = z;
    }

    public boolean canPlayVideo() {
        return this.canPlayVideo_;
    }
}
