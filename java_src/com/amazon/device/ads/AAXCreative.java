package com.amazon.device.ads;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
enum AAXCreative {
    HTML(1007),
    MRAID1(1016),
    MRAID2(1017),
    INTERSTITIAL(1008),
    CAN_PLAY_AUDIO1(1001),
    CAN_PLAY_AUDIO2(1002),
    CAN_EXPAND1(1003),
    CAN_EXPAND2(1004),
    CAN_PLAY_VIDEO(1014),
    VIDEO_INTERSTITIAL(1030),
    REQUIRES_TRANSPARENCY(AdProperties.REQUIRES_TRANSPARENCY);
    
    private static final HashSet<AAXCreative> primaryCreativeTypes = new HashSet<>();
    private final int id;

    static {
        primaryCreativeTypes.add(HTML);
        primaryCreativeTypes.add(MRAID1);
        primaryCreativeTypes.add(MRAID2);
        primaryCreativeTypes.add(INTERSTITIAL);
        primaryCreativeTypes.add(VIDEO_INTERSTITIAL);
    }

    AAXCreative(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }

    public static boolean containsPrimaryCreativeType(Set<AAXCreative> set) {
        Iterator<AAXCreative> it = primaryCreativeTypes.iterator();
        while (it.hasNext()) {
            if (set.contains(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static AAXCreative getCreativeType(int i) {
        switch (i) {
            case 1001:
                return CAN_PLAY_AUDIO1;
            case 1002:
                return CAN_PLAY_AUDIO2;
            case 1003:
                return CAN_EXPAND1;
            case 1004:
                return CAN_EXPAND2;
            case 1007:
                return HTML;
            case 1008:
                return INTERSTITIAL;
            case 1014:
                return CAN_PLAY_VIDEO;
            case 1016:
                return MRAID1;
            case 1017:
                return MRAID2;
            case 1030:
                return VIDEO_INTERSTITIAL;
            case AdProperties.REQUIRES_TRANSPARENCY /* 1031 */:
                return REQUIRES_TRANSPARENCY;
            default:
                return null;
        }
    }

    static AAXCreative getTopCreative(Set<AAXCreative> set) {
        if (set.contains(MRAID2)) {
            return MRAID2;
        }
        if (set.contains(MRAID1)) {
            return MRAID1;
        }
        if (set.contains(HTML)) {
            return HTML;
        }
        return null;
    }
}
