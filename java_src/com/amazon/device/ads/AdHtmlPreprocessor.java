package com.amazon.device.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdHtmlPreprocessor {
    private static final String LOGTAG = AdHtmlPreprocessor.class.getSimpleName();
    private final AdControlAccessor adControlAccessor;
    private final AdUtils2 adUtils;
    private final AdSDKBridgeList bridgeList;
    private final BridgeSelector bridgeSelector;
    private final MobileAdsLogger logger;

    public AdHtmlPreprocessor(BridgeSelector bridgeSelector, AdSDKBridgeList adSDKBridgeList, AdControlAccessor adControlAccessor, MobileAdsLoggerFactory mobileAdsLoggerFactory, AdUtils2 adUtils2) {
        this.bridgeSelector = bridgeSelector;
        this.bridgeList = adSDKBridgeList;
        this.adControlAccessor = adControlAccessor;
        this.logger = mobileAdsLoggerFactory.createMobileAdsLogger(LOGTAG);
        this.adUtils = adUtils2;
    }

    private void addAdSDKBridge(AdSDKBridge adSDKBridge) {
        this.bridgeList.addBridge(adSDKBridge);
    }

    public String preprocessHtml(String str, boolean z) {
        for (AdSDKBridgeFactory adSDKBridgeFactory : this.bridgeSelector.getBridgeFactories(str)) {
            addAdSDKBridge(adSDKBridgeFactory.createAdSDKBridge(this.adControlAccessor));
        }
        this.logger.d("Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f", Float.valueOf(this.adUtils.getScalingFactorAsFloat()), Integer.valueOf(this.adControlAccessor.getWindowWidth()), Integer.valueOf(this.adControlAccessor.getWindowHeight()), Integer.valueOf((int) (this.adControlAccessor.getAdWidth() * this.adUtils.getScalingFactorAsFloat())), Integer.valueOf((int) (this.adControlAccessor.getAdHeight() * this.adUtils.getScalingFactorAsFloat())), Double.valueOf(this.adControlAccessor.getScalingMultiplier()));
        String str2 = "";
        Iterator<AdSDKBridge> it = this.bridgeList.iterator();
        while (it.hasNext()) {
            AdSDKBridge next = it.next();
            if (next.getSDKEventListener() != null) {
                this.adControlAccessor.addSDKEventListener(next.getSDKEventListener());
            }
            if (next.getJavascript() != null) {
                str2 = str2 + next.getJavascript();
            }
            if (next.hasNativeExecution()) {
                this.adControlAccessor.addJavascriptInterface(next.getJavascriptInteractorExecutor(), z, next.getName());
            }
        }
        return addHeadData(ensureHtmlTags(str), str2);
    }

    private String ensureHtmlTags(String str) {
        String str2;
        String str3;
        String str4 = "";
        if (!StringUtils.containsRegEx("\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]", str)) {
            str4 = "<!DOCTYPE html>";
        }
        if (StringUtils.containsRegEx("<[Hh][Tt][Mm][Ll][\\s>]", str)) {
            str2 = str4;
            str3 = "";
        } else {
            str2 = str4 + "<html>";
            str3 = "</html>";
        }
        if (!StringUtils.containsRegEx("<[Hh][Ee][Aa][Dd][\\s>]", str)) {
            str2 = str2 + "<head></head>";
        }
        if (!StringUtils.containsRegEx("<[Bb][Oo][Dd][Yy][\\s>]", str)) {
            str2 = str2 + "<body>";
            str3 = "</body>" + str3;
        }
        return str2 + str + str3;
    }

    private String addHeadData(String str, String str2) {
        String firstMatch = StringUtils.getFirstMatch("<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)", str);
        String str3 = "";
        if (!StringUtils.containsRegEx("<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"']", str)) {
            if (this.adControlAccessor.getScalingMultiplier() >= 0.0d) {
                str3 = str3 + "<meta name=\"viewport\" content=\"width=" + this.adControlAccessor.getWindowWidth() + ", height=" + this.adControlAccessor.getWindowHeight() + ", initial-scale=" + this.adUtils.getViewportInitialScale(this.adControlAccessor.getScalingMultiplier()) + ", minimum-scale=" + this.adControlAccessor.getScalingMultiplier() + ", maximum-scale=" + this.adControlAccessor.getScalingMultiplier() + "\"/>";
            } else {
                str3 = str3 + "<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>";
            }
        }
        String str4 = str3 + "<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>";
        if (str2.length() > 0) {
            str4 = str4 + "<script type='text/javascript'>" + str2 + "</script>";
        }
        return str.replace(firstMatch, firstMatch + str4);
    }
}
