package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Companion extends VASTParserBase {
    private static final String VAST_ADPARAMETERS = "AdParameters";
    private static final String VAST_ALTTEXT = "AltText";
    private static final String VAST_COMPANION = "Companion";
    private static final String VAST_COMPANIONCLICKTHROUGH = "CompanionClickThrough";
    private static final String VAST_COMPANIONCLICKTRACKING = "CompanionClickTracking";
    private static final String VAST_HTMLRESOURCE = "HTMLResource";
    private static final String VAST_IFRAMERESOUCE = "IFrameResource";
    private static final String VAST_STATICRESOURCE = "StaticResource";
    private static final String VAST_TRACKINGEVENTS = "TrackingEvents";
    private static final long serialVersionUID = 5370993541785397821L;
    public AdParameters adParameters;
    public String adSlotID;
    public AltText altText;
    public String apiFramework;
    public String assetHeight;
    public String assetWidth;
    public CompanionClickThrough companionClickThrough;
    public CompanionClickTracking companionClickTracking;
    public String expandedHeight;
    public String expandedWidth;
    public String height;
    public HTMLResource htmlResource;
    public IFrameResource iFrameResource;
    public String id;
    public StaticResource staticResource;
    public ArrayList<Tracking> trackingEvents;
    public String width;

    public Companion(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Companion");
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.width = xmlPullParser.getAttributeValue(null, "width");
        this.height = xmlPullParser.getAttributeValue(null, "height");
        this.assetWidth = xmlPullParser.getAttributeValue(null, "assetWidth");
        this.assetHeight = xmlPullParser.getAttributeValue(null, "assetHeight");
        this.expandedWidth = xmlPullParser.getAttributeValue(null, "expandedWidth");
        this.expandedHeight = xmlPullParser.getAttributeValue(null, "expandedHeight");
        this.apiFramework = xmlPullParser.getAttributeValue(null, "apiFramework");
        this.adSlotID = xmlPullParser.getAttributeValue(null, "adSlotID");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("StaticResource")) {
                    xmlPullParser.require(2, null, "StaticResource");
                    this.staticResource = new StaticResource(xmlPullParser);
                    xmlPullParser.require(3, null, "StaticResource");
                } else if (name != null && name.equals("IFrameResource")) {
                    xmlPullParser.require(2, null, "IFrameResource");
                    this.iFrameResource = new IFrameResource(xmlPullParser);
                    xmlPullParser.require(3, null, "IFrameResource");
                } else if (name != null && name.equals("HTMLResource")) {
                    xmlPullParser.require(2, null, "HTMLResource");
                    this.htmlResource = new HTMLResource(xmlPullParser);
                    xmlPullParser.require(3, null, "HTMLResource");
                } else if (name != null && name.equals(VAST_ADPARAMETERS)) {
                    xmlPullParser.require(2, null, VAST_ADPARAMETERS);
                    this.adParameters = new AdParameters(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ADPARAMETERS);
                } else if (name != null && name.equals(VAST_ALTTEXT)) {
                    xmlPullParser.require(2, null, VAST_ALTTEXT);
                    this.altText = new AltText(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ALTTEXT);
                } else if (name != null && name.equals(VAST_COMPANIONCLICKTHROUGH)) {
                    xmlPullParser.require(2, null, VAST_COMPANIONCLICKTHROUGH);
                    this.companionClickThrough = new CompanionClickThrough(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_COMPANIONCLICKTHROUGH);
                } else if (name != null && name.equals(VAST_COMPANIONCLICKTRACKING)) {
                    xmlPullParser.require(2, null, VAST_COMPANIONCLICKTRACKING);
                    this.companionClickTracking = new CompanionClickTracking(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_COMPANIONCLICKTRACKING);
                } else if (name != null && name.equals("TrackingEvents")) {
                    xmlPullParser.require(2, null, "TrackingEvents");
                    this.trackingEvents = new TrackingEvents(xmlPullParser).trackingEvents;
                    xmlPullParser.require(3, null, "TrackingEvents");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
