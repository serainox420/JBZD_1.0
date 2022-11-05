package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Ad extends VASTParserBase {
    public static final String VAST_AD = "Ad";
    private static final String VAST_INLINE = "InLine";
    private static final String VAST_WRAPPER = "Wrapper";
    private static final long serialVersionUID = 3155584722233729629L;
    public String id;
    public InLine inline;
    public String sequence;
    public Wrapper wrapper;

    public Ad(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, VAST_AD);
        this.id = xmlPullParser.getAttributeValue(null, "id");
        this.sequence = xmlPullParser.getAttributeValue(null, "sequence");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (name != null && name.equals(VAST_INLINE)) {
                    xmlPullParser.require(2, null, VAST_INLINE);
                    this.inline = new InLine(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_INLINE);
                } else if (name != null && name.equals(VAST_WRAPPER)) {
                    xmlPullParser.require(2, null, VAST_WRAPPER);
                    this.wrapper = new Wrapper(xmlPullParser);
                    xmlPullParser.require(3, null, VAST_WRAPPER);
                } else {
                    skip(xmlPullParser);
                }
            }
        }
    }
}
