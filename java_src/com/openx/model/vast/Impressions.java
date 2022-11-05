package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Impressions extends VASTParserBase {
    public static final String VAST_IMPRESSION = "Impression";
    public static final String VAST_IMPRESSIONS = "Impressions";
    private static final long serialVersionUID = -2765762882393199175L;
    public ArrayList<Impression> impressions = new ArrayList<>();

    public Impressions(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_IMPRESSION)) {
                    xmlPullParser.require(2, null, VAST_IMPRESSION);
                    this.impressions.add(new Impression(xmlPullParser));
                    xmlPullParser.require(3, null, VAST_IMPRESSION);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
