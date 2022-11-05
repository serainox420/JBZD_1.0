package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Tracking extends VASTParserBase {
    private static final long serialVersionUID = 4357709524698875285L;
    public String event;
    public String value;

    public Tracking(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.event = xmlPullParser.getAttributeValue(null, "event");
        this.value = readText(xmlPullParser);
    }
}
