package com.smaato.soma;

import com.smaato.soma.exception.UnknownAdDimensionException;
import com.smaato.soma.exception.UnknownStringValueForAdDimension;
/* loaded from: classes3.dex */
public enum AdDimension {
    DEFAULT,
    MEDIUMRECTANGLE,
    LEADERBOARD,
    SKYSCRAPER,
    WIDESKYSCRAPER,
    INTERSTITIAL_PORTRAIT,
    INTERSTITIAL_LANDSCAPE,
    NOT_SET;

    public static String getStringForValue(AdDimension adDimension) throws UnknownAdDimensionException {
        try {
            switch (adDimension) {
                case DEFAULT:
                    return "MMA";
                case MEDIUMRECTANGLE:
                    return "MEDRECT";
                case LEADERBOARD:
                    return "LEADER";
                case SKYSCRAPER:
                    return "SKY";
                case WIDESKYSCRAPER:
                    return "WIDESKY";
                case INTERSTITIAL_PORTRAIT:
                    return "";
                default:
                    return "";
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnknownAdDimensionException(e2);
        }
    }

    public static AdDimension getValueForString(String str) throws UnknownStringValueForAdDimension {
        try {
            if (str.equalsIgnoreCase("MMA")) {
                return DEFAULT;
            }
            if (str.equalsIgnoreCase("MEDRECT")) {
                return MEDIUMRECTANGLE;
            }
            if (str.equalsIgnoreCase("LEADER")) {
                return LEADERBOARD;
            }
            if (str.equalsIgnoreCase("SKY")) {
                return SKYSCRAPER;
            }
            if (str.equalsIgnoreCase("WIDESKY")) {
                return WIDESKYSCRAPER;
            }
            if (str.equalsIgnoreCase("")) {
                return INTERSTITIAL_PORTRAIT;
            }
            return null;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnknownStringValueForAdDimension(e2);
        }
    }
}
