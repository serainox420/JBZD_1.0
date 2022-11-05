package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Icons extends VASTParserBase {
    public static final String VAST_ICON = "Icons";
    public static final String VAST_ICONS = "Icons";
    private static final long serialVersionUID = 1841229393368989317L;
    public ArrayList<Icon> icons = new ArrayList<>();

    public Icons(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "Icons");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("Icons")) {
                    xmlPullParser.require(2, null, "Icons");
                    this.icons.add(new Icon(xmlPullParser));
                    xmlPullParser.require(3, null, "Icons");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
