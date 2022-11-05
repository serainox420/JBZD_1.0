package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class InLine extends VASTParserBase {
    private static final String VAST_ADSYSTEM = "AdSystem";
    private static final String VAST_ADTITLE = "AdTitle";
    private static final String VAST_ADVERTISER = "Advertiser";
    private static final String VAST_CREATIVES = "Creatives";
    private static final String VAST_DESCRIPTION = "Description";
    private static final String VAST_ERROR = "Error";
    private static final String VAST_EXTENSIONS = "Extensions";
    private static final String VAST_IMPRESSION = "Impression";
    private static final String VAST_INLINE = "InLine";
    private static final String VAST_PRICING = "Pricing";
    private static final String VAST_SURVEY = "Survey";
    private static final long serialVersionUID = 2730007921177156522L;
    public AdSystem adSystem;
    public AdTitle adTitle;
    public Advertiser advertiser;
    public ArrayList<Creative> creatives;
    public Description description;
    public Error error;
    public Extensions extensions;
    public ArrayList<Impression> impressions;
    public Pricing pricing;
    public Survey survey;

    public InLine(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_INLINE);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_ADSYSTEM)) {
                    xmlPullParser.require(2, null, VAST_ADSYSTEM);
                    this.adSystem = new AdSystem(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADSYSTEM);
                } else if (name != null && name.equals(VAST_ADTITLE)) {
                    xmlPullParser.require(2, null, VAST_ADTITLE);
                    this.adTitle = new AdTitle(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADTITLE);
                } else if (name != null && name.equals(VAST_DESCRIPTION)) {
                    xmlPullParser.require(2, null, VAST_DESCRIPTION);
                    this.description = new Description(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_DESCRIPTION);
                } else if (name != null && name.equals(VAST_ADVERTISER)) {
                    xmlPullParser.require(2, null, VAST_ADVERTISER);
                    this.advertiser = new Advertiser(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADVERTISER);
                } else if (name != null && name.equals(VAST_PRICING)) {
                    xmlPullParser.require(2, null, VAST_PRICING);
                    this.pricing = new Pricing(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_PRICING);
                } else if (name != null && name.equals(VAST_SURVEY)) {
                    xmlPullParser.require(2, null, VAST_SURVEY);
                    this.survey = new Survey(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_SURVEY);
                } else if (name != null && name.equals(VAST_ERROR)) {
                    xmlPullParser.require(2, null, VAST_ERROR);
                    this.error = new Error(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ERROR);
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
