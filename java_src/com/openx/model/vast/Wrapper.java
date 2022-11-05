package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Wrapper extends VASTParserBase {
    private static final String VAST_ADSYSTEM = "AdSystem";
    private static final String VAST_CREATIVES = "Creatives";
    private static final String VAST_ERROR = "Error";
    private static final String VAST_EXTENSIONS = "Extensions";
    private static final String VAST_IMPRESSION = "Impression";
    private static final String VAST_VASTADTAGURI = "VASTAdTagURI";
    private static final String VAST_WRAPPER = "Wrapper";
    private static final long serialVersionUID = -7815578389454038602L;
    public AdSystem adSystem;
    public String allowMultipleAds;
    public ArrayList<Creative> creatives;
    public Error error;
    public Extensions extensions;
    public String fallbackOnNoAd;
    public String followAdditionalWrappers;
    public ArrayList<Impression> impressions;
    public VASTAdTagURI vastAdTagURI;

    public Wrapper(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_WRAPPER);
        this.followAdditionalWrappers = xmlPullParser.getAttributeValue(null, "followAdditionalWrappers");
        this.allowMultipleAds = xmlPullParser.getAttributeValue(null, "allowMultipleAds");
        this.fallbackOnNoAd = xmlPullParser.getAttributeValue(null, "fallbackOnNoAd");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_ADSYSTEM)) {
                    xmlPullParser.require(2, null, VAST_ADSYSTEM);
                    this.adSystem = new AdSystem(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADSYSTEM);
                } else if (name != null && name.equals(VAST_ERROR)) {
                    xmlPullParser.require(2, null, VAST_ERROR);
                    this.error = new Error(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ERROR);
                } else if (name != null && name.equals(VAST_VASTADTAGURI)) {
                    xmlPullParser.require(2, null, VAST_VASTADTAGURI);
                    this.vastAdTagURI = new VASTAdTagURI(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_VASTADTAGURI);
                } else if (name != null && name.equals("Impression")) {
                    if (this.impressions == null) {
                        this.impressions = new ArrayList<>();
                    }
                    xmlPullParser.require(2, null, "Impression");
                    this.impressions.add(new Impression(xmlPullParser));
                    xmlPullParser.require(3, null, "Impression");
                } else if (name != null && name.equals("Creatives")) {
                    xmlPullParser.require(2, null, "Creatives");
                    this.creatives = new Creatives(xmlPullParser).creatives;
                    xmlPullParser.require(3, null, "Creatives");
                } else if (name != null && name.equals("Extensions")) {
                    xmlPullParser.require(2, null, "Extensions");
                    this.extensions = new Extensions(xmlPullParser);
                    xmlPullParser.require(3, null, "Extensions");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
