package com.openx.model.vast;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Extension extends VASTParserBase {
    private static final long serialVersionUID = 958750133678220926L;
    public String type;
    public String value;

    public Extension(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        this.type = xmlPullParser.getAttributeValue(null, "type");
        skip(xmlPullParser);
    }
}
