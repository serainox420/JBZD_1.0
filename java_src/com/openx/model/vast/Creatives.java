package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Creatives extends VASTParserBase {
    public static final String VAST_CREATIVE = "Creative";
    public static final String VAST_CREATIVES = "Creatives";
    private static final long serialVersionUID = -8147934754196492138L;
    public ArrayList<Creative> creatives = new ArrayList<>();

    public Creatives(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_CREATIVES);
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("Creative")) {
                    xmlPullParser.require(2, null, "Creative");
                    this.creatives.add(new Creative(xmlPullParser));
                    xmlPullParser.require(3, null, "Creative");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
