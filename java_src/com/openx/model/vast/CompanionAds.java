package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class CompanionAds extends VASTParserBase {
    public static final String VAST_COMPANION = "Companion";
    public static final String VAST_COMPANIONADS = "CompanionAds";
    private static final long serialVersionUID = -1044458888405919948L;
    public ArrayList<Companion> companionAds = new ArrayList<>();
    public String required;

    public CompanionAds(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_COMPANIONADS);
        this.required = xmlPullParser.getAttributeValue(null, "required");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_COMPANION)) {
                    xmlPullParser.require(2, null, VAST_COMPANION);
                    this.companionAds.add(new Companion(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_COMPANION);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
