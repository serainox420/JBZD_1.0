package com.intentsoftware.addapptr;
/* loaded from: classes2.dex */
public enum AdNetwork {
    HOUSE("House"),
    MILLENNIAL("Millennial"),
    INMOBI("Inmobi"),
    ADMOB("AdMob"),
    SMARTSTREAMTV("GroupM", "GROUPM"),
    EMPTY("Empty"),
    MDOTM("MdotM"),
    APPLOVIN("AppLovin"),
    SMARTAD("SmartAd"),
    NEXAGE("RTB1", "RTB1"),
    ADX("RTB2", "RTB2"),
    DFP("DFP"),
    SMAATO("Smaato"),
    APPRUPT("Apprupt"),
    FACEBOOK("Facebook"),
    UNITYADS("Unity", "UNITY"),
    ADCOLONY("AdColony"),
    LOOPME("LoopMe"),
    AMAZON("Amazon"),
    MOPUB("MoPub"),
    OPENX("OpenX"),
    PUBMATIC("PubMatic"),
    FLURRY("Flurry"),
    REVMOB("RevMob"),
    PERMODO("Permodo");
    
    private final String reportingName;
    private final String serverConfigName;

    AdNetwork(String str) {
        this.reportingName = str;
        this.serverConfigName = toString();
    }

    AdNetwork(String str, String str2) {
        this.reportingName = str;
        this.serverConfigName = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getReportingName() {
        return this.reportingName;
    }

    public static AdNetwork fromServerConfigName(String str) {
        AdNetwork[] values;
        for (AdNetwork adNetwork : values()) {
            if (adNetwork.serverConfigName.equals(str)) {
                return adNetwork;
            }
        }
        return null;
    }
}
