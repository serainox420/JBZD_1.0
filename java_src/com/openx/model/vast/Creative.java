package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Creative extends VASTParserBase {
    private static final String VAST_COMPANIONADS = "CompanionAds";
    public static final String VAST_CREATIVE = "Creative";
    private static final String VAST_CREATIVEEXTENSTONS = "CreativeExtensions";
    private static final String VAST_LINEAR = "Linear";
    private static final String VAST_NONLINEARADS = "NonLinearAds";
    private static final long serialVersionUID = -3063993172534187103L;
    public String adID;
    public String apiFramework;
    public ArrayList<Companion> companionAds;
    public ArrayList<CreativeExtension> creativeExtensions;
    public String id;
    public Linear linear;
    public NonLinearAds nonLinearAds;
    public String sequence;

    public Creative(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Creative");
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.sequence = xmlPullParser.getAttributeValue(null, "sequence");
        this.adID = xmlPullParser.getAttributeValue(null, "adID");
        this.apiFramework = xmlPullParser.getAttributeValue(null, "apiFramework");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("CreativeExtensions")) {
                    xmlPullParser.require(2, null, "CreativeExtensions");
                    this.creativeExtensions = new CreativeExtensions(xmlPullParser).creativeExtenstions;
                    xmlPullParser.require(3, null, "CreativeExtensions");
                } else if (name != null && name.equals(VAST_LINEAR)) {
                    xmlPullParser.require(2, null, VAST_LINEAR);
                    this.linear = new Linear(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_LINEAR);
                } else if (name != null && name.equals("CompanionAds")) {
                    xmlPullParser.require(2, null, "CompanionAds");
                    this.companionAds = new CompanionAds(xmlPullParser).companionAds;
                    xmlPullParser.require(3, null, "CompanionAds");
                } else if (name != null && name.equals("NonLinearAds")) {
                    xmlPullParser.require(2, null, "NonLinearAds");
                    this.nonLinearAds = new NonLinearAds(xmlPullParser);
                    xmlPullParser.require(3, null, "NonLinearAds");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
