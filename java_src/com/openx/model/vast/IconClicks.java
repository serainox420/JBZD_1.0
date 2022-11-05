package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class IconClicks extends VASTParserBase {
    private static final String VAST_ICONCLICKS = "IconClicks";
    private static final String VAST_ICONCLICKTHROUGH = "IconClickThrough";
    private static final String VAST_ICONCLICKTRACKING = "IconClickTracking";
    private static final long serialVersionUID = -6207112748335188492L;
    public IconClickThrough iconClickThrough;
    public IconClickTracking iconClickTracking;

    public IconClicks(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "IconClicks");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals("IconClickThrough")) {
                    xmlPullParser.require(2, null, "IconClickThrough");
                    this.iconClickThrough = new IconClickThrough(xmlPullParser);
                    xmlPullParser.require(3, null, "IconClickThrough");
                } else if (name != null && name.equals("IconClickTracking")) {
                    xmlPullParser.require(2, null, "IconClickTracking");
                    this.iconClickTracking = new IconClickTracking(xmlPullParser);
                    xmlPullParser.require(3, null, "IconClickTracking");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
