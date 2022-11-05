package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class AdParameters extends VASTParserBase {
    private static final long serialVersionUID = 7374394430078144134L;
    public String value;
    public String xmlEncoded;

    public AdParameters(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.xmlEncoded = xmlPullParser.getAttributeValue(null, "xmlEncoded");
        this.value = readText(xmlPullParser);
    }
}
