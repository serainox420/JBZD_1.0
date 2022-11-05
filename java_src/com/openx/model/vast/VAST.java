package com.openx.model.vast;

import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class VAST extends VASTParserBase {
    private static final String VAST_AD = "Ad";
    private static final String VAST_ERROR = "Error";
    private static final String VAST_START = "VAST";
    private static final long serialVersionUID = 6578357705254748807L;
    public ArrayList<Ad> ads;
    public Error error;
    public String version;

    public VAST(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_START);
        this.version = xmlPullParser.getAttributeValue(null, "version");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_ERROR)) {
                    xmlPullParser.require(2, null, VAST_ERROR);
                    this.error = new Error(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_ERROR);
                } else if (name != null && name.equals("Ad")) {
                    if (this.ads == null) {
                        this.ads = new ArrayList<>();
                    }
                    xmlPullParser.require(2, null, "Ad");
                    this.ads.add(new Ad(xmlPullParser));
                    xmlPullParser.require(3, null, "Ad");
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
